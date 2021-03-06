<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="cm" uri="http://www.cm.com/functions" %>
<%@include file="../common/env.jsp"%>
<jsp:include page="../common/hd_frame.jsp"></jsp:include>
<style>
@media (max-width: 979px) and (min-width: 768px){
	.row-fluid [class*="span"]{margin-left:0px !important;}
}
@media (min-width: 1200px){
	.row-fluid [class*="span"]{margin-left:0px !important;}
}
.row-fluid [class*="span"]{margin-left:0px !important;}
</style>

<!-- BEGIN PAGE -->
<div class="page-content">
	<!-- BEGIN 右边容器-->
	<div class="container-fluid">
		<!-- BEGIN 右容器头部-->
		<div class="row-fluid">
			<div class="span12">
				<!-- BEGIN 页面标题和面包屑导航 -->
				<h3 class="page-title">客户信息管理</h3>
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="${PATH}">Home</a><i class="icon-angle-right"></i></li>
					<li>客户信息<i class="icon-angle-right"></i></li>
					<li>客户信息管理</li>
				</ul>
				<!-- END 页面标题和面包屑导航 -->
			</div>
		</div>
		<!-- END 右容器头部-->
		<!-- BEGIN 右容器 main-->
		<div class="row-fluid">
			<!-- BEGIN 查询条件 -->
			<div class="row-fluid">
				<div class="portlet box default">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-reorder"></i>查询条件
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
						</div>
					</div>
					<div class="portlet-body form form-horizontal form-row-seperated">
						<form id="queryForm" action="#" target="_blank">
						<div class="row-fluid">
							<c:forEach var="vo" items="${fields}">
								<c:if test="${vo.query==1}">
								<c:choose>
									<c:when test="${vo.stype eq 'dist'}">
										<div class="span4">
											<div class="control-group">
												<label class="control-label"> ${vo.name}：</label>
												<div class="controls">
													<select class="span10" id="${vo.fname}" name="Q^${vo.fname}^EQ" onchange="search();">
														<option value="">所有</option>
														<option value="-100">其他</option>
														<c:forEach var="v" items="${cm:loadDist(vo.distType)}">
															<option value="${v.key}">${v.name}</option>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</c:when>
									<c:when test="${vo.stype eq 'org'}">
										<div class="span4">
											<div class="control-group">
												<label class="control-label"> ${vo.name}：</label>
												<div class="controls">
													<select class="span10" id="${vo.fname}" name="Q^${vo.fname}^EQ" onchange="orgChange(this, '${vo.distKey}')">
														<option value="">所有</option>
														<c:if test="${vo.distKey ne null and vo.distKey ne ''}">
															<c:forEach var="v" items="${cm:loadOrg(vo.distType)}">
																<option value="${v.id}" auth="${v.auth}" level="${v.type}">${v.name}</option>
															</c:forEach>
														</c:if>
													</select>
												</div>
											</div>
										</div>
									</c:when>
									<c:when test="${vo.stype eq 'tree'}">
										<div class="span4">
											<div class="control-group">
												<label class="control-label"> ${vo.name}：</label>
												<div class="controls">
													<select class="span10" id="${vo.fname}" name="Q^${vo.fname}^EQ" onchange="treeChange(this, '${vo.distKey}')">
														<option value="">所有</option>
														<option value="-100">其他</option>
														<c:if test="${vo.distKey ne null and vo.distKey ne ''}">
															<c:forEach var="v" items="${cm:loadTree(vo.distType, '0')}">
																<option value="${v.id}">${v.name}</option>
															</c:forEach>
														</c:if>
													</select>
												</div>
											</div>
										</div>
									</c:when>
									<c:when test="${vo.stype eq 'date'}">
										<div class="span6">
											<div class="control-group">
												<label class="control-label"> ${vo.name}：</label>
												<div class="controls">
													<input type="text" class="laydate-icon" id="${vo.fname}_GE" name="Q^${vo.fname}^GE" style="width:120px;" onkeydown="if(event.keyCode==13){search()}"/>
													&nbsp;至&nbsp;
													<input type="text" class="laydate-icon" id="${vo.fname}_LE" name="Q^${vo.fname}^LE" style="width:120px;" onkeydown="if(event.keyCode==13){search()}"/>
												</div>
											</div>
										</div>
									</c:when>
									<c:when test="${vo.stype eq 'text' and (vo.ftype eq 'int' or vo.ftype eq 'double')}">
										<div class="span4">
											<div class="control-group">
												<label class="control-label"> ${vo.name}：</label>
												<div class="controls">
													<input type="text" class="v-num" id="${vo.fname}_GE" name="Q^${vo.fname}^GE" s="${vo.name}" style="width:50px;" onkeydown="if(event.keyCode==13){search()}"/>
													&nbsp;至&nbsp;
													<input type="text" class="v-num" id="${vo.fname}_LE" name="Q^${vo.fname}^LE" s="${vo.name}" style="width:50px;" onkeydown="if(event.keyCode==13){search()}"/>
												</div>
											</div>
										</div>
									</c:when>
									<c:otherwise>
										<div class="span4">
											<div class="control-group">
												<label class="control-label"> ${vo.name}：</label>
												<div class="controls">
													<input type="text" class="span10" id="${vo.fname}" name="Q^${vo.fname}^EQ" onkeydown="if(event.keyCode==13){search()}"/>
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
								</c:if>
							</c:forEach>
						</div>
						</form>

						<div class="form-actions">
							<button type="button" class="btn green" id="btnSearch" onclick="search()">查询</button>
							<button type="button" class="btn blue" onclick="reset()">重置</button>
							<button type="button" class="btn yellow" onclick="exportExcel()" >导出</button>
						</div>
					</div>
				</div>
			</div>
			<!-- END 查询条件 -->

			<!-- BEGIN 列表 -->
			<div class="row-fluid">
				<div class="portlet box default">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-reorder"></i>客户信息列表
						</div>
						<div class="tools">
							<button type="button" class="btn mini red" onclick="toBatchDelete()" style="margin-top: -10px;">批量删除</button>
							<!--
							<button type="button" class="btn mini green" onclick="toAdd()" style="margin-top: -10px;">
								<i class="icon-plus"></i>新增
							</button>
							<button type="button" class="btn mini blue" id="btnExport" onclick="exportExcel()" style="margin-top: -10px;">
								<i class="icon-download-alt"></i> 导出
							</button>
							<a href="${PATH}cm/imp.jspx" class="btn mini blue" style="margin-top: -10px;margin-left:0px;"><i class="icon-upload-alt"></i> 导入</a>
							-->
							<div class="btn-group" style="margin-top: -10px;">
                            	<a class="btn blue mini" href="#" data-toggle="dropdown">显示列<i class="icon-angle-down"></i></a>
                                <div id="col_show_div" class="dropdown-menu hold-on-click dropdown-checkboxes pull-right">
	                                <c:forEach var="vo" items="${fields}">
										<c:if test="${vo.list==1}">
											<label><input type="checkbox" name="COL_${vo.sname}" checked>${vo.name}</label>
										</c:if>
									</c:forEach>
                            	</div>
                        	</div>
						</div>
					</div>
					<div class="portlet-body">
						<div style="width:auto;overflow-x:auto;">
						<table id="tb_list" class="table table-bordered table-striped table-hover" style="width:auto !important;">
							<thead>
								<tr>
									<th style="width:30px;">
										<input type="checkbox" id="J_checkAll" />
									</th>
									<c:forEach var="vo" items="${fields}">
										<c:if test="${vo.list==1}">
											<th class="COL_${vo.sname}" style="white-space: nowrap;">${vo.name}</th>
										</c:if>
									</c:forEach>
									<th style="min-width: 150px;">操作</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<script id="listTmpl" type="text/html">
                				{{each list as v i}}
                					<tr>
										<td><input type="checkbox" name="ckb" value="{{v.id}}"/></td>
										<c:forEach var="vo" items="${fields}">
											<c:if test="${vo.list==1}">
												<td class="COL_${vo.sname}" style="white-space: nowrap;">{{valConvert('${vo.stype}', '${vo.ftype}', v.${vo.sname})}}</td>
											</c:if>
										</c:forEach>
                    					<td>
											<button class="btn mini green" onclick="toEdit('{{v.id}}')">编辑</button>
                        					<button class="btn mini blue" onclick="toView('{{v.id}}')">详细</button>
                        					<button class="btn mini red" onclick="toDelete('{{v.id}}')">删除</button>
                    					</td>
                					</tr>
                				{{/each}}
              					</script>
							</tbody>
						</table>
						</div>
						<div id="common_page"></div>
					</div>
				</div>
			</div>
			<!-- END 列表 -->

		</div>
		<!-- END 右容器 main-->
	</div>
	<!-- END 右边容器-->
	
</div>
<!-- END PAGE -->

<jsp:include page="../common/ft_frame.jsp"></jsp:include>
<script type="text/javascript" src="${PATH}r/plugins/layer-v2.3/layer.js"></script>
<script>
	$(document).ready(function() {
		initTemplateFunc();
		initDate();
		initShowColumnTool();
		search();
		
		$('#J_checkAll').on('click', function() {
	        choseAll(this);
	        $.uniform.update();
	    });

		try{
			$('#queryForm').find('input[type="text"]')[0].focus();
		}catch(e){
			console.error(e);
		}
	});
	
	function initShowColumnTool(){
		$('#col_show_div input[type="checkbox"]').change(function(){
			var checked = this.checked;
			var name = $(this).attr('name');
			if(checked){
				$('.' + name).show();
			}else{
				$('.' + name).hide();
			}
		});
	}

	function showColumnAuto(){
		$('#col_show_div input[type="checkbox"]').each(function(){
			var checked = this.checked;
			var name = $(this).attr('name');
			if(checked){
				$('.' + name).show();
			}else{
				$('.' + name).hide();
			}
		});
	}

	function initTemplateFunc(){
		template.helper('valConvert',function(stype, ftype, v){
			if(stype=='text'&&(ftype=='int'||ftype=='double')&&v==-1)
				return '';
			if(v==null)
				return '';
			return v;
		});
	}
	
	function initDate(){
		var ds = $('.laydate-icon');
		if(ds.length>0){
			ds.each(function(){
				laydate({
					elem:'#' + this.id,
					istime:false,
					isclear:true,
					issure:true,
					format: 'YYYY-MM-DD',
				});
			});
		}
	}

	function reset(){
		$('#queryForm')[0].reset();
		orgChange($('#org_yxb')[0], 'org_dq');
		search();
	}

	function orgChange(target, cid){
		if(!!!cid||cid==''){
			search();
			return;
		}
		var val = $(target).val();
		var auth = $(target).find('option:selected').attr('auth');
		var level = $(target).find('option:selected').attr('level');
		var h = '';
		if(val==''||(!!auth&&auth==1)||(!!level&&level==2)){
			h = '<option value="">所有</option>';
		}
		if(!!!val||val==''){
			$('#'+cid).html(h).change();
		}else{
			$.post('${PATH}cm/loadOrgs.do', 'pid='+val, function(json) {
				if (!json.success) {
					$.alert(json.message);
					return;
				}
				var data = json.object;
				if(!!data&&data.length>0){
					$.each(data, function(i, n){
						h += '<option value="'+ n.id + '" auth="'+ n.auth+'" level="'+n.type+'">' + n.name + '</option>';
					});
				}else{
					if(h=='')
						h = '<option value="">所有</option>';
				}
				$('#'+cid).html(h).change();
			});
		}
	}

	function treeChange(target, cid){
		if(!!!cid||cid==''){
			search();
			return;
		}
		var val = $(target).val();
		var h = '<option value="">所有</option><option value="-100">其他</option>';
		if(!!!val||val==''||val=='-100'){
			$('#'+cid).html(h).change();
		}else{
			$.post('${PATH}cm/loadTrees.do', 'pid='+val, function(json) {
				if (!json.success) {
					$.alert(json.message);
					return;
				}
				var data = json.object;
				if(!!data&&data.length>0){
					$.each(data, function(i, n){
						h += '<option value="'+ n.id + '">' + n.name + '</option>';
					});
				}
				$('#'+cid).html(h).change();
			});
		}
	}
	
	var curPage = 1;
	var tableSort = $('#tb_list');
	function search(page, size) {
		var nums = $('.v-num');
		if(!!nums&&nums.length>0){
			for(var i= 0,len=nums.length;i<len;i++){
				var obj = $(nums[i]);
				var val = $.trim(obj.val());
				if(val=='')
					continue;
				if(isNaN(val)){
					$.alert('[' + obj.attr('s') + ']只能为数字!');
					return;
				}
			}
		}

		var fn = arguments.callee;
		var formData = $("#queryForm").serializeJson();
		formData['page'] = page||1;
		formData['size'] = (size = size || 15);

		Loading.show();
		$('#btnSearch').attr('disabled', true);
		$.post('${PATH}cm/list.do', formData, function(json) {
			$('#btnSearch').attr('disabled', false);
			Loading.hide();
			if (!json.success) {
				$.alert(json.message);
				return;
			}
			var count = json.object.count, list = json.object.list, p = json.object.page, pCount = json.object.pageCount;
			var html = template('listTmpl', {
				list : list
			});
			TmpTools.handleHTML($('#tbody'), html);
			if (count > size) {
				$('#common_page').show();
				TmpTools.commonPage('#common_page', fn, size, count, p, pCount);
			} else {
				$('#common_page').hide();
			}
			$.uniform.update();
			checkAllAuto();
			showColumnAuto();
		});
		curPage = page;
	}
	
	function refresh() {
		search(curPage);
	}

	function checkAllAuto(){
		/*
		var checked = $('#J_checkAll')[0].checked;
		if(checked){
			$('[name="ckb"]').attr('checked', 'checked');
		}else{
			$('[name="ckb"]').removeAttr('checked');
		}
		*/
		$('#J_checkAll').removeAttr('checked');
		$.uniform.update();
	}
	
	function exportExcel(){
		var fobj = $('#queryForm');
		fobj.attr('action', '${PATH}cm/exp.do');
		fobj[0].submit();
	}
	
	function toDelete(id) {
		$.confirm('确认删除该行?', function() {
			Loading.show();
			$.post("${PATH}cm/delete.do", "id=" + id, function(data) {
				Loading.hide();
				if (data.success) {
					refresh();
					$.dialog({
						content : data.message,
						time : 1000
					});
				} else {
					$.alert(data.message);
				}
			});
		}, function() {
			return;
		});
	}
	
	function toAdd(){
		location.href = '${PATH}cm/add.jspx';
	}
	
	function toEdit(id){
		layer.open({
			type: 2,
			title: '编辑',
			shadeClose: false,
			maxmin: true,
			shade: 0.8,
			area: ['90%', '90%'],
			content: '${PATH}cm/edit.jspx?id=' + id
		});
	}
	
	function toView(id){
		layer.open({
			type: 2,
			title: '详细',
			shadeClose: false,
			maxmin: true,
			shade: 0.8,
			area: ['90%', '90%'],
			content: '${PATH}cm/detail.jspx?id=' + id
		});
	}
	
	//获取勾选的ID
	function getCheckedIds(){
		var ids = '';
		var cks = $('#tbody').find('input[name="ckb"]:checked');
		if(cks.length>0){
			var arr = [];
			cks.each(function(i, n){
				arr.push(n.value);
			});
			ids = arr.join(',');
		}
		return ids;
	}

	//批量删除
	function toBatchDelete(){
		var ids = getCheckedIds();
		if(ids.length<1){
			$.alert('请勾选要合并的记录');
			return;
		}
		$.confirm('确认删除所选记录?', function() {
			Loading.show();
			$.post("${PATH}cm/deleteBatch.do", "ids=" + ids, function(data) {
				Loading.hide();
				if (data.success) {
					refresh();
					$.dialog({
						content : data.message,
						time : 1000
					});
				} else {
					$.alert(data.message);
				}
			});
		}, function() {
			return;
		});
	}
</script>
</html>