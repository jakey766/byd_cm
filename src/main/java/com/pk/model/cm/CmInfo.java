package com.pk.model.cm;

import com.pk.framework.spring.SpringContextUtil;
import com.pk.service.admin.SysDistService;
import com.pk.service.admin.SysOrgService;
import com.pk.service.admin.SysTreeService;

import java.io.Serializable;

/**
 * 客户信息
 * Created by jiangkunpeng on 16/10/15.
 */
public class CmInfo implements Serializable {

    private int id;
    private int org_yxb = -1;        //营销部
    private int org_dq = -1;         //大区
    private int org_jxs = -1;        //经销商
    private String org_code;    //经销商编码
    private int city_sf = -1;        //省份
    private int city_cs = -1;        //城市
    private String city_code;   //城市编码
    private String sqr_xm;      //申请人姓名
    private String sqr_zjlx;    //申请人证件类型
    private String sqr_zjhm = "";    //申请人证件号码
    private String sqr_dhhm;    //申请人电话号码
    private String sjgcr_xm;    //实际购车人姓名
    private String sjgcr_zjhm = "";  //实际购车人证件号码
    private String sjgcr_dhhm;  //实际购车人电话号码
    private String gsqrgx;      //跟申请人关系
    private String hkzt;        //还款状态
    private String xb;          //性别
    private int nl = -1;        //年龄
    private String csrq;        //出生日期
    private String hyzk;        //婚姻状况
    private String dqzt;        //当前状态
    private String htbh;        //合同编号
    private String htjhrq;      //合同激活日期
    private String sqtjrq;      //申请提交日期
    private int yf = -1;        //月份
    private String hzjjrq;      //核准拒绝日期
    private int zc = -1;        //周次
    private String cxi;         //车系
    private String cxing;       //车型
    private String cphm;        //车牌号码
    private String vin;         //VIN号
    private String gcrq;        //购车日期
    private String jcrq;        //交车日期
    private String fkfs;        //付款方式
    private String jszbh;       //驾驶证编号
    private String jzdqr;       //驾照到期日
    private String jtrs;        //家庭人数
    private String jycd;        //教育程度
    private String dksqhm;      //贷款申请号码
    private int hylx = -1;           //行业类型
    private int hyzlx = -1;          //行业子类型
    private String hyzlx_code;  //行业子类型编码
    private String zylx;        //职业类型
    private String hkszd;       //户口所在地
    private int ysr = -1;            //月收入
    private int jkr_sf = -1;         //借款人省份
    private int jkr_cs = -1;         //借款人城市
    private String hkdz;        //户口地址
    private String dzlx;        //地址类型
    private String fclx;        //房产类型
    private int jznx = -1;      //居住年限
    private String gsmc;        //公司名称
    private String qyxz;        //企业性质
    private String zw;          //职位
    private String gsdh;        //公司电话
    private String dzy;         //地址一
    private int gznx = -1;      //工作年限
    private double zcjg = -1;   //资产价格
    private String csys;        //车身颜色
    private String cpz;         //产品组
    private String cplx;        //产品类型
    private String dkqs;        //贷款期数
    private double xsjg = -1;   //销售价格
    private double sfkbl = -1;  //首付款比例
    private double sfkje = -1;  //首付款金额
    private double dkje = -1;   //贷款金额
    private double khll = -1;   //客户利率
    private double lxze = -1;   //利息总额
    private double gcyhke = -1; //购车月还款额
    private String khsqbm;      //客户申请编码
    private String jsr_xm;      //介绍人姓名
    private String jsr_lxdh;    //介绍人联系电话
    private String xqah;        //兴趣爱好
    private String yyxhsl;      //拥有小孩数量
    private int dygxhnljd;   //第一个小孩年龄阶段
    private int degxhnljd;   //第二个小孩年龄阶段
    private String bz;          //备注
    private String yqr;         //邀请人

    private int deleted;

    private String sqr_zjlx_src;
    private String gsqrgx_src;
    private String hkzt_src;
    private String xb_src;
    private String hyzk_src;
    private String dqzt_src;
    private String cxi_src;
    private String cxing_src;
    private String fkfs_src;
    private String jtrs_src;
    private String jycd_src;
    private String zylx_src;
    private String fclx_src;
    private String qyxz_src;
    private String csys_src;
    private String dkqs_src;
    private String yyxhsl_src;
    private String hylx_src;
    private String hyzlx_src;
    private String city_sf_src;
    private String city_cs_src;
    private String jkr_sf_src;
    private String jkr_cs_src;

    private static SysDistService sysDistService = null;
    private static SysTreeService sysTreeService = null;
    private static SysOrgService sysOrgService = null;

    private String getDistName(String type, String key, String defVal){
        if(sysDistService==null){
            sysDistService = SpringContextUtil.getBean(SysDistService.class);
        }
        String val = null;
        if(sysDistService!=null)
            val = sysDistService.getDistName(type, key);
        if(val==null||val.length()<1)
            val = defVal;
        return val;
    }

    private String getTreeName(int treeId, String defVal){
        if(sysTreeService==null){
            sysTreeService = SpringContextUtil.getBean(SysTreeService.class);
        }
        String val = null;
        if(sysTreeService!=null)
            val = sysTreeService.getTreeName(treeId);
        if(val==null||val.length()<1)
            val = defVal;
        return val;
    }

    private String getOrgName(int orgId){
        if(sysOrgService==null){
            sysOrgService = SpringContextUtil.getBean(SysOrgService.class);
        }
        if(sysOrgService!=null)
            return sysOrgService.getOrgName(orgId);
        return null;
    }

    public String getOrg_yxb_show(){
        return getOrgName(org_yxb);
    }

    public String getOrg_dq_show(){
        return getOrgName(org_dq);
    }

    public String getOrg_jxs_show(){
        return getOrgName(org_jxs);
    }

    public String getCity_sf_show(){
        return getTreeName(city_sf, city_sf_src);
    }

    public String getCity_cs_show(){
        return getTreeName(city_cs, city_cs_src);
    }

    public String getSqr_zjlx_show(){
        return getDistName("ZJLX", sqr_zjlx, sqr_zjlx_src);
    }

    public String getXb_show(){
        return getDistName("XB", xb, xb_src);
    }

    public String getGsqrgx_show(){
        return getDistName("LZGX", gsqrgx, gsqrgx_src);
    }

    public String getHkzt_show(){
        return getDistName("HKZT", hkzt, hkzt_src);
    }

    public String getHyzk_show(){
        return getDistName("HYZK", hyzk, hyzk_src);
    }

    public String getDqzt_show(){
        return getDistName("DQZT", dqzt, dqzt_src);
    }

    public String getCxi_show(){
        return getDistName("CXI", cxi, cxi_src);
    }

    public String getCxing_show(){
        return getDistName("CXING", cxing, cxing_src);
    }

    public String getFkfs_show(){
        return getDistName("FKFS", fkfs, fkfs_src);
    }

    public String getJtrs_show(){
        return getDistName("JTRS", jtrs, jtrs_src);
    }

    public String getJycd_show(){
        return getDistName("JYCD", jycd, jycd_src);
    }

    public String getHylx_show(){
        return getTreeName(hylx, hylx_src);
    }

    public String getHyzlx_show(){
        return getTreeName(hyzlx, hyzlx_src);
    }

    public String getZylx_show(){
        return getDistName("ZYLX", zylx, zylx_src);
    }

    public String getJkr_sf_show(){
        return getTreeName(jkr_sf, jkr_sf_src);
    }

    public String getJkr_cs_show(){
        return getTreeName(jkr_cs, jkr_cs_src);
    }

    public String getFclx_show(){
        return getDistName("FCLX", fclx, fclx_src);
    }

    public String getQyxz_show(){
        return getDistName("QYXZ", qyxz, qyxz_src);
    }

    public String getCsys_show(){
        return getDistName("CXYS", csys, csys_src);
    }

    public String getDkqs_show(){
        return getDistName("DKQS", dkqs, dkqs_src);
    }

    public String getYyxhsl_show(){
        return getDistName("YYHZSL", yyxhsl, yyxhsl_src);
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getOrg_yxb() {
        return org_yxb;
    }

    public void setOrg_yxb(int org_yxb) {
        this.org_yxb = org_yxb;
    }

    public int getOrg_dq() {
        return org_dq;
    }

    public void setOrg_dq(int org_dq) {
        this.org_dq = org_dq;
    }

    public int getOrg_jxs() {
        return org_jxs;
    }

    public void setOrg_jxs(int org_jxs) {
        this.org_jxs = org_jxs;
    }

    public String getOrg_code() {
        return org_code;
    }

    public void setOrg_code(String org_code) {
        this.org_code = org_code;
    }

    public int getCity_sf() {
        return city_sf;
    }

    public void setCity_sf(int city_sf) {
        this.city_sf = city_sf;
    }

    public int getCity_cs() {
        return city_cs;
    }

    public void setCity_cs(int city_cs) {
        this.city_cs = city_cs;
    }

    public String getCity_code() {
        return city_code;
    }

    public void setCity_code(String city_code) {
        this.city_code = city_code;
    }

    public String getSqr_xm() {
        return sqr_xm;
    }

    public void setSqr_xm(String sqr_xm) {
        this.sqr_xm = sqr_xm;
    }

    public String getSqr_zjlx() {
        return sqr_zjlx;
    }

    public void setSqr_zjlx(String sqr_zjlx) {
        this.sqr_zjlx = sqr_zjlx;
    }

    public String getSqr_zjhm() {
        return sqr_zjhm;
    }

    public void setSqr_zjhm(String sqr_zjhm) {
        this.sqr_zjhm = sqr_zjhm;
    }

    public String getSqr_dhhm() {
        return sqr_dhhm;
    }

    public void setSqr_dhhm(String sqr_dhhm) {
        this.sqr_dhhm = sqr_dhhm;
    }

    public String getSjgcr_xm() {
        return sjgcr_xm;
    }

    public void setSjgcr_xm(String sjgcr_xm) {
        this.sjgcr_xm = sjgcr_xm;
    }

    public String getSjgcr_zjhm() {
        return sjgcr_zjhm;
    }

    public void setSjgcr_zjhm(String sjgcr_zjhm) {
        this.sjgcr_zjhm = sjgcr_zjhm;
    }

    public String getSjgcr_dhhm() {
        return sjgcr_dhhm;
    }

    public void setSjgcr_dhhm(String sjgcr_dhhm) {
        this.sjgcr_dhhm = sjgcr_dhhm;
    }

    public String getGsqrgx() {
        return gsqrgx;
    }

    public void setGsqrgx(String gsqrgx) {
        this.gsqrgx = gsqrgx;
    }

    public String getHkzt() {
        return hkzt;
    }

    public void setHkzt(String hkzt) {
        this.hkzt = hkzt;
    }

    public String getXb() {
        return xb;
    }

    public void setXb(String xb) {
        this.xb = xb;
    }

    public int getNl() {
        return nl;
    }

    public void setNl(int nl) {
        this.nl = nl;
    }

    public String getCsrq() {
        return csrq;
    }

    public void setCsrq(String csrq) {
        this.csrq = csrq;
    }

    public String getHyzk() {
        return hyzk;
    }

    public void setHyzk(String hyzk) {
        this.hyzk = hyzk;
    }

    public String getDqzt() {
        return dqzt;
    }

    public void setDqzt(String dqzt) {
        this.dqzt = dqzt;
    }

    public String getHtbh() {
        return htbh;
    }

    public void setHtbh(String htbh) {
        this.htbh = htbh;
    }

    public String getHtjhrq() {
        return htjhrq;
    }

    public void setHtjhrq(String htjhrq) {
        this.htjhrq = htjhrq;
    }

    public String getSqtjrq() {
        return sqtjrq;
    }

    public void setSqtjrq(String sqtjrq) {
        this.sqtjrq = sqtjrq;
    }

    public int getYf() {
        return yf;
    }

    public void setYf(int yf) {
        this.yf = yf;
    }

    public String getHzjjrq() {
        return hzjjrq;
    }

    public void setHzjjrq(String hzjjrq) {
        this.hzjjrq = hzjjrq;
    }

    public int getZc() {
        return zc;
    }

    public void setZc(int zc) {
        this.zc = zc;
    }

    public String getCxi() {
        return cxi;
    }

    public void setCxi(String cxi) {
        this.cxi = cxi;
    }

    public String getCxing() {
        return cxing;
    }

    public void setCxing(String cxing) {
        this.cxing = cxing;
    }

    public String getCphm() {
        return cphm;
    }

    public void setCphm(String cphm) {
        this.cphm = cphm;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getGcrq() {
        return gcrq;
    }

    public void setGcrq(String gcrq) {
        this.gcrq = gcrq;
    }

    public String getJcrq() {
        return jcrq;
    }

    public void setJcrq(String jcrq) {
        this.jcrq = jcrq;
    }

    public String getFkfs() {
        return fkfs;
    }

    public void setFkfs(String fkfs) {
        this.fkfs = fkfs;
    }

    public String getJszbh() {
        return jszbh;
    }

    public void setJszbh(String jszbh) {
        this.jszbh = jszbh;
    }

    public String getJzdqr() {
        return jzdqr;
    }

    public void setJzdqr(String jzdqr) {
        this.jzdqr = jzdqr;
    }

    public String getJtrs() {
        return jtrs;
    }

    public void setJtrs(String jtrs) {
        this.jtrs = jtrs;
    }

    public String getJycd() {
        return jycd;
    }

    public void setJycd(String jycd) {
        this.jycd = jycd;
    }

    public String getDksqhm() {
        return dksqhm;
    }

    public void setDksqhm(String dksqhm) {
        this.dksqhm = dksqhm;
    }

    public int getHylx() {
        return hylx;
    }

    public void setHylx(int hylx) {
        this.hylx = hylx;
    }

    public int getHyzlx() {
        return hyzlx;
    }

    public void setHyzlx(int hyzlx) {
        this.hyzlx = hyzlx;
    }

    public String getHyzlx_code() {
        return hyzlx_code;
    }

    public void setHyzlx_code(String hyzlx_code) {
        this.hyzlx_code = hyzlx_code;
    }

    public String getZylx() {
        return zylx;
    }

    public void setZylx(String zylx) {
        this.zylx = zylx;
    }

    public String getHkszd() {
        return hkszd;
    }

    public void setHkszd(String hkszd) {
        this.hkszd = hkszd;
    }

    public int getYsr() {
        return ysr;
    }

    public void setYsr(int ysr) {
        this.ysr = ysr;
    }

    public int getJkr_sf() {
        return jkr_sf;
    }

    public void setJkr_sf(int jkr_sf) {
        this.jkr_sf = jkr_sf;
    }

    public int getJkr_cs() {
        return jkr_cs;
    }

    public void setJkr_cs(int jkr_cs) {
        this.jkr_cs = jkr_cs;
    }

    public String getHkdz() {
        return hkdz;
    }

    public void setHkdz(String hkdz) {
        this.hkdz = hkdz;
    }

    public String getDzlx() {
        return dzlx;
    }

    public void setDzlx(String dzlx) {
        this.dzlx = dzlx;
    }

    public String getFclx() {
        return fclx;
    }

    public void setFclx(String fclx) {
        this.fclx = fclx;
    }

    public int getJznx() {
        return jznx;
    }

    public void setJznx(int jznx) {
        this.jznx = jznx;
    }

    public String getGsmc() {
        return gsmc;
    }

    public void setGsmc(String gsmc) {
        this.gsmc = gsmc;
    }

    public String getQyxz() {
        return qyxz;
    }

    public void setQyxz(String qyxz) {
        this.qyxz = qyxz;
    }

    public String getZw() {
        return zw;
    }

    public void setZw(String zw) {
        this.zw = zw;
    }

    public String getGsdh() {
        return gsdh;
    }

    public void setGsdh(String gsdh) {
        this.gsdh = gsdh;
    }

    public String getDzy() {
        return dzy;
    }

    public void setDzy(String dzy) {
        this.dzy = dzy;
    }

    public int getGznx() {
        return gznx;
    }

    public void setGznx(int gznx) {
        this.gznx = gznx;
    }

    public double getZcjg() {
        return zcjg;
    }

    public void setZcjg(double zcjg) {
        this.zcjg = zcjg;
    }

    public String getCsys() {
        return csys;
    }

    public void setCsys(String csys) {
        this.csys = csys;
    }

    public String getCpz() {
        return cpz;
    }

    public void setCpz(String cpz) {
        this.cpz = cpz;
    }

    public String getCplx() {
        return cplx;
    }

    public void setCplx(String cplx) {
        this.cplx = cplx;
    }

    public String getDkqs() {
        return dkqs;
    }

    public void setDkqs(String dkqs) {
        this.dkqs = dkqs;
    }

    public double getSfkbl() {
        return sfkbl;
    }

    public void setSfkbl(double sfkbl) {
        this.sfkbl = sfkbl;
    }

    public double getSfkje() {
        return sfkje;
    }

    public void setSfkje(double sfkje) {
        this.sfkje = sfkje;
    }

    public double getDkje() {
        return dkje;
    }

    public void setDkje(double dkje) {
        this.dkje = dkje;
    }

    public double getKhll() {
        return khll;
    }

    public void setKhll(double khll) {
        this.khll = khll;
    }

    public double getLxze() {
        return lxze;
    }

    public void setLxze(double lxze) {
        this.lxze = lxze;
    }

    public double getGcyhke() {
        return gcyhke;
    }

    public void setGcyhke(double gcyhke) {
        this.gcyhke = gcyhke;
    }

    public String getKhsqbm() {
        return khsqbm;
    }

    public void setKhsqbm(String khsqbm) {
        this.khsqbm = khsqbm;
    }

    public String getJsr_xm() {
        return jsr_xm;
    }

    public void setJsr_xm(String jsr_xm) {
        this.jsr_xm = jsr_xm;
    }

    public String getJsr_lxdh() {
        return jsr_lxdh;
    }

    public void setJsr_lxdh(String jsr_lxdh) {
        this.jsr_lxdh = jsr_lxdh;
    }

    public String getXqah() {
        return xqah;
    }

    public void setXqah(String xqah) {
        this.xqah = xqah;
    }

    public String getYyxhsl() {
        return yyxhsl;
    }

    public void setYyxhsl(String yyxhsl) {
        this.yyxhsl = yyxhsl;
    }

    public int getDygxhnljd() {
		return dygxhnljd;
	}

	public void setDygxhnljd(int dygxhnljd) {
		this.dygxhnljd = dygxhnljd;
	}

	public int getDegxhnljd() {
		return degxhnljd;
	}

	public void setDegxhnljd(int degxhnljd) {
		this.degxhnljd = degxhnljd;
	}

	public double getXsjg() {
        return xsjg;
    }

    public void setXsjg(double xsjg) {
        this.xsjg = xsjg;
    }

    public String getBz() {
        return bz;
    }

    public void setBz(String bz) {
        this.bz = bz;
    }

    public String getYqr() {
        return yqr;
    }

    public void setYqr(String yqr) {
        this.yqr = yqr;
    }

    public String getSqr_zjlx_src() {
        return sqr_zjlx_src;
    }

    public void setSqr_zjlx_src(String sqr_zjlx_src) {
        this.sqr_zjlx_src = sqr_zjlx_src;
    }

    public String getGsqrgx_src() {
        return gsqrgx_src;
    }

    public void setGsqrgx_src(String gsqrgx_src) {
        this.gsqrgx_src = gsqrgx_src;
    }

    public String getHkzt_src() {
        return hkzt_src;
    }

    public void setHkzt_src(String hkzt_src) {
        this.hkzt_src = hkzt_src;
    }

    public String getXb_src() {
        return xb_src;
    }

    public void setXb_src(String xb_src) {
        this.xb_src = xb_src;
    }

    public String getHyzk_src() {
        return hyzk_src;
    }

    public void setHyzk_src(String hyzk_src) {
        this.hyzk_src = hyzk_src;
    }

    public String getDqzt_src() {
        return dqzt_src;
    }

    public void setDqzt_src(String dqzt_src) {
        this.dqzt_src = dqzt_src;
    }

    public String getCxi_src() {
        return cxi_src;
    }

    public void setCxi_src(String cxi_src) {
        this.cxi_src = cxi_src;
    }

    public String getCxing_src() {
        return cxing_src;
    }

    public void setCxing_src(String cxing_src) {
        this.cxing_src = cxing_src;
    }

    public String getFkfs_src() {
        return fkfs_src;
    }

    public void setFkfs_src(String fkfs_src) {
        this.fkfs_src = fkfs_src;
    }

    public String getJtrs_src() {
        return jtrs_src;
    }

    public void setJtrs_src(String jtrs_src) {
        this.jtrs_src = jtrs_src;
    }

    public String getJycd_src() {
        return jycd_src;
    }

    public void setJycd_src(String jycd_src) {
        this.jycd_src = jycd_src;
    }

    public String getZylx_src() {
        return zylx_src;
    }

    public void setZylx_src(String zylx_src) {
        this.zylx_src = zylx_src;
    }

    public String getFclx_src() {
        return fclx_src;
    }

    public void setFclx_src(String fclx_src) {
        this.fclx_src = fclx_src;
    }

    public String getQyxz_src() {
        return qyxz_src;
    }

    public void setQyxz_src(String qyxz_src) {
        this.qyxz_src = qyxz_src;
    }

    public String getCsys_src() {
        return csys_src;
    }

    public void setCsys_src(String csys_src) {
        this.csys_src = csys_src;
    }

    public String getDkqs_src() {
        return dkqs_src;
    }

    public void setDkqs_src(String dkqs_src) {
        this.dkqs_src = dkqs_src;
    }

    public String getYyxhsl_src() {
        return yyxhsl_src;
    }

    public void setYyxhsl_src(String yyxhsl_src) {
        this.yyxhsl_src = yyxhsl_src;
    }

    public String getHylx_src() {
        return hylx_src;
    }

    public void setHylx_src(String hylx_src) {
        this.hylx_src = hylx_src;
    }

    public String getHyzlx_src() {
        return hyzlx_src;
    }

    public void setHyzlx_src(String hyzlx_src) {
        this.hyzlx_src = hyzlx_src;
    }

    public String getCity_sf_src() {
        return city_sf_src;
    }

    public void setCity_sf_src(String city_sf_src) {
        this.city_sf_src = city_sf_src;
    }

    public String getCity_cs_src() {
        return city_cs_src;
    }

    public void setCity_cs_src(String city_cs_src) {
        this.city_cs_src = city_cs_src;
    }

    public String getJkr_sf_src() {
        return jkr_sf_src;
    }

    public void setJkr_sf_src(String jkr_sf_src) {
        this.jkr_sf_src = jkr_sf_src;
    }

    public String getJkr_cs_src() {
        return jkr_cs_src;
    }

    public void setJkr_cs_src(String jkr_cs_src) {
        this.jkr_cs_src = jkr_cs_src;
    }
}
