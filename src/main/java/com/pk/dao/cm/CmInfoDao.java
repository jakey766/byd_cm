package com.pk.dao.cm;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import com.pk.model.admin.SysField;
import com.pk.service.admin.SysFieldService;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.ParameterizedRowMapper;

import com.pk.framework.vo.PageResultVO;
import com.pk.model.cm.CmInfo;
import com.pk.vo.cm.CmInfoSearchVO;

import org.springframework.stereotype.Repository;

/**
 * Created by jiangkunpeng on 16/10/11.
 */
@Repository
public class CmInfoDao{
	
	private final static Logger logger = Logger.getLogger(CmInfoDao.class);

	private final static String EncKey = "Jk,Zh8XW";

    @Autowired
    private JdbcTemplate jdbcTemplate;

	@Autowired
	private SysFieldService sysFieldService;

	private String getSelectSql(List<SysField> fields){
		StringBuilder sb = new StringBuilder(100);
		sb.append("id");
		String srcName = null;
		for(SysField f:fields){
			srcName = f.getSrcName();
			sb.append(",");
			if(f.getEnc()==1){
				sb.append("CAST(BINARY(AES_DECRYPT(").append(f.getTname()).append(", '").append(EncKey).append("')) AS CHAR CHARACTER SET utf8) AS ").append(f.getFname());
			}else{
				sb.append(f.getTname()).append(" AS ").append(f.getFname());
			}
			if(!StringUtils.isEmpty(srcName)){
				sb.append(",").append(srcName);
			}
//			if(!StringUtils.isEmpty(srcName)){
//				sb.append(",CAST(BINARY(AES_DECRYPT(").append(srcName).append(", '").append(EncKey).append("')) AS CHAR CHARACTER SET utf8) AS ").append(srcName);
//			}
		}
		return sb.toString();
	}

    public CmInfo get(int id){
		String sql = "SELECT " + getSelectSql(sysFieldService.loadAllWithCache()) + " FROM cm_info WHERE id=?";
		List<Object> params = new ArrayList<Object>();
		params.add(id);
		List<CmInfo> list = jdbcTemplate.query(sql, params.toArray(), CmInfoRowMapper);
		if(list!=null&&list.size()>0)
			return list.get(0);
        return null;
    }

    public PageResultVO list(CmInfoSearchVO svo){
        StringBuilder sql = new StringBuilder(200);
        List<Object> params = new ArrayList<Object>();

		List<SysField> fields = sysFieldService.loadAllWithCache();
		Map<String, SysField> fieldMap = new HashMap<>();
		for(SysField f:fields){
			fieldMap.put(f.getFname(), f);
		}

		SysField field = null;

		sql.append(" AND deleted=?");
		params.add(0);
		Map<String, String> map = svo.getMap();
		if(map!=null&&!map.isEmpty()){
			String key = null;
			String val = null;
			String fname = null;
			String op = null;
			String[] splits = null;
			for(Entry<String, String> entry:map.entrySet()){
				key = entry.getKey();
				val = entry.getValue();
				if(val==null||val.length()<1)
					continue;
				if(!key.startsWith("Q^"))
					continue;
				splits = StringUtils.split(key, "^");
				int slen = splits.length;
				if(slen<2)
					continue;
				fname = splits[1];
				if(slen>2)
					op = splits[2].toUpperCase();
				else
					op = "EQ";

				field = fieldMap.get(fname);
				if(field==null)
					continue;

				sql.append(" AND ").append(field.getTname());
				if("LK".equals(op)){
					sql.append(" LIKE ");
					if(field.getEnc()==1)
						params.add(val);
					else
						params.add("%" + val + "%");
				}else if("GE".equals(op)){
					sql.append(" >= ");
					params.add(val);
				}else if("LE".equals(op)){
					sql.append(" <= ");
					params.add(val);
				}else if("GT".equals(op)){
					sql.append(" > ");
					params.add(val);
				}else if("LT".equals(op)){
					sql.append(" < ");
					params.add(val);
				}else{
					sql.append(" = ");
					params.add(val);
				}

				if(field.getEnc()==1){
					sql.append("AES_ENCRYPT(?, '").append(EncKey).append("')");
				}else{
					sql.append("?");
				}
			}
		}

		List<String> codes = svo.getOrgCodes();
		if(codes!=null&&!codes.isEmpty()){
			sql.append(" AND (org_code is null OR org_code = '' OR(");
			for(int i=0,len=codes.size();i<len;i++){
				if(i>0)
					sql.append(" OR ");
				sql.append("org_code LIKE ?");
				params.add(codes.get(i) + "%");
			}
			sql.append("))");
		}

        PageResultVO page = new PageResultVO();
        Object[] _params = params.toArray();
        String _sql = "SELECT COUNT(id) FROM cm_info WHERE 1=1 " + sql.toString();
        int count = jdbcTemplate.queryForInt(_sql, _params);
        int totalPage = svo.getSize() < 1 ? 1 : (count + svo.getSize() - 1) / svo.getSize();
        if(count > 0){
            _sql = "SELECT " + getSelectSql(fields) + " FROM cm_info WHERE 1=1" + sql.toString() + " LIMIT " + svo.getStart() + "," + svo.getSize();
            List<CmInfo> list = jdbcTemplate.query(_sql, _params, CmInfoRowMapper);
            page.setList(list);
        }
        page.setCount(count);
        page.setPage(svo.getPage());
        page.setPageCount(totalPage);
        return page;
    }

    public void insert(CmInfo vo){
        List<Object> params = new ArrayList<Object>();
        StringBuilder fieldNames = new StringBuilder(100);
		StringBuilder fieldValues = new StringBuilder(100);

		List<SysField> sfields = sysFieldService.loadAllWithCache();
		
		String fieldName = null;
		Method method = null;
		Object val = null;
		Method[] methods = CmInfo.class.getDeclaredMethods();
		Field[] fields = CmInfo.class.getDeclaredFields();
		String srcName = null;
		SysField sfield = null;
		int idx = 0;

		for(int i=0,len=sfields.size();i<len;i++){
			sfield = sfields.get(i);
			fieldName = sfield.getFname();
			method = lookupMethod(methods, "get" + fieldName);
			if(method==null)
				continue;
			try {
				val = method.invoke(vo);
			} catch (Exception e) {
				e.printStackTrace();
				logger.error("Bean反射转换SQL异常,CLASS:"+(CmInfo.class.getSimpleName())+",FIELD:"+fieldName, e);
			}
			if(val!=null){
				if(idx>0){
					fieldNames.append(",");
					fieldValues.append(",");
				}
				fieldNames.append(sfield.getTname());
				if(sfield.getEnc()==1){
					fieldValues.append("AES_ENCRYPT(?, '").append(EncKey).append("')");
				}else{
					fieldValues.append("?");
				}
				params.add(val);
				idx++;
			}
			srcName = sfield.getSrcName();
			if(srcName!=null&&srcName.length()>0){
				method = lookupMethod(methods, "get" + srcName);
				if(method==null)
					continue;
				try {
					val = method.invoke(vo);
				} catch (Exception e) {
					e.printStackTrace();
					logger.error("Bean反射转换SQL异常,CLASS:"+(CmInfo.class.getSimpleName())+",FIELD:"+srcName, e);
				}
				if(val==null||val.toString().length()<1)
					continue;
				if(idx>0){
					fieldNames.append(",");
					fieldValues.append(",");
				}
				fieldNames.append(srcName);
//				fieldValues.append("AES_ENCRYPT(?, '").append(EncKey).append("')");
				fieldValues.append("?");
				params.add(val);
				idx++;
			}

		}

		/*
		for(int i=0,len=fields.length;i<len;i++){
			fieldName = fields[i].getName();
			if("id".equals(fieldName))
				continue;
			method = lookupMethod(methods, "get" + fieldName);
			if(method==null)
				continue;
			try {
				val = method.invoke(vo);
			} catch (Exception e) {
				e.printStackTrace();
				logger.error("Bean反射转换SQL异常,CLASS:"+(CmInfo.class.getSimpleName())+",FIELD:"+fieldName, e);
			}
			if(val==null)
				continue;
			if(idx>0){
				fieldNames.append(",");
				fieldValues.append(",");
			}
			fieldNames.append(fieldName);
			fieldValues.append("?");
			params.add(val);
			idx++;
		}
		*/
		
		StringBuilder sql = new StringBuilder(100);
		sql.append("INSERT INTO cm_info (").append(fieldNames.toString()).append(") VALUES (").append(fieldValues).append(")");
		
		jdbcTemplate.update(sql.toString(), params.toArray());
		
		params = null;
		fieldNames = null;
		fieldValues = null;
		methods = null;
		fields = null;
		sql = null;
    }
    
    public static Set<String> UpdateIgnores = new HashSet<>();
    static{
    	UpdateIgnores.add("id");
    	UpdateIgnores.add("deleted");
    }

    public void update(CmInfo vo){
    	List<Object> params = new ArrayList<Object>();
        StringBuilder fieldNames = new StringBuilder(100);

		List<SysField> sfields = sysFieldService.loadAllWithCache();
		
		String fieldName = null;
		Method method = null;
		Object val = null;
		Method[] methods = CmInfo.class.getDeclaredMethods();
		Field[] fields = CmInfo.class.getDeclaredFields();
		String srcName = null;
		SysField sfield = null;
		int idx = 0;

		for(int i=0,len=sfields.size();i<len;i++){
			sfield = sfields.get(i);
			fieldName = sfield.getFname();
			method = lookupMethod(methods, "get" + fieldName);
			if(method==null)
				continue;
			try {
				val = method.invoke(vo);
			} catch (Exception e) {
				e.printStackTrace();
				logger.error("Bean反射转换SQL异常,CLASS:"+(CmInfo.class.getSimpleName())+",FIELD:"+fieldName, e);
			}
			if(val!=null){
				if(idx>0){
					fieldNames.append(",");
				}
				fieldNames.append(sfield.getTname()).append("=");
				if(sfield.getEnc()==1){
					fieldNames.append("AES_ENCRYPT(?, '").append(EncKey).append("')");
				}else{
					fieldNames.append("?");
				}
				params.add(val);
				idx++;
			}
			srcName = sfield.getSrcName();
			if(srcName!=null&&srcName.length()>0){
				method = lookupMethod(methods, "get" + srcName);
				if(method==null)
					continue;
				try {
					val = method.invoke(vo);
				} catch (Exception e) {
					e.printStackTrace();
					logger.error("Bean反射转换SQL异常,CLASS:"+(CmInfo.class.getSimpleName())+",FIELD:"+srcName, e);
				}
				if(val==null||val.toString().length()<1)
					continue;
				if(idx>0){
					fieldNames.append(",");
				}
				fieldNames.append(srcName).append("=");
//				fieldNames.append("AES_ENCRYPT(?, '").append(EncKey).append("')");
				fieldNames.append("?");
				params.add(val);
				idx++;
			}
		}

		/*
		for(int i=0,len=fields.length;i<len;i++){
			fieldName = fields[i].getName();
			if(UpdateIgnores.contains(fieldName))
				continue;
			method = lookupMethod(methods, "get" + fieldName);
			if(method==null)
				continue;
			try {
				val = method.invoke(vo);
			} catch (Exception e) {
				e.printStackTrace();
				logger.error("Bean反射转换SQL异常,CLASS:"+(CmInfo.class.getSimpleName())+",FIELD:"+fieldName, e);
			}
			if(val==null)
				continue;
			if(idx>0){
				fieldNames.append(",");
			}
			fieldNames.append(fieldName).append("=?");
			params.add(val);
			idx++;
		}
		*/
		
		StringBuilder sql = new StringBuilder(100);
		sql.append("UPDATE cm_info SET ").append(fieldNames).append(" WHERE id=?");
		params.add(vo.getId());
		
		jdbcTemplate.update(sql.toString(), params.toArray());
		
		params = null;
		fieldNames = null;
		methods = null;
		fields = null;
		sql = null;
    }

    public void delete(int id){
        String _sql = "UPDATE cm_info SET deleted=1 WHERE id=?";
        jdbcTemplate.update(_sql, id);
    }

	public void delete(List<Integer> ids){
		StringBuilder sql = new StringBuilder(100);
		sql.append("UPDATE cm_info SET deleted=1 WHERE id in(");
		List<Integer> params = new ArrayList<Integer>();
		for(int i=0,len=ids.size();i<len;i++){
			if(i>0)
				sql.append(",");
			sql.append("?");
			params.add(ids.get(i));
		}
		sql.append(")");
		jdbcTemplate.update(sql.toString(), params.toArray());
	}

    static Method lookupMethod(Method[] methods,String methodName){
        for(Method method:methods){
            if(method.getName().equalsIgnoreCase(methodName))
                return method;
        }
        return null;
    }

    static ParameterizedRowMapper<CmInfo> CmInfoRowMapper = new ParameterizedRowMapper<CmInfo>(){
    	
        @Override
        public CmInfo mapRow(ResultSet rs, int i) throws SQLException {
		Map<String, String> columnName = new HashMap<String, String>();
		ResultSetMetaData md = rs.getMetaData();
		for (int j = 0; j < md.getColumnCount(); j++) {
			columnName.put(String.valueOf(j), md.getColumnLabel(j + 1));
		}

		Method[] methods = CmInfo.class.getDeclaredMethods();
		String colName = null;
		String val = null;

		CmInfo vo = new CmInfo();
		for(int j=0,len=md.getColumnCount();j<len;j++){
			colName = columnName.get(String.valueOf(j));
			Method method = lookupMethod(methods, "set" + colName);
			if(method==null)
				continue;
			try{
				String paraType = method.getParameterTypes()[0].getName();
				if("int".equals(paraType)||"java.lang.Integer".equals(paraType)){
					method.invoke(vo, rs.getInt(colName));
				}else if("java.lang.String".equals(paraType)){
					val = rs.getString(colName);
					if(val!=null){
						method.invoke(vo, val);
					}
				}else if("long".equals(paraType)||"java.lang.Long".equals(paraType)){
					method.invoke(vo, rs.getLong(colName));
				}else if("double".equals(paraType)||"java.lang.Double".equals(paraType)){
					method.invoke(vo, rs.getDouble(colName));
				}else if("float".equals(paraType)||"java.lang.Float".equals(paraType)){
					method.invoke(vo, rs.getFloat(colName));
				}else if("short".equals(paraType)||"java.lang.Short".equals(paraType)){
					method.invoke(vo, rs.getShort(colName));
				}else if("char".equals(paraType)||"java.lang.Character".equals(paraType)){
					val = rs.getString(colName);
					if(val!=null&&val.length()>0){
						method.invoke(vo, val.charAt(0));
					}else{
						method.invoke(vo, ' ');
					}
				}else if("boolean".equals(paraType)||"java.lang.Boolean".equals(paraType)){
					method.invoke(vo, rs.getBoolean(colName));
				}
			}catch(Exception e){
				e.printStackTrace();
				logger.error("SQL结果反射封装Bean异常,CLASS:"+(CmInfo.class.getSimpleName())+",COL:"+colName, e);
			}
		}

		methods = null;
		columnName = null;
		md = null;
		return vo;
        }
    };
}
