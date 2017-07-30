<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</div>
<!-- END 页面主容器 -->
<!-- BEGIN FOOTER -->
<div class="footer">
  <div class="footer-tools">
    <span class="go-top">
    <i class="icon-angle-up"></i>
    </span>
  </div>
</div>
<!-- END FOOTER -->

<!-- BEGIN 弹窗 -->
<div class="row-fluid">
    <!-- BEGIN 新增/编辑 弹窗 -->
    <div id="editLoginPassDialog" class="hide">
        <div class="span8" style="margin-left:0px;">
            <form action="" id="edit_login_pass_form" class="form form-horizontal form-bordered form-row-stripped">
                <div class="row-fluid">
                    <div class="control-group">
                        <label class="control-label"><span class="required">*</span> 旧密码：</label>
                        <div class="controls">
                            <input type="password" id="lpassold" name="lpassold" class="span8" maxlength="64" required/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label"><span class="required">*</span> 新密码：</label>
                        <div class="controls">
                            <input type="password" id="lpassnew" name="lpassnew" class="span8" maxlength="64" required/>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label"><span class="required">*</span> 确认新密码：</label>
                        <div class="controls">
                            <input type="password" id="lpasscfm" name="lpasscfm" class="span8" maxlength="64" required equalto="#lpassnew"/>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="button" class="btn green" id="btnUpdateLoginPass" onclick="doUpdateLoginPassword()"><i class="icon-ok"></i> 提交</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- END 新增/编辑 弹窗 -->
</div>
<!-- END 弹窗 -->
</body>
<script src="${PATH}r/plugins/jquery-1.10.1.min.js"></script>
<script src="${PATH}r/plugins/jquery-migrate-1.2.1.min.js"></script>
<script src="${PATH}r/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
<script src="${PATH}r/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${PATH}r/plugins/bootstrap-hover-dropdown/twitter-bootstrap-hover-dropdown.min.js" ></script>
<!-- fixed ie9以下的canvas和响应式布局功能 -->
<!--[if lt IE 9]>
<script src="${PATH}r/plugins/excanvas.min.js"></script>
<script src="${PATH}r/plugins/respond.min.js"></script>
<![endif]-->
<script src="${PATH}r/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="${PATH}r/plugins/jquery.blockui.min.js"></script>
<script src="${PATH}r/plugins/jquery.cookie.min.js"></script>
<script src="${PATH}r/plugins/uniform/jquery.uniform.min.js" ></script>
<script src="${PATH}r/plugins/artTemplate-2.0.2/template.min.js"></script>
<script src="${PATH}r/plugins/artDialog-5.0.4/jquery.artDialog.min.js"></script>
<script src="${PATH}r/plugins/data-tables/jquery.dataTables.min.js"></script>
<script src="${PATH}r/plugins/data-tables/DT_bootstrap.js"></script>
<script src="${PATH}r/plugins/select2/select2.min.js"></script>
<script src="${PATH}r/plugins/laydate-1.0/laydate.js"></script>
<script src="${PATH}r/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
<script src="${PATH}r/plugins/jquery-validation/dist/additional-methods.min.js"></script>
<script src="${PATH}r/plugins/jquery.md5.js"></script>

<!-- 前端框架组件 -->
<script src="${PATH}r/js/app.js"></script>
<!-- 公共组件方法 -->
<script src="${PATH}r/js/common.js"></script>

<script>
  var PATH = '${PATH}';
  $(document).ready(function() {
      //初始化前端框架交互
      App.init();
      //初始化菜单
      initMenu();
      //initMenuStatic();
  });

  function initMenuStatic(){
      var menuData = [
          { name:'home', icon:'icon-home',url:'index.html',children:[]},
          { name:'内容管理', icon:'icon-cogs',url:'javascript:;',children:[
              { name:'百度', icon:'',url:'http://www.baidu.com',children:[]},
              { name:'淘宝', icon:'',url:'http://www.taobao.com',children:[]},
              { name:'YY', icon:'',url:'http://www.yy.com',children:[]}
          ]},
          { name:'系统管理', icon:'icon-bookmark-empty',url:'#',children:[
              { name:'用户管理', icon:'',url: PATH + 'admin/user/list.jspx',children:[]},
              { name:'角色管理', icon:'',url: PATH + 'admin/role/list.jspx',children:[]},
              { name:'菜单权限管理', icon:'',url: PATH + 'admin/menu/list.jspx',children:[]}
          ]}
      ];
      MultiMenu.init('#menu-container', menuData);
  }

  //加载菜单
  function initMenu(){
    try{
      if(window.sessionStorage){
        var cache = sessionStorage['menuData'];
        if(!!cache){
          cache = $.parseJSON(cache);
          if(!!cache){
            MultiMenu.init('#menu-container', cache);
            return;
          }
        }
      }
    }catch(e){
      console.log(e);
    }

    $.post('${PATH}common/menu.do', null, function(json) {
      if (!json.success) {
        $.alert(json.message);
        return;
      }
      var data  = [];
      var menus = json.object;
      var menuFilter = {};
      var _menu;
      var _url;
      for(var j = 0; j < menus.length; j++){
        _menu = menus[j];
        _url = _menu.uri;
        if(!!_url&&_url.length>1&&!(_url.indexOf('http://')==0||_url.indexOf('https://')==0)){
          _url = '${PATH}' + _url;
        }
        if(_menu.pid==0){
          var menu = {};
          menu["name"] = _menu.name;
          menu["url"] = _url;
          menu["children"] = [];
          menu["parentId"] = _menu.pid;
          menuFilter[_menu.id] = menu;
          data.push(menu);
        } else{
          var menu = {}, children;
          menu["name"] = _menu.name;
          menu["url"] = _url;
          menu["children"] = [];
          menu["parentId"] = _menu.pid;
          var _parent = menuFilter[_menu.pid];
          if(!!_parent){
	          children = _parent.children;
	          children.push(menu);
          }else{
        	  data.push(menu);
          }
        }
      }
      MultiMenu.init('#menu-container', data);

      if(window.sessionStorage){
        sessionStorage['menuData'] = JSON.stringify(data);
      }
    });
  }
  
  function logout(){
	  $.confirm('确认退出登录?', function(){
		  $.post('${PATH}logout.do', null, function(json) {
			  if(window.sessionStorage){
		        sessionStorage.removeItem('menuData');
		      }
		      window.location.href = '${PATH}login.jspx';
		  });
	  }, function(){
	  });
  }

  function toEditLoginPassword(){
      $.dialog({
          title: '修改用户密码',
          content: $('#editLoginPassDialog')[0],
          padding: 0,
          id:'edit_login_pass_dialog'
      });
  }

  function doUpdateLoginPassword(){
      var editForm = $('#edit_login_pass_form');
      editForm.validate();
      if(!editForm.valid())
          return;
      var uname = '${curUserAccount}';
      var oldPass = $.md5($('#lpassold').val() + '' + uname);
      var newPass = $.md5($('#lpassnew').val() + '' + uname);
      var params = {
          uname: uname,
          oldPass: oldPass,
          newPass: newPass
      };
      var btnObj = $('#btnUpdateLoginPass');
      btnObj.attr('disabled', true);
      $.post('${PATH}updateLoginPass.do', params, function(json) {
          btnObj.removeAttr('disabled');
          $.alert(json.message, function(){
              if(!!json&&json.success){
                  $.dialog.get('edit_login_pass_dialog').close();
              }
          });
      });
  }
</script>