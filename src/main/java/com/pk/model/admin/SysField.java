package com.pk.model.admin;

import java.io.Serializable;

/**
 * 字段配置
 * Created by jiangkunpeng on 16/10/21.
 */
public class SysField implements Serializable {

	private static final long serialVersionUID = 3870163616099513732L;
	
	private String fname;	//字段名
    private String sname;	//显示字段名
	private String srcName;	//导入原始值字段名
	private String tname;	//表字段名
    private String name;	//显示名
    private String stype;	//显示类型
	private String ftype;	//数据类型,int/string
    private String distType;	//字典类型
    private String distKey;		//字典键
	private int treeLevel;		//树层次
    private int list;			//是否列表显示
    private int query;			//是否做为查询条件
    private int layerWidth;		//布局宽度
    private int sortIndex;		//排序序号
	private String jrgsName;	//金融公司表格名
	private String bbName;		//八部系统表格名
	private String xfxtName;	//销服系统表格名
	private String vipName;		//VIP表格名
	private int enc;			//是否加密
    
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getList() {
		return list;
	}
	public void setList(int list) {
		this.list = list;
	}
	public int getQuery() {
		return query;
	}
	public void setQuery(int query) {
		this.query = query;
	}
	public String getDistType() {
		return distType;
	}
	public void setDistType(String distType) {
		this.distType = distType;
	}
	public String getDistKey() {
		return distKey;
	}
	public void setDistKey(String distKey) {
		this.distKey = distKey;
	}
	public int getLayerWidth() {
		return layerWidth;
	}
	public void setLayerWidth(int layerWidth) {
		this.layerWidth = layerWidth;
	}
	public int getSortIndex() {
		return sortIndex;
	}
	public void setSortIndex(int sortIndex) {
		this.sortIndex = sortIndex;
	}
	public String getFtype() {
		return ftype;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	public String getStype() {
		return stype;
	}
	public void setStype(String stype) {
		this.stype = stype;
	}

	public int getTreeLevel() {
		return treeLevel;
	}

	public void setTreeLevel(int treeLevel) {
		this.treeLevel = treeLevel;
	}

	public String getJrgsName() {
		return jrgsName;
	}

	public void setJrgsName(String jrgsName) {
		this.jrgsName = jrgsName;
	}

	public String getBbName() {
		return bbName;
	}

	public void setBbName(String bbName) {
		this.bbName = bbName;
	}

	public String getXfxtName() {
		return xfxtName;
	}

	public void setXfxtName(String xfxtName) {
		this.xfxtName = xfxtName;
	}

	public String getVipName() {
		return vipName;
	}

	public void setVipName(String vipName) {
		this.vipName = vipName;
	}

	public String getSrcName() {
		return srcName;
	}

	public void setSrcName(String srcName) {
		this.srcName = srcName;
	}

	public int getEnc() {
		return enc;
	}

	public void setEnc(int enc) {
		this.enc = enc;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}
}
