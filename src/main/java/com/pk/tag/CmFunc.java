package com.pk.tag;

import com.pk.framework.cfg.UserInfoContext;
import com.pk.framework.spring.SpringContextUtil;
import com.pk.model.admin.SysDist;
import com.pk.model.admin.SysOrg;
import com.pk.model.admin.SysTree;
import com.pk.model.cm.CmInfo;
import com.pk.service.admin.SysDistService;
import com.pk.service.admin.SysOrgService;
import com.pk.service.admin.SysTreeService;
import org.apache.log4j.Logger;

import java.lang.reflect.Method;
import java.util.List;

/**
 * Created by jiangkunpeng on 16/10/22.
 */
final public class CmFunc {

    private final static Logger logger = Logger.getLogger(CmFunc.class);

    /**
     * 获取字典项
     * @param type
     * @return
     */
    public static List<SysDist> loadDist(String type){
        List<SysDist> list = null;
        SysDistService sysDistService = SpringContextUtil.getBean(SysDistService.class);
        if(sysDistService!=null)
            list = sysDistService.loadByType(type);
        return list;
    }

    /**
     * 获取组织机构
     * @param pid
     * @return
     */
    public static List<SysOrg> loadOrg(String pid){
        List<SysOrg> list = null;
        int _pid = Integer.parseInt(pid);
        if(_pid==-1)
            return null;
        int userId = UserInfoContext.getId();
        if(userId<1)
        	return null;
        SysOrgService sysOrgService = SpringContextUtil.getBean(SysOrgService.class);
        if(sysOrgService!=null)
            list = sysOrgService.loadByPidAndUserId(_pid, userId);
        return list;
    }

    /**
     * 获取树字典
     * @param type
     * @param pid
     * @return
     */
    public static List<SysTree> loadTree(String type, String pid){
        List<SysTree> list = null;
        int _pid = Integer.parseInt(pid);
        if(_pid==-1)
            return null;
        SysTreeService sysTreeService = SpringContextUtil.getBean(SysTreeService.class);
        if(sysTreeService!=null)
            list = sysTreeService.loadByTypeAndPid(type, _pid);
        return list;
    }

    /**
     * 获取字段显示
     * @param vo
     * @param sname
     * @return
     */
    public static String fieldShow(CmInfo vo, String sname){
        String rs = null;
        try{
            String getName = "get" + (sname.substring(0, 1).toUpperCase()) + (sname.length()>1?sname.substring(1, sname.length()):"");
            Method method = vo.getClass().getMethod(getName, new Class[]{});
            if(method!=null){
                Object obj = method.invoke(vo);
                if(obj!=null){
                    rs = obj.toString();
                }
            }
        }catch(Exception e){
            e.printStackTrace();
            logger.error("反射获取显示值异常,Field:" + sname, e);
        }
        return rs;
    }

}
