<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>spit-fire | EDU | tree</title>
		<%
			String contextPath = request.getContextPath();
		%>
		
		<link rel="stylesheet" href="<%=contextPath%>/resources/util/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" href="<%=contextPath%>/resources/util/bootstrap/css/bootstrap-theme.css">
		<link rel="stylesheet" href="<%=contextPath%>/resources/core/css/tree.css">
		
		<script type="text/javascript" src="<%=contextPath%>/resources/util/jquery/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/resources/util/bootstrap/js/bootstrap.js"></script> 
		<script type="text/javascript" src="<%=contextPath%>/resources/core/js/tree.js"></script> 
		
	</head>
	<body>
		<div class="container">
			<br>
			<br>
	  		<div class="row">
				<div class="col-lg-6">
			    	<div class="input-group">
			      		<input id="addItemTxt" type="text" class="form-control">
			      		<span class="input-group-btn">
			        		<button id="addItemBtn"  class="btn btn-default" type="button">Add Item</button>
			      		</span>
			    	</div><!-- /input-group -->
			  	</div><!-- /.col-lg-6 -->
	  		</div>
	  		<br>
			<div class="tree well">
			    <ul id="itemList">
			        <li>
			            <span>Item.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			            <ul>
			                <li>
			                	<span>Item.1.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                    <ul>
			                        <li>
				                        <span>Item.1.1.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                	<span>Item.1.2</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                    <ul>
			                        <li>
				                        <span>Item.1.2.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                        </li>
			                        <li>
			                        	<span>Item.1.2.2</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                            <ul>
			                                <li>
				                                <span>Item.1.2.2.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
					                            <ul>
					                                <li>
						                                <span>Item.1.2.2.1.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
					                                </li>
					                                <li>
						                                <span>Item.1.2.2.1.2</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
					                                </li>
					                             </ul>
			                                </li>
			                                <li>
				                                <span>Item.1.2.2.2</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                                </li>
			                                <li>
				                                <span>Item.1.2.2.3</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                                </li>
			                            </ul>
			                        </li>
			                        <li>
				                        <span>Item.1.2.3</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			                        </li>
			                    </ul>
			                </li>
			            </ul>
			        </li>
			        <li>
			            <span>Item.2</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
			            <ul>
			                <li>
			                	<span>Item.2.1</span> &nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i class="glyphicon glyphicon-plus"></i>
					        </li>
					    </ul>
			        </li>
			    </ul>
			</div>		
		</div>
	</body>
</html>