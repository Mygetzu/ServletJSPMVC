<%@page import="java.util.List"%>
<%@page import="ac.id.stikompoltek.dto.Artikel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Header -->
<%@include file="header.jsp"%>

<div class="col-sm-12 main">
	<div class="row">
		<div class="col-xs-10">
			<h1 class="page-header">Artikel</h1>
		</div>
		<div class="col-xs-2 pull-right">
			<a href="<%=request.getServletContext().getInitParameter("BASE_URL") %>/admin/artikel?act=add" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-plus"> </i></a>
		</div>
	</div>
	<div class="row">
		<%
			List<Artikel> artikels = (List<Artikel>) request.getAttribute("artikelList");
			for(int i=0; i<artikels.size(); i++) {
			%>
		<div class="col-sm-4">
			<div class="artikel-list">
				<a href="<%=request.getServletContext().getInitParameter("BASE_URL") %>/admin/artikel?act=delete&url=<%=artikels.get(i).getSeoUrl() %>" class="btn btn-lg btn-circle marginable pull-right glyphicon glyphicon-remove-sign" alt="delete"></a>
				<a href="<%=request.getServletContext().getInitParameter("BASE_URL") %>/admin/artikel?act=edit&url=<%=artikels.get(i).getSeoUrl() %>">
					<h3><%=artikels.get(i).getJudul() %>
						<small class="glyphicon glyphicon-pencil"></small>
					</h3>
				</a>
				<div class="small text-muted border-bottom marginable-bottom">
					<span class="glyphicon glyphicon-user"></span>
					<%=artikels.get(i).getUser().getNamaLengkap() %> | 
					<span class="glyphicon glyphicon-folder-close"></span>
					<%=artikels.get(i).getKategori().getNama() %>
				</div>
				<%=artikels.get(i).getIsi() %>
			</div>
		</div>
		<%
			}
			%>
	</div>
</div>

<!-- Bootstrap core JavaScript
	    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<%=request.getServletContext().getInitParameter("BASE_URL") %>/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getServletContext().getInitParameter("BASE_URL") %>/js/bootstrap.min.js"></script>


<!-- Footer -->
<%@include file="footer.jsp"%>

