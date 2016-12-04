<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="cm" uri="http://www.cm.com/functions" %>
<%@include file="../common/env.jsp"%>
<jsp:include page="../common/hd_frame.jsp"></jsp:include>

<style>
	.DT-pagination-container{display:block !important;}
</style>

<!-- BEGIN PAGE -->
<div class="page-content">
	<!-- BEGIN 右边容器-->
	<div class="container-fluid">
		<!-- BEGIN 右容器头部-->
		<div class="row-fluid">
			<div class="span12">
				<!-- BEGIN 页面标题和面包屑导航 -->
				<h3 class="page-title">导入客户信息</h3>
				<ul class="breadcrumb">
					<li><i class="icon-home"></i> <a href="${PATH}">Home</a><i class="icon-angle-right"></i></li>
					<li>客户信息<i class="icon-angle-right"></i></li>
					<li>导入客户信息</li>
				</ul>
				<!-- END 页面标题和面包屑导航 -->
			</div>
		</div>
		<!-- END 右容器头部-->
		<!-- BEGIN 右容器 main-->
		<div class="row-fluid">
			<!-- BEGIN 结果描述 -->
			<div class="row-fluid">
				<div class="portlet box default">
					<div class="portlet-title">
						<div class="caption">
							<i class="icon-reorder"></i>导入结果
						</div>
					</div>
					<div class="portlet-body">
						<div class="row-fluid">
						<c:choose>
							<c:when test="${result.success}">
								导入成功,其中新增${result.object.addCount}条,更新${result.object.updateCount}条,过滤${result.object.filterCount}条.
							</c:when>
							<c:otherwise>
								<p>${result.message}</p>
								<c:if test="${result.object.addCount>0}">
								<p>新增申请人姓名：
									<c:forEach var="vo" items="${result.object.adds}" varStatus="idx">
										<c:if test="${idx.index>0}">,</c:if>
										${vo.sqr_xm}
									</c:forEach>
								</p>
								</c:if>
								<c:if test="${result.object.updateCount>0}">
								<p>更新申请人姓名：
									<c:forEach var="vo" items="${result.object.updates}" varStatus="idx">
										<c:if test="${idx.index>0}">,</c:if>
										${vo.sqr_xm}
									</c:forEach>
								</p>
								</c:if>
								<c:if test="${result.object.filterCount>0}">
								<p>过滤申请人姓名：
									<c:forEach var="vo" items="${result.object.filters}" varStatus="idx">
										<c:if test="${idx.index>0}">,</c:if>
										${vo.sqr_xm}
									</c:forEach>
								</p>
								</c:if>
							</c:otherwise>
						</c:choose>
						</div>

						<div class="row-fluid" style="margin-top:10px;">
							<a href="${PATH}cm/list.jspx" class="btn green">信息查询</a>
							<a href="${PATH}cm/imp.jspx" class="btn blue">继续导入</a>
						</div>
					</div>
				</div>
			</div>
			<!-- END 结果描述 -->

			<%-- 
			<!-- BEGIN 新增纪录 -->
			<c:if test="${result.object.addCount>0}">
				<div class="row-fluid">
					<div class="portlet box default">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-reorder"></i>新增纪录
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a>
							</div>
						</div>
						<div class="portlet-body">
							<table class="table table-striped table-bordered table-hover datatables">
								<thead>
								<tr>
									<c:forEach var="vo" items="${result.object.fields}">
										<c:if test="${vo.list==1}">
											<th>${vo.name}</th>
										</c:if>
									</c:forEach>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="vo" items="${result.object.adds}">
									<tr>
										<c:forEach var="f" items="${result.object.fields}">
											<c:if test="${f.list==1}">
												<td>${cm:fieldShow(vo, f.sname)}</td>
											</c:if>
										</c:forEach>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</c:if>
			<!-- END 新增纪录 -->

			<!-- BEGIN 更新纪录 -->
			<c:if test="${result.object.updateCount>0}">
				<div class="row-fluid">
					<div class="portlet box default">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-reorder"></i>更新纪录
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a>
							</div>
						</div>
						<div class="portlet-body">
							<table class="table table-striped table-bordered table-hover datatables">
								<thead>
								<tr>
									<c:forEach var="vo" items="${result.object.fields}">
										<c:if test="${vo.list==1}">
											<th>${vo.name}</th>
										</c:if>
									</c:forEach>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="vo" items="${result.object.updates}">
									<tr>
										<c:forEach var="f" items="${result.object.fields}">
											<c:if test="${f.list==1}">
												<td>${cm:fieldShow(vo, f.sname)}</td>
											</c:if>
										</c:forEach>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</c:if>
			<!-- END 更新纪录 -->

			<!-- BEGIN 过滤纪录 -->
			<c:if test="${result.object.filterCount>0}">
				<div class="row-fluid">
					<div class="portlet box default">
						<div class="portlet-title">
							<div class="caption">
								<i class="icon-reorder"></i>过滤纪录
							</div>
							<div class="tools">
								<a href="javascript:;" class="collapse"></a>
							</div>
						</div>
						<div class="portlet-body">
							<table class="table table-striped table-bordered table-hover datatables">
								<thead>
								<tr>
									<c:forEach var="vo" items="${result.object.fields}">
										<c:if test="${vo.list==1}">
											<th>${vo.name}</th>
										</c:if>
									</c:forEach>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="vo" items="${result.object.filters}">
									<tr>
										<c:forEach var="f" items="${result.object.fields}">
											<c:if test="${f.list==1}">
												<td>${cm:fieldShow(vo, f.sname)}</td>
											</c:if>
										</c:forEach>
									</tr>
								</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</c:if>
			<!-- END 过滤纪录 -->
			--%>

		</div>
		<!-- END 右容器 main-->
	</div>
	<!-- END 右边容器-->
</div>
<!-- END PAGE -->

<jsp:include page="../common/ft_frame.jsp"></jsp:include>
<script>
	$(document).ready(function(){
		$('.datatables').dataTable({
			"aLengthMenu": [5,10,15,20,50],
			"iDisplayLength": 10
		})
	});
</script>
</html>