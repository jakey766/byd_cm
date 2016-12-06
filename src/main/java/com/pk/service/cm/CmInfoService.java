package com.pk.service.cm;

import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.pk.dao.admin.SysDistDao;
import com.pk.dao.admin.SysOrgDao;
import com.pk.dao.admin.SysRoleDao;
import com.pk.dao.admin.SysTreeDao;
import com.pk.dao.admin.SysUserDao;
import com.pk.dao.cm.CmInfoDao;
import com.pk.framework.cfg.UserInfoContext;
import com.pk.framework.service.BaseService;
import com.pk.framework.vo.PageResultVO;
import com.pk.framework.vo.Result;
import com.pk.model.admin.SysDist;
import com.pk.model.admin.SysField;
import com.pk.model.admin.SysOrg;
import com.pk.model.admin.SysRole;
import com.pk.model.admin.SysTree;
import com.pk.model.admin.SysUser;
import com.pk.model.cm.CmInfo;
import com.pk.service.admin.SysDistService;
import com.pk.service.admin.SysFieldService;
import com.pk.service.admin.SysOrgService;
import com.pk.service.admin.SysTreeService;
import com.pk.vo.admin.SysDistSearchVO;
import com.pk.vo.admin.SysOrgSearchVO;
import com.pk.vo.admin.SysTreeSearchVO;
import com.pk.vo.cm.CmInfoSearchVO;

@Service()
public class CmInfoService extends BaseService {

    private final static Logger logger = Logger.getLogger(CmInfoService.class);

    private static final String KEY_FIELDS_USER = "FIELDS_USER_ID:%s";
    
    private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd");

    @Autowired
    private SysUserDao sysUserDao;

    @Autowired
    private SysRoleDao sysRoleDao;

    @Autowired
    private CmInfoDao cmInfoDao;

    @Autowired
    private SysFieldService sysFieldService;

    @Autowired
    private SysDistDao sysDistDao;
    
    @Autowired
    private SysDistService sysDistService;

    @Autowired
    private SysOrgDao sysOrgDao;

    @Autowired
    private SysOrgService sysOrgService;

    @Autowired
    private SysTreeService sysTreeService;

    @Autowired
    private SysTreeDao sysTreeDao;
    
    public Result list(CmInfoSearchVO svo){
        return Result.SUCCESS(listMine(svo));
    }

    public PageResultVO listMine(CmInfoSearchVO svo){
        Map<String, String> map = svo.getMap();
        boolean hasOrg = false;
        if(map!=null){
            for(Entry<String, String> entry:map.entrySet()){
                if(entry.getValue()==null||entry.getValue().length()<1)
                    continue;
                if(entry.getKey().startsWith("Q^org_")){
                    hasOrg = true;
                    break;
                }
            }
        }
        if(!hasOrg){
            int userId = UserInfoContext.getId();
            if(userId<1)
                throw new RuntimeException("没有登录信息");
            List<String> orgCodes = sysOrgService.getUserOrgCodes(userId);
            if(orgCodes==null||orgCodes.size()<1)
                return new PageResultVO(0, 1, 1, null);
            svo.setOrgCodes(sysOrgService.getUserOrgCodes(userId));
        }
        return cmInfoDao.list(svo);
    }

    @Transactional
    public Result add(CmInfo vo){
        CmInfo exist = null;
        PageResultVO exists = null;
        CmInfoSearchVO svo = new CmInfoSearchVO();
        svo.setSize(10);
        svo.setMap(new HashMap<String, String>());
        if(vo.getSqr_zjhm().length()>0||vo.getSjgcr_zjhm().length()>0){
            if(vo.getSqr_zjhm().length()>0)
                svo.getMap().put("Q^sqr_zjhm^EQ", vo.getSqr_zjhm());
            if(vo.getSjgcr_zjhm().length()>0)
                svo.getMap().put("Q^sjgcr_zjhm^EQ", vo.getSjgcr_zjhm());
            exists = cmInfoDao.list(svo);
            if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                for(int i=0;i<exists.getList().size();i++){
                    CmInfo _vo = (CmInfo)exists.getList().get(i);
                    if(vo.getSqr_zjhm().equals(_vo.getSqr_zjhm())&&vo.getSjgcr_zjhm().equals(_vo.getSjgcr_zjhm())){
                        exist = _vo;
                    }
                }
            }
        }
        if(exist==null){
        	buildOtherField(vo);
            cmInfoDao.insert(vo);
            return Result.SUCCESS(vo);
        }else{
            copyWithOutNone(exist, vo, sysFieldService.loadAllWithCache(), CmInfo.class.getMethods());
            buildOtherField(exist);
            cmInfoDao.update(exist);
            return Result.instance(Result.CODE_SUCCESS, "存在相同记录,已进行更新", exist);
        }
    }

    @Transactional
    public Result update(CmInfo vo){
    	buildOtherField(vo);
        cmInfoDao.update(vo);
        return Result.SUCCESS(vo);
    }

    @Transactional
    public Result delete(int id){
        CmInfo vo = cmInfoDao.get(id);
        if(vo!=null){
            cmInfoDao.delete(id);
        }
    	return Result.SUCCESS();
    }

    @Transactional
    public Result delete(List<Integer> ids){
        cmInfoDao.delete(ids);
        return Result.SUCCESS();
    }
    
    public CmInfo get(int id){
    	return cmInfoDao.get(id);
    }

    /**
     * 获取我可见的字段
     * @return
     */
    public List<SysField> getMyFields(){
        int userId = UserInfoContext.getId();
        if(userId<1)
            return null;
        List<SysField> list = null;
        String cacheKey = String.format(KEY_FIELDS_USER, userId);
//		list = getFromCache(cacheKey, List.class);
        if(list==null){
            SysUser user = sysUserDao.get(userId);
            if(user==null) {
                return null;
            }
            String roleIds = user.getRoleIds();
            if(roleIds==null||roleIds.length()<1)
                return null;
            String[] rids = StringUtils.split(roleIds, ",");
            Set<String> mfields = new HashSet<>();
            for(String rid:rids){
                if(rid.length()<1)
                    continue;
                SysRole role = sysRoleDao.get(Integer.parseInt(rid));
                if(role==null)
                    continue;
                String fields = role.getFields();
                if(fields==null||fields.length()<1)
                    continue;
                String[] fieldArr = StringUtils.split(fields, ",");
                for(String field:fieldArr){
                    mfields.add(field);
                }
            }
            if(mfields.isEmpty())
                return null;
            List<SysField> all = sysFieldService.loadAllWithCache();
            if(all==null||all.isEmpty())
                return null;
            list = new ArrayList<>();
            for(SysField f:all){
                if(mfields.contains(f.getFname()))
                    list.add(f);
            }
            putIntoCache(cacheKey, list);
        }
        return list;
    }
    
    public Result exp(CmInfoSearchVO svo, HttpServletRequest request,HttpServletResponse response){
    	svo.setSize(5000);
    	try{
    		XSSFWorkbook workbook = new XSSFWorkbook();
    		XSSFSheet sheet = workbook.createSheet();
    		
    		PageResultVO page = listMine(svo);
    		List<CmInfo> list = page.getList();
    		List<SysField> fields = getMyFields();
    		
    		int flen = fields.size();
    		XSSFRow row = sheet.createRow(0);
    		SysField field = null;
    		for(int i=0;i<flen;i++){
    			field = fields.get(i);
    			XSSFCell cell = row.createCell(i);
    			cell.setCellType(XSSFCell.CELL_TYPE_STRING);
    			cell.setCellValue(field.getName());
    		}
    		
    		int dlen = 0;
    		if(list!=null&&(dlen=list.size())>0){
    			XSSFCellStyle dateStyle = workbook.createCellStyle();  
				dateStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("yy/m/d"));
				
    			Method[] methods = CmInfo.class.getDeclaredMethods();
    			Method method = null;
    			CmInfo vo = null;
    			String stype = null;
    			String ftype = null;
    			Object val = null;
    			for(int i=0;i<dlen;i++){
    				row = sheet.createRow(i+1);
    				vo = list.get(i);
    				for(int j=0;j<flen;j++){
    	    			field = fields.get(j);
    	    			stype = field.getStype();
    	    			ftype = field.getFtype();
    	    			XSSFCell cell = row.createCell(j);

                        val = null;
    	    			method = lookupMethod(methods, "get" + field.getSname());
    	    			if(method!=null){
                            try{
                                val = method.invoke(vo);
                            }catch(Exception e){
                                e.printStackTrace();
                                logger.error("导出客户信息时反射异常,FIELD:" + field.getSname(), e);
                            }
                        }
    	    			if(val!=null){
                            try{
                                if("tree".equals(stype)||"org".equals(stype)||"org".equals(stype)){
                                    cell.setCellType(XSSFCell.CELL_TYPE_STRING);
                                    cell.setCellValue(val.toString());
                                }else if("text".equals(stype)){
                                    if("int".equals(ftype)){
                                        cell.setCellType(XSSFCell.CELL_TYPE_NUMERIC);
                                        cell.setCellValue(val.toString());
                                    }else if("double".equals(ftype)){
                                        cell.setCellType(XSSFCell.CELL_TYPE_NUMERIC);
                                        cell.setCellValue(new BigDecimal(val.toString()).setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros().toPlainString());
                                    }else{
                                        cell.setCellType(XSSFCell.CELL_TYPE_STRING);
                                        cell.setCellValue(val.toString());
                                    }
                                }else if("date".equals(stype)){
//        	    					cell.setCellType(XSSFCell.CELL_TYPE_NUMERIC);
//        	    					cell.setCellStyle(dateStyle);
//        	    					cell.setCellValue(DATE_FORMAT.parse(val.toString()));

                                    cell.setCellType(XSSFCell.CELL_TYPE_STRING);
                                    cell.setCellValue(val.toString());
                                }else{
                                    cell.setCellType(XSSFCell.CELL_TYPE_STRING);
                                    cell.setCellValue(val.toString());
                                }
                            }catch(Exception e){
                                e.printStackTrace();
                                logger.error("导出客户信息设值异常", e);
                            }
                        }else{
                            cell.setCellType(XSSFCell.CELL_TYPE_STRING);
                            cell.setCellValue("");
                        }
    	    		}
    				
    			}
    		}
    		
    		request.setCharacterEncoding("UTF-8");
    		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;charset=utf-8");
	        response.setHeader("Content-disposition", "attachment; filename=export.xlsx"); 

	        workbook.write(response.getOutputStream());
	        workbook.close();
    	}catch(Exception e){
    		e.printStackTrace();
    		return Result.FAILURE("后台异常");
    	}
    	return null;
    }

    public Result imp(MultipartFile multipartFile, int type){
        if(multipartFile==null||multipartFile.isEmpty())
            return Result.FAILURE("没有文件或者文件为空!");
        List<String> heads = new ArrayList<String>();
        List<List<String>> datas = new ArrayList<List<String>>();
        XSSFWorkbook xwb = null;
        try{
//            String contentType = multipartFile.getContentType();
//            long size = multipartFile.getSize();

            xwb = new XSSFWorkbook(multipartFile.getInputStream());
            XSSFSheet sheet = xwb.getSheetAt(0);
            XSSFRow row = null;
            XSSFCell cell = null;
            int firstRow = sheet.getFirstRowNum();
            int rows = sheet.getPhysicalNumberOfRows();
            String val = null;

            if(type==4)
                firstRow = firstRow + 1;

            int dhhmCount = 0;
            boolean first = true;
            for(int i=firstRow;i<rows;i++){
                row = sheet.getRow(i);
                if(row == null) {
                    continue;
                }

                List<String> data = new ArrayList<>();
                for(int j=row.getFirstCellNum(),len=row.getLastCellNum();j<len;j++){
                    cell = row.getCell(j);
                    if(cell==null)
                        val = "";
                    else
                        val = getCellVal(cell);

                    if(first){
                        if(val!=null)
                            val = val.replaceAll(" ", "").replaceAll("\\n", "");
                        //金融公司的表格中有两个电话
                        if(type==1&&"电话".equals(val)){
                            dhhmCount++;
                            if(dhhmCount>1)
                                val = "公司电话";
                        }
                    	heads.add(val);
                    }else{
                    	data.add(val);
                    }
                }
                if(!first)
                    datas.add(data);
                first = false;
            }
        }catch(Exception e){
            e.printStackTrace();
            logger.error("导入客户信息异常", e);
            return Result.FAILURE("Excel文件异常");
        }finally{
        	try {
        		if(xwb!=null)
        			xwb.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        if(heads.isEmpty()||datas.isEmpty()){
            return Result.FAILURE("Excel内容为空");
        }
        Map<String, Integer> indexMap = new HashMap<>();
        String headName = null;
        for(int i=0,len=heads.size();i<len;i++){
            headName = heads.get(i);
            if(!indexMap.containsKey(headName))
                indexMap.put(headName, i);
        }

        List<SysField> fields = sysFieldService.loadAllWithCache();
        Map<String, SysField> fieldMap = new LinkedHashMap<>();
        Map<String, SysField> fieldRefs = new LinkedHashMap<>();
        String impName = null;
        for(SysField field:fields){
            impName = null;
            if(type==1){
                impName = field.getJrgsName();
            }else if(type==2){
                impName = field.getBbName();
            }else if(type==3){
                impName = field.getXfxtName();
            }else if(type==4){
                impName = field.getVipName();
            }

            if(impName==null||impName.length()<1)
                impName = field.getName();
            fieldMap.put(impName, field);
            if(field.getDistKey()!=null&&field.getDistKey().length()>0)
                fieldRefs.put(field.getDistKey(), field);
        }

        distCache = null;
        treeCache = null;
        orgCache = null;

        Set<SysField> fieldSet = new HashSet<>();
        for(Map.Entry<String, SysField> entry:fieldMap.entrySet()){
            if(!heads.contains(entry.getKey()))
                continue;
            fieldSet.add(entry.getValue());
        }

        List<CmInfo> list = new ArrayList<>();
        List<CmInfo> adds = new ArrayList<>();
        List<CmInfo> updates = new ArrayList<>();
        List<CmInfo> filters = new ArrayList<>();

        SysField field = null;
        Method[] methods = CmInfo.class.getDeclaredMethods();
        for(List<String> data:datas){
            boolean matchOne = false;
            CmInfo vo = new CmInfo();
            String val = null;

            for(Map.Entry<String, SysField> entry:fieldMap.entrySet()){
                if(!heads.contains(entry.getKey()))
                    continue;
                String head = entry.getKey();
                field = entry.getValue();
                int idx = indexMap.get(head);
                val = data.get(idx);
                if(val==null||val.length()<1)
                    continue;
                boolean flag = setFieldVal(vo, field, val, methods, fieldRefs, false);
                if(flag)
                    matchOne = true;
            }
            if(matchOne)
                list.add(vo);
        }

        int insertCount = 0;
        int updateCount = 0;
        int filterCount = 0;
        CmInfo exist = null;
        PageResultVO exists = null;
        CmInfoSearchVO svo = new CmInfoSearchVO();
        svo.setSize(100);
        svo.setMap(new HashMap<String, String>());
        
        if(type==1){
        	//dksqhm->htbh
        	for(CmInfo vo:list){
                exists = null;
        		if(!StringUtils.isEmpty(vo.getDksqhm())){
                    svo.getMap().clear();
                    svo.getMap().put("Q^dksqhm^EQ", vo.getDksqhm());
                    exists = cmInfoDao.list(svo);
        		}
                if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                	boolean updated = false;
                    for(int i=0;i<exists.getList().size();i++){
                        exist = (CmInfo)exists.getList().get(i);
                        copyWithOutNone(exist, vo, fields, methods);
                        if(buildOtherField(exist)){
                        	cmInfoDao.update(exist);
                        	updateCount ++;
                        	updates.add(exist);
                        	updated = true;
                        }
                    }
                    if(!updated){
                    	filterCount ++;
                        filters.add(vo);
                    }
                }else{
                    if(!StringUtils.isEmpty(vo.getHtbh())){
                        svo.getMap().clear();
                        svo.getMap().put("Q^htbh^EQ", vo.getHtbh());
                        exists = cmInfoDao.list(svo);
                    }
                    if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                    	boolean updated = false;
                        for(int i=0;i<exists.getList().size();i++){
                            exist = (CmInfo)exists.getList().get(i);
                            copyWithOutNone(exist, vo, fields, methods);
                            if(buildOtherField(exist)){
                            	cmInfoDao.update(exist);
                            	updateCount ++;
                            	updates.add(exist);
                            	updated = true;
                            }
                        }
                        if(!updated){
                        	filterCount ++;
                            filters.add(vo);
                        }
                    }else{
                        if(buildOtherField(vo)){
                        	cmInfoDao.insert(vo);
                        	insertCount ++;
                        	adds.add(vo);
                        }else{
                        	filterCount ++;
                            filters.add(vo);
                        }
                    }
                }
        	}
        }else if(type==2){
        	//khsqbm->sqr_zjhm
        	for(CmInfo vo:list){
        		exist = null;
        		exists = null;
        		if(!StringUtils.isEmpty(vo.getKhsqbm())){
        			svo.getMap().clear();
        			svo.getMap().put("Q^khsqbm^EQ", vo.getKhsqbm());
        			exists = cmInfoDao.list(svo);
        		}
                if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                	boolean updated = false;
                    for(int i=0;i<exists.getList().size();i++){
                        exist = (CmInfo)exists.getList().get(i);
                        copyWithOutNone(exist, vo, fields, methods);
                        if(buildOtherField(exist)){
                        	cmInfoDao.update(exist);
                        	updateCount ++;
                        	updates.add(exist);
                        	updated = true;
                        }
                    }
                    if(!updated){
                    	filterCount ++;
                        filters.add(vo);
                    }
                }else{
            		if(!StringUtils.isEmpty(vo.getSqr_zjhm())){
            			exist = null;
            			exists = null;
            			svo.getMap().clear();
            			svo.getMap().put("Q^sqr_zjhm^EQ", vo.getSqr_zjhm());
            			exists = cmInfoDao.list(svo);
            			if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                            boolean existed = false;
                            for(int i=0;i<exists.getList().size();i++){
                                exist = (CmInfo)exists.getList().get(i);
                                //已存在的纪录在没有客户申请编码时更新
                                if(exist.getKhsqbm()==null||exist.getKhsqbm().length()<1){
                                    copyWithOutNone(exist, vo, fields, methods);
                                    if(buildOtherField(exist)){
                                    	cmInfoDao.update(exist);
                                    	updateCount ++;
                                    	updates.add(exist);
                                    	existed = true;
                                    }
                                }
                            }
                            if(!existed){
                                filterCount ++;
                                filters.add(vo);
                                continue;
                            }
                        }else{
                        	filterCount ++;
                            filters.add(vo);
                        }
            		}else{
                    	filterCount ++;
                        filters.add(vo);
            		}
                }
        	}
        }else if(type==3){
        	//vin->sjgcr_zjhm
        	for(CmInfo vo:list){
        		exist = null;
        		exists = null;
        		if(!StringUtils.isEmpty(vo.getVin())){
        			svo.getMap().clear();
        			svo.getMap().put("Q^vin^EQ", vo.getVin());
        			exists = cmInfoDao.list(svo);
        		}
//        		else{
//        			filterCount ++;
//                    filters.add(vo);
//                    continue;
//        		}
        		boolean updated = false;
                if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                    for(int i=0;i<exists.getList().size();i++){
                        exist = (CmInfo)exists.getList().get(i);
                        copyWithOutNone(exist, vo, fields, methods);
                        if(buildOtherField(exist)){
                        	cmInfoDao.update(exist);
                        	updateCount ++;
                        	updates.add(exist);
                        	updated = true;
                        }
                    }
                }
                if(updated)
                	continue;
        		if(!StringUtils.isEmpty(vo.getSjgcr_zjhm())){
        			exist = null;
        			exists = null;
        			svo.getMap().clear();
        			svo.getMap().put("Q^sjgcr_zjhm^EQ", vo.getSjgcr_zjhm());
        			exists = cmInfoDao.list(svo);
        			updated = false;
        			if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                        for(int i=0;i<exists.getList().size();i++){
                            exist = (CmInfo)exists.getList().get(i);
                            if(StringUtils.isEmpty(exist.getVin())||(!StringUtils.isEmpty(exist.getVin())&&exist.getVin().equals(vo.getVin()))){
                            	copyWithOutNone(exist, vo, fields, methods);
                            	if(buildOtherField(exist)){
                                	cmInfoDao.update(exist);
                                	updateCount ++;
                                	updates.add(exist);
                                	updated = true;
                                }
                            }
                        }
                    }
        			if(!updated){
        				svo.getMap().clear();
            			svo.getMap().put("Q^sqr_zjhm^EQ", vo.getSjgcr_zjhm());
            			exists = cmInfoDao.list(svo);
            			if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
            				for(int i=0;i<exists.getList().size();i++){
                                exist = (CmInfo)exists.getList().get(i);
                                if(StringUtils.isEmpty(exist.getVin())||(!StringUtils.isEmpty(exist.getVin())&&exist.getVin().equals(vo.getVin()))){
                                	copyWithOutNone(exist, vo, fields, methods);
                                	if(buildOtherField(exist)){
                                    	cmInfoDao.update(exist);
                                    	updateCount ++;
                                    	updates.add(exist);
                                    	updated = true;
                                    }
                                }else if(!StringUtils.isEmpty(exist.getVin())){
                                    copyWithOutNone(exist, vo, fields, methods);
                                    if(buildOtherField(exist)){
                                        exist.setId(0);
                                        cmInfoDao.insert(exist);
                                        insertCount ++;
                                        adds.add(exist);
                                        updated = true;
                                    }
                                }
                            }
            			}
        			}
        		}
        		if(!updated){
        			filterCount ++;
                	filters.add(vo);
        		}
        	}
        }else{
            for(CmInfo vo:list){
                svo.getMap().clear();
                boolean updated = false;
                if(!StringUtils.isEmpty(vo.getVin())){
                    svo.getMap().put("Q^vin^EQ", vo.getVin());
                    exists = cmInfoDao.list(svo);
                    if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                        for(int i=0;i<exists.getList().size();i++){
                            exist = (CmInfo)exists.getList().get(i);
                            copyWithOutNone(exist, vo, fields, methods);
                            buildOtherField(exist);
                        	cmInfoDao.update(exist);
                        	updateCount ++;
                        	updates.add(vo);
                        	updated = true;
                        }
                    }
                }
                if(!updated && !StringUtils.isEmpty(vo.getSqr_zjhm()) && !StringUtils.isEmpty(vo.getSjgcr_zjhm())){
                    svo.getMap().clear();
                    svo.getMap().put("Q^sqr_zjhm^EQ", vo.getSqr_zjhm());
                    svo.getMap().put("Q^sjgcr_zjhm^EQ", vo.getSjgcr_zjhm());
                    exists = cmInfoDao.list(svo);
                    if(exists!=null&&exists.getList()!=null&&exists.getList().size()>0){
                        for(int i=0;i<exists.getList().size();i++){
                            exist = (CmInfo)exists.getList().get(i);
                            if(StringUtils.isEmpty(exist.getVin())){
                                copyWithOutNone(exist, vo, fields, methods);
                                buildOtherField(exist);
                                cmInfoDao.update(exist);
                                updateCount ++;
                                updates.add(vo);
                                updated = true;
                            }
                        }
                    }
                }
                if(!updated){
                    buildOtherField(vo);
                    cmInfoDao.insert(vo);
                    insertCount ++;
                    adds.add(vo);
                }
            }
        }

        Map<String, Object> rs = new HashMap<>();
        rs.put("addCount", insertCount);
        rs.put("updateCount", updateCount);
        rs.put("filterCount", filterCount);
        rs.put("adds", adds);
        rs.put("updates", updates);
        rs.put("filters", filters);
        rs.put("fields", fieldSet);
        return Result.SUCCESS(rs);
    }

    private void copyWithOutNone(CmInfo vo1, CmInfo vo2,List<SysField> fields, Method[] methods){
        Method method = null;
        Object val2 = null;
        String srcName = null;
        boolean notNone = false;
        for(SysField field:fields){
            if(CmInfoDao.UpdateIgnores.contains(field.getFname()))
                continue;
            method = lookupMethod(methods, "get" + field.getFname());
            if(method==null)
                continue;
            try{
                val2 = method.invoke(vo2);
            }catch(Exception e){
                e.printStackTrace();
            }
            if(val2!=null){
                notNone = false;
                if("string".equals(field.getFtype())){
                    if(val2.toString().length()>0){
                        notNone = true;
                    }
                }else if("int".equals(field.getFtype())){
                    if((int)val2!=-1)
                        notNone = true;
                }else if("double".equals(field.getFtype())){
                    if((double)val2!=-1)
                        notNone = true;
                }else{
                    if(val2!=null)
                        notNone = true;
                }
                if(notNone){
                    method = lookupMethod(methods, "set" + field.getFname());
                    if(method!=null){
                        try{
                            method.invoke(vo1, val2);
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                    }
                }
            }
            srcName = field.getSrcName();
            if(srcName!=null&&srcName.length()>0){
                method = lookupMethod(methods, "get" + srcName);
                if(method==null)
                    continue;
                String val3 = null;
                try{
                    val3 = (String)method.invoke(vo2);
                }catch(Exception e){
                    e.printStackTrace();
                }
                if(val3!=null&&val3.length()>0){
                    method = lookupMethod(methods, "set" + srcName);
                    if(method!=null){
                        try{
                            method.invoke(vo1, val3);
                        }catch(Exception e){
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    private boolean setFieldVal(CmInfo vo, SysField field, String val, Method[] methods, Map<String, SysField> fieldRefs, boolean newIfNotExist){
        Method method = lookupMethod(methods, "set" + field.getFname());
        if(method==null)
            return false;
        boolean succ = false;
        String stype = field.getStype();
        String ftype = field.getFtype();
        String srcName = field.getSrcName();
        if("text".equals(stype)||"date".equals(stype)){
            try {
                if("int".equals(ftype)){
                    method.invoke(vo, (int)Double.parseDouble(val));
                }else if("double".equals(ftype)){
                    method.invoke(vo, Double.parseDouble(val));
                }else{
                    method.invoke(vo, val);
                }
                succ = true;
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("Bean反射设值异常,TYPE:"+stype+",FIELD:"+field.getFname()+",VAL:" + val, e);
            }
        }else if("dist".equals(stype)){
            try {
                SysDist dist = getDistByVal(field.getDistType(), val, false);
                if(dist==null){
                    method.invoke(vo, "-100");
                    if(srcName!=null&&srcName.length()>0){
                        Method srcMethod = lookupMethod(methods, "set" + srcName);
                        if(srcMethod!=null){
                            srcMethod.invoke(vo, val);
                        }
                    }
                }else{
                    method.invoke(vo, dist.getKey());
                }
                succ = true;
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("Bean反射设值异常,TYPE:"+stype+",FIELD:"+field.getFname()+",VAL:" + val, e);
            }
        }else if("tree".equals(stype)){
            int pid = -1;
            try {
                if(field.getTreeLevel()==1){
                    pid = 0;
                }else{
                    SysField ref = fieldRefs.get(field.getFname());
                    if(ref!=null){
                        Method refMethod = lookupMethod(methods, "get" + ref.getFname());
                        Integer obj = (Integer)refMethod.invoke(vo);
                        if(obj!=null)
                            pid = obj;
                    }
                }
                SysTree tree = getTreeByVal(field.getDistType(), val, pid, field.getTreeLevel(), false);
                if(tree==null && pid>-1 && field.getTreeLevel()>1){
                    tree = getTreeByVal(field.getDistType(), val, -1, field.getTreeLevel(), false);
                }
                if(tree==null){
                    method.invoke(vo, -100);
                    if(srcName!=null&&srcName.length()>0){
                        Method srcMethod = lookupMethod(methods, "set" + srcName);
                        if(srcMethod!=null){
                            srcMethod.invoke(vo, val);
                        }
                    }
                }else{
                    method.invoke(vo, tree.getId());
                }
                succ = true;
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("Bean反射设值异常,TYPE:"+stype+",FIELD:"+field.getFname()+",VAL:" + val, e);
            }
        }else if("org".equals(stype)){
            int pid = -1;
            try {
                if(field.getTreeLevel()==1){
                    pid = 0;
                }else{
                    SysField ref = fieldRefs.get(field.getFname());
                    if(ref!=null){
                    	Method refMethod = lookupMethod(methods, "get" + ref.getFname());
                    	Integer obj = (Integer)refMethod.invoke(vo);
                    	if(obj!=null)
                    		pid = obj;
                    }
                }

                SysOrg org = null;
                org = getOrgByVal(val, pid, false);
                if(org == null && pid>-1 && field.getTreeLevel() == 3){
                	org = getOrgByVal(val, -1, false);
                }
                if(org == null)
                	return false;
                method.invoke(vo, org.getId());
                succ = true;
            } catch (Exception e) {
                e.printStackTrace();
                logger.error("Bean反射设值异常,TYPE:"+stype+",FIELD:"+field.getFname()+",VAL:" + val, e);
            }
        }
        return succ;
    }

    private SysDist getDistByVal(String distType, String val, boolean newIfNotExist){
        if(distCache==null){
            SysDistSearchVO svo = new SysDistSearchVO();
            svo.setSize(0);
            List<SysDist> list = sysDistDao.list(svo);
            Map<String, SysDist> map = new HashMap<>();
            if(list!=null){
                for(SysDist dist:list){
                    map.put(dist.getType()+":"+dist.getName(), dist);
                }
            }
            distCache = map;
        }
        String cacheKey = distType + ":" + val;
        SysDist dist = distCache.get(cacheKey);
        if(dist==null&&newIfNotExist){
            dist = new SysDist();
            dist.setType(distType);
            dist.setKey(val);
            dist.setName(val);
            dist.setRemark("导入时系统自动添加");
            sysDistService.add(dist);
            distCache.put(cacheKey, dist);
        }
        return dist;
    }

    private SysTree getTreeByVal(String distType, String val, int pid, int level, boolean newIfNotExist){
        if(treeCache==null){
            SysTreeSearchVO svo = new SysTreeSearchVO();
            svo.setPid(-1);
            List<SysTree> list = sysTreeDao.list(svo);
            Map<String, SysTree> map = new HashMap<>();
            if(list!=null){
                for(SysTree tree:list){
                    map.put(tree.getType() + ":" + tree.getPid() + ":" + tree.getLevel() + ":" + tree.getName(), tree);
                    /**
                     * 避免文档导入有些以省/市结尾，有些又没有
                     * update sys_tree set name = SUBSTRING(name, 1, CHARACTER_LENGTH(name)-1) where type = 'CITY' and level=2 and name like '%市'
                     * update sys_tree set name = SUBSTRING(name, 1, CHARACTER_LENGTH(name)-1) where type = 'CITY' and level=1 and name like '%省'
                     */
                    if("CITY".equals(tree.getType())){
                    	if(tree.getLevel()==1){
                    		map.put(tree.getType() + ":" + tree.getPid() + ":" + tree.getLevel() + ":" + tree.getName() + "省", tree);
                    	}else if(tree.getLevel()==2){
                    		map.put(tree.getType() + ":" + tree.getPid() + ":" + tree.getLevel() + ":" + tree.getName() + "市", tree);
                    	}
                    }
                }
            }
            treeCache = map;
        }
        String cacheKey = distType + ":" + pid + ":" + level + ":" + val;
        SysTree tree = treeCache.get(cacheKey);
        if(tree==null&&newIfNotExist){
            tree = new SysTree();
            tree.setType(distType);
            tree.setPid(pid);
            tree.setLevel(pid==0?1:2);
            tree.setName(val);
            sysTreeService.add(tree);
            treeCache.put(cacheKey, tree);
        }
        return tree;
    }

    private SysOrg getOrgByVal(String val, int pid, boolean newIfNotExist){
        if(orgCache==null){
            SysOrgSearchVO svo = new SysOrgSearchVO();
            svo.setPid(-1);
            List<SysOrg> list = sysOrgDao.list(svo);
            Map<String, SysOrg> map = new HashMap<>();
            if(list!=null){
                for(SysOrg org:list){
                    map.put(org.getPid()+":"+org.getName(), org);
                    if(org.getType()==3){
                    	map.put("-1:"+org.getName(), org);
                    }
                }
            }
            orgCache = map;
        }
        String cacheKey = pid + ":" + val;
        SysOrg org = orgCache.get(cacheKey);
        if(org==null&&newIfNotExist){
        	int type = 1;
        	if(pid>0){
        		SysOrg parent = sysOrgDao.get(pid);
        		if(parent!=null)
        			type = parent.getType()+1;
        		else
        			type = 2;
        	}
            org = new SysOrg();
            org.setPid(pid);
            org.setName(val);
            org.setType(type);
            sysOrgService.add(org);
            orgCache.put(cacheKey, org);
        }
        return org;
    }

    private Map<String, SysDist> distCache = null;
    private Map<String, SysTree> treeCache = null;
    private Map<String, SysOrg> orgCache = null;
    
    private String getCellVal(XSSFCell cell){
    	String val = null;
    	int ctype = cell.getCellType();
		if (ctype == XSSFCell.CELL_TYPE_STRING) {
			val = cell.getStringCellValue();
		} else if (ctype == XSSFCell.CELL_TYPE_NUMERIC) { // 数字
			if (HSSFDateUtil.isCellDateFormatted(cell)) { // 日期
				val = DATE_FORMAT.format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue()));
			} else {
                val = new BigDecimal(cell.getNumericCellValue()).setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros().toPlainString();
			}
		} else if (ctype == XSSFCell.CELL_TYPE_FORMULA) { // 公式
			double numericValue = cell.getNumericCellValue(); // 公式结果
			if (HSSFDateUtil.isValidExcelDate(numericValue)) { // 日期类型
				val = DATE_FORMAT.format(cell.getDateCellValue());
			} else {
                val = new BigDecimal(numericValue).setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros().toPlainString();
			}
		} else if (ctype == XSSFCell.CELL_TYPE_BOOLEAN) {
			val = String.valueOf(cell.getBooleanCellValue());
		} else if (ctype == XSSFCell.CELL_TYPE_BLANK) {
			val = "";
		} else {
			val = cell.toString();
		}
        if(val!=null)
            val = val.trim();
    	return val;
    }

    static Method lookupMethod(Method[] methods,String methodName){
        for(Method method:methods){
            if(method.getName().equalsIgnoreCase(methodName))
                return method;
        }
        return null;
    }
    
    private boolean buildOtherField(CmInfo vo){
    	if(vo.getCity_code()==null||vo.getCity_code().length()<1){
    		SysTree tree = null;
    		if(vo.getCity_cs()>0){
    			tree = sysTreeService.getWithCache(vo.getCity_cs());
    		}
    		if(tree==null){
    			if(vo.getCity_sf()>0){
    				tree = sysTreeService.getWithCache(vo.getCity_sf());
    			}
    		}
    		if(tree!=null)
    			vo.setCity_code(tree.getCode());
    	}
    	if(vo.getOrg_code()==null||vo.getOrg_code().length()<1){
    		SysOrg org = null;
    		if(vo.getOrg_jxs()>0){
    			org = sysOrgService.getWithCache(vo.getOrg_jxs());
    		}
    		if(org==null){
    			if(vo.getOrg_dq()>0){
    				org = sysOrgService.getWithCache(vo.getOrg_dq());
    			}
    			if(org==null){
    				if(vo.getOrg_yxb()>0){
    					org = sysOrgService.getWithCache(vo.getOrg_yxb());
    				}
    			}
    		}
    		if(org!=null){
    			vo.setOrg_code(org.getCode());
    		}
    	}
    	if((vo.getOrg_yxb()<1 || vo.getOrg_dq()<1) && vo.getOrg_jxs()>0){
    		SysOrg org = sysOrgService.getWithCache(vo.getOrg_jxs());
    		if(org!=null){
    			org = sysOrgService.getWithCache(org.getPid());
    			if(org!=null){
    				if(vo.getOrg_dq()<1){
    					vo.setOrg_dq(org.getId());
    				}
    				if(vo.getOrg_yxb()<1){
    					org = sysOrgService.getWithCache(org.getPid());
    					if(org!=null)
    						vo.setOrg_yxb(org.getId());
    				}
    			}
    		}
    	}
    	if((vo.getCsrq()==null||vo.getCsrq().length()<1)&&vo.getNl()>0){
    		Calendar c = Calendar.getInstance();
    		c.add(Calendar.YEAR, -vo.getNl());
    		c.set(Calendar.DAY_OF_YEAR, 1);
    		vo.setCsrq(DATE_FORMAT.format(c.getTime()));
    	}
    	if(vo.getOrg_yxb()<1&&vo.getOrg_dq()<1&&vo.getOrg_jxs()<1)
    		return false;
    	return true;
    }

}
