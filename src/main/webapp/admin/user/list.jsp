<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../../common/env.jsp"%>
<jsp:include page="../../common/hd_frame.jsp"></jsp:include>
<link href="${PATH}r/plugins/zTree_v3/css/zTreeStyle/zTreeStyle.css" rel="stylesheet" />

<!-- BEGIN PAGE -->
<div class="page-content">
	<!-- BEGIN 右边容器-->
	<div class="container-fluid">
		<!-- BEGIN 右容器头部-->
		<div class="row-fluid">
			<div class="span12">
				<!-- BEGIN 页面标题和面包屑导航 -->
				<h3 class="page-title">用户管理</h3>
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="${PATH}">Home</a><i class="icon-angle-right"></i></li>
					<li>系统管理<i class="icon-angle-right"></i></li>
					<li>用户管理</li>
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
						<div class="control-group">
							<label class="control-label"> 账号：</label>
							<div class="controls">
								<input type="text" id="keywords" name="keywords" onkeydown="if(event.keyCode==13){search();}" />
							</div>
						</div>
						<div class="form-actions">
							<button type="button" class="btn green" id="btnSearch" onclick="search()">查询</button>
							<button type="button" class="btn blue" onclick="reset()">重置</button>
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
							<i class="icon-reorder"></i>用户列表
						</div>
						<div class="tools">
							<button type="button" class="btn mini green" onclick="toAdd()" style="margin-top: -10px;">
								<i class="icon-plus"></i>新增
							</button>
						</div>
					</div>
					<div class="portlet-body">
						<table id="tb_list"
							class="table table-bordered table-striped table-hover">
							<thead>
								<tr>
									<th>用户名</th>
									<th>姓名</th>
									<th>角色</th>
									<th>手机</th>
									<th>Email</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<script id="listTmpl" type="text/html">
                				{{each list as v i}}
                					<tr>
                    					<td>{{v.username}}</td>
                    					<td>{{v.name}}</td>
										<td>{{formatTrim(v.roleNames)}}</td>
										<td>{{v.mobile}}</td>
										<td>{{v.email}}</td>
                    					<td>
                        					<button class="btn mini blue" onclick="toEdit('{{v.id}}')">编辑</button>
											<button class="btn mini yellow" onclick="toEditPass('{{v.username}}', '{{v.name}}')">修改密码</button>
                        					<button class="btn mini red" onclick="toDelete('{{v.id}}', '{{v.name}}')">删除</button>
                    					</td>
                					</tr>
                				{{/each}}
              					</script>
							</tbody>
						</table>
						<div id="common_page"></div>
					</div>
				</div>
			</div>
			<!-- END 列表 -->

		</div>
		<!-- END 右容器 main-->
	</div>
	<!-- END 右边容器-->
	
	<!-- BEGIN 弹窗 -->
	<div class="row-fluid">
		<!-- BEGIN 新增/编辑 弹窗 -->
		<div id="editDialog" class="hide">
			<div class="span8" style="margin-left: 0px;">
				<form action="" id="edit_form"
					class="form form-horizontal form-bordered form-row-stripped">
					<input type="hidden" id="id" name="id" />
					<div class="row-fluid">
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 用户名：</label>
							<div class="controls">
								<input type="text" id="username" name="username" class="span8" required maxlength="50" />
							</div>
						</div>
						<div id="passDiv" class="control-group hide">
							<label class="control-label"><span class="required">*</span> 密码：</label>
							<div class="controls">
								<input type="password" id="password" name="password" class="span8" maxlength="100" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 姓名：</label>
							<div class="controls">
								<input type="text" id="name" name="name" class="span8" required maxlength="10" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 角色：</label>
							<div class="controls" id="roleDiv"></div>
						</div>
						<div class="control-group">
							<label class="control-label">手机：</label>
							<div class="controls">
								<input type="text" id="mobile" name="mobile" class="span8" maxlength="20" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Email：</label>
							<div class="controls">
								<input type="text" id="email" name="email" class="span8" maxlength="50" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">查询权限：</label>
							<div class="controls">
								<%--
								<select id="orgs" name="orgs" class="span8" multiple="multiple"></select>
								--%>
								<ul id="dataTree" class="ztree" style="max-height: 300px;overflow: auto;"></ul>
							</div>
						</div>
						<div class="form-actions">
							<button type="button" class="btn green" id="btnSave" onclick="save()">保存</button>
							<button type="button" class="btn green" onclick="cancel()">取消</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- END 新增/编辑 弹窗 -->
		<!-- BEGIN 修改密码 弹窗 -->
		<div id="editPassDialog" class="hide">
			<div class="span8" style="margin-left:0px;">
				<form action="" id="edit_pass_form" class="form form-horizontal form-bordered form-row-stripped">
					<div class="row-fluid">
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 用户名：</label>
							<div class="controls">
								<input type="text" id="pass_name" name="pass_name" class="span8" readonly="readonly"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 姓名：</label>
							<div class="controls">
								<input type="text" id="pass_name_cn" name="pass_name_cn" class="span8" readonly="readonly"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 新密码：</label>
							<div class="controls">
								<input type="password" id="pass_new_pass" name="pass_new_pass" class="span8" required maxlength="100"/>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label"><span class="required">*</span> 确认密码：</label>
							<div class="controls">
								<input type="password" id="pass_new_pass_cfm" name="pass_new_pass_cfm" class="span8" required maxlength="100" equalto="#pass_new_pass"/>
							</div>
						</div>
						<div class="form-actions">
							<button type="button" class="btn green" id="btnUpdatePass" onclick="updatePass()"><i class="icon-ok"></i> 保存</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- END 修改密码 弹窗 -->
	</div>
	<!-- END 弹窗 -->
</div>
<!-- END PAGE -->

<jsp:include page="../../common/ft_frame.jsp"></jsp:include>
<script src="${PATH}r/plugins/jquery.md5.js"></script>
<script src="${PATH}r/plugins/zTree_v3/js/jquery.ztree.core-3.5.js"></script>
<script src="${PATH}r/plugins/zTree_v3/js/jquery.ztree.excheck-3.5.js"></script>

<script>
	var orgInited = false;
	var roleInited = false;
	var treeObj = null;
	var zNodes = [];
	$(document).ready(function() {
		initTemplateFunc();
		search();
	});
	
	function initTemplateFunc() {
		template.helper('formatTrim', function(v) {
			return trimChar(v);
		});
	}
	
	var curPage = 1;
	var tableSort = $('#tb_list');
	function search(page, size) {
		var fn = arguments.callee;
		var keywords = $.trim($('#keywords').val());
		var req = 'page=' + (page || 1) + '&size=' + (size = size || 15);
		req += '&state=-1&keywords=' + keywords;
		Loading.show();
		$('#btnSearch').attr('disabled', true);
		$.post('${PATH}admin/user/list.do', req, function(json) {
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
		});
		curPage = page;
	}
	
	function refresh() {
		search(curPage);
	}

	function reset(){
		$('#keywords').val('');
		search();
	}
	
	var editType = 'add';
	function toAdd() {
		$('#username, #name, #password, #mobile, #email').val('');
		$.uniform.update("input");
		$('#passDiv').show();
		$('#password').attr('required', true);
		$('#username').removeAttr('readonly');
		if (!roleInited) {
			loadRoles(function() {
				$.dialog({
					title : '新增用户',
					content : $('#editDialog')[0],
					padding : 0,
					zIndex: 1985,
					id : 'edit_dialog'
				});
				editType = "add";
				$('[name="roles"]').removeAttr('checked');
			});
		} else {
			$.dialog({
				title : '新增用户',
				content : $('#editDialog')[0],
				padding : 0,
				zIndex: 1985,
				id : 'edit_dialog'
			});
			editType = "add";
			$('[name="roles"]').removeAttr('checked');
		}
		editType = "add";

		/*
		if(!orgInited){
			initOrgSelect(function(){
				$('#orgs').val('').trigger("change");
			});
		}else{
			$('#orgs').val('').trigger("change");
		}
		*/

		if(!orgInited){
			initOrgTree();
		}else{
			treeObj.checkAllNodes(false);
		}
	}
	
	function toEdit(id) {
		$('[name="roles"]').removeAttr('checked');
		if (!roleInited) {
			loadRoles(function() {
				toEditCall(id);
			});
		} else {
			toEditCall(id);
		}
	}
	
	function toEditCall(id) {
		Loading.show();
		$.post('${PATH}admin/user/get.do', 'id=' + id, function(data) {
			Loading.hide();
			if (!data.success) {
				$.alert(data.message);
				return;
			}
			var vo = data.object;
			if (!!!vo) {
				$.alert('该用户不存在或已被删除!');
				return;
			}
			$('#password').removeAttr('required');
			$('#username').attr('readonly', true);
			$('#passDiv').hide();
	
			$('#id').val(vo.id);
			$('#username').val(vo.username);
			$('#name').val(vo.name);
			$('#mobile').val(vo.mobile);
			$('#email').val(vo.email);

			var role_ids = vo.roleIds;
			if (!!!role_ids)
				role_ids = '';
			if (role_ids != '') {
				role_ids = trimChar(role_ids);
				var rids = role_ids.split(',');
				$.each(rids, function(i, rid) {
					$('[name="roles"][value="' + rid + '"]').attr('checked', 'checked');
				});
			}
			$.uniform.update("input");
			
			$.dialog({
				title : '编辑用户',
				content : $('#editDialog')[0],
				padding : 0,
				zIndex: 1985,
				id : 'edit_dialog'
			});
			editType = 'edit';

			var orgIds = vo.orgIds||'';
			/*
			if(!orgInited){
				initOrgSelect(function(){
					$('#orgs').val(trimChar(orgIds).split(',')).trigger("change");
				});
			}else{
				$('#orgs').val(trimChar(orgIds).split(',')).trigger("change");
			}
			*/

			if(!orgInited){
				initOrgTree(function(){
					setOrgTreeSelect(orgIds);
				});
			}else{
				treeObj.checkAllNodes(false);
				setOrgTreeSelect(orgIds);
			}
		});
	}
	
	function save() {
		var editForm = $('#edit_form');
		editForm.validate();
		if (!editForm.valid())
			return;
		if (editType == 'add') {
			doAdd();
		} else {
			doUpdate();
		}
	}
	
	function doAdd() {
		var roles = getCheckedRoles();
		if (roles == null) {
			$.alert('请选择角色!');
			return;
		}
		var username = $.trim($('#username').val());
		var password = $('#password').val();
		password = $.md5(password + '' + username);
		var param = {
			username : username,
			password : password,
			name : $.trim($('#name').val()),
			mobile : $.trim($('#mobile').val()),
			email : $.trim($('#email').val()),
			roleIds : roles[0],
			roleNames : roles[1]
			,orgIds: getOrgTreeIds()
		};
		$('#btnSave').attr('disabled', true);
		Loading.show();
		$.post('${PATH}admin/user/add.do', param, function(data) {
			Loading.hide();
			$('#btnSave').attr('disabled', false);
			if (data.success) {
				$.dialog({
					content : data.message,
					time : 1000
				});
				$.dialog.get('edit_dialog').close();
				search();
			} else {
				$.alert(data.message);
			}
		});
	}
	
	function doUpdate() {
		var roles = getCheckedRoles();
		if (roles == null) {
			$.alert('请选择角色!');
			return;
		}
		var param = {
			id : $('#id').val(),
			username : $.trim($('#username').val()),
			name : $.trim($("#name").val()),
			mobile : $.trim($('#mobile').val()),
			email : $.trim($('#email').val()),
			roleIds : roles[0],
			roleNames : roles[1]
			,orgIds: getOrgTreeIds()
		};
		$('#btnSave').attr('disabled', true);
		Loading.show();
		$.post('${PATH}admin/user/update.do', param, function(data) {
			Loading.hide();
			$('#btnSave').attr('disabled', false);
			if (data.success) {
				$.dialog({
					content : data.message,
					time : 1000
				});
				$.dialog.get('edit_dialog').close();
				refresh();
			} else {
				$.alert(data.message);
			}
		});
	}
	
	function cancel(){
		$.dialog.get('edit_dialog').close();
	}
	
	function toDelete(id, name) {
		$.confirm('确认删除[' + name + ']?', function() {
			Loading.show();
			$.post("${PATH}admin/user/delete.do", "id=" + id, function(data) {
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

	function loadRoles(callback) {
		$.post("${PATH}admin/role/loadAll.do", null, function(data) {
			if (data.success) {
				var list = data.object;
				if (list == null || list.length < 1) {
					$.alert('没有角色,请先添加角色!');
					return;
				}
				var h = '';
				$.each(list, function(i, vo) {
					h += '<label class="radio_label"><input type="checkbox" name="roles" value="'+vo.id+'" text="'+vo.name+'"/>'
						+ vo.name + '</label>';
				});
				$('#roleDiv').html(h);
				roleInited = true;
				if (callback)
					callback.call();
			} else {
				$.alert('加载角色列表异常:' + data.message);
			}
		});
	}

	function getCheckedRoles() {
		var cks = $('[name="roles"]:checked');
		var ids = [];
		var names = [];
		if (cks.length > 0) {
			cks.each(function() {
				ids.push(this.value);
				names.push($(this).attr('text'));
			});
			var idStr = ids.join(',');
			var nameStr = names.join(',');
			idStr = appendChar(idStr);
			nameStr = appendChar(nameStr);
			return [ idStr, nameStr ];
		}
		return null;
	}
	
	//初始化组织机构树 BEGIN
	function initOrgTree(callback){
		var setting = {
			check : {
				enable : true,
				chkboxType : {
					"Y" : "",
					"N" : ""
				}
			},
			data : {
				simpleData : {
					enable : true
				}
			},
			view : {
				showLine : false
			}
		};
		
		$.post('${PATH}admin/org/list.do', 'pid=-1', function(json) {
			if (!json.success) {
				$.alert('加载组织机构异常：'+json.message);
				return;
			}
			var data = json.object;
			if(!!data&&data.length>0){
				$.each(data, function(i, vo){
					zNodes.push({id: vo.id, pId:vo.pid, name:vo.name});
				});
			}
			treeObj = $.fn.zTree.init($("#dataTree"), setting, zNodes);
			orgInited = true;
			if (callback)
				callback.call();
		});
	}
	function getOrgTreeIds(){
		var mid = '';
		var mids = [];
		var nodes = treeObj.getCheckedNodes(true);
		if (nodes.length > 0) {
			$.each(nodes, function(i, node) {
				mids.push(node.id);
			});
			mid = mids.join(',');
		}
		return mid;
	}
	function setOrgTreeSelect(orgIds){
		if (!!orgIds && orgIds.length > 0) {
			var _orgIds = orgIds.split(',');
			var _nodes = null;
			$.each(_orgIds, function(i, mid) {
				_nodes = treeObj.getNodesByParam("id", mid, null);
				if (!!_nodes && _nodes.length > 0) {
					treeObj.checkNode(_nodes[0], true, false);
				}
			});
		}
	}
	//初始化组织机构树 END

	//组织机构select2 BEBIN
	function initOrgSelect(callback){
		$.post('${PATH}admin/org/list.do', 'pid=-1', function(json) {
			if (!json.success) {
				$.alert('加载组织机构异常：'+json.message);
				return;
			}
			var data = json.object;
			var h = '';
			if(!!data&&data.length>0){
				var map = {};
				$.each(data, function(i, vo){
					if(vo.pid==0){
						map[vo.id] = vo;
						vo.children = [];
					}else{
						var pvo = map[vo.pid];
						if(!!pvo){
							pvo.children.push(vo);
						}
					}
				});
				$.each(map, function(i, vo){
					h += '<option value="'+vo.id+'">'+vo.name+'</option>';
					$.each(vo.children, function(j, ch){
						h += '<option value="'+ch.id+'">&nbsp;&nbsp;'+ch.name+'</option>';
					});
				});
				map = null;
			}
			data = null;
			$('#orgs').html(h);
			$('#orgs').select2({
				placeholder: "请选择...",
				allowClear: true
			});
			orgInited = true;
			if (callback)
				callback.call();
		});
	}

	function getOrgIds(){
		var sorgs = $('#orgs').val();
		if(!!sorgs&&sorgs.length>0){
			return appendChar(sorgs.join(","));
		}
		return '';
	}
	//组织机构select2 END

	function toEditPass(name, name_cn){
		$('#pass_name').val(name);
		$('#pass_name_cn').val(name_cn);
		$('#pass_new_pass').val('');
		$('#pass_new_pass_cfm').val('');
		$.dialog({
			title: '修改用户密码['+name_cn+']',
			content: $('#editPassDialog')[0],
			padding: 0,
			id:'edit_pass_dialog'
		});
	}

	function updatePass(){
		var editForm = $('#edit_pass_form');
		editForm.validate();
		if(!editForm.valid())
			return;
		var uname = $('#pass_name').val();
		var newPass = $.md5($('#pass_new_pass').val() + '' + uname);
		var params = {
			username: uname,
			password: newPass
		};
		var btnObj = $('#btnUpdatePass');
		btnObj.attr('disabled', true);
		$.post('${PATH}admin/user/updatePass.do', params, function(json) {
			btnObj.removeAttr('disabled');
			$.alert(json.message, function(){
				if(!!json&&json.success){
					$.dialog.get('edit_pass_dialog').close();
				}
			});
		});
	}
</script>
</html>