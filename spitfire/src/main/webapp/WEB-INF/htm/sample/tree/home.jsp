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
		<link rel="stylesheet" href="<%=contextPath%>/resources/core/css/tree.css">
		
		<script type="text/javascript" src="<%=contextPath%>/resources/util/jquery/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/resources/util/bootstrap/js/bootstrap.js"></script> 
		<script type="text/javascript" src="<%=contextPath%>/resources/core/js/tree.js"></script> 
		
	</head>
	<body>
		<div class="container">
			<br>
			<br>
	  		<div id="createItem" class="row">
				<div class="col-lg-6">
			    	<div class="input-group">
			      		<input id="itemVal" type="text" class="form-control">
			      		<span class="input-group-btn">
			        		<button id="addItemBtn"  class="btn btn-default" type="button">Add Item</button>
			      		</span>
			    	</div><!-- /input-group -->
			  	</div><!-- /.col-lg-6 -->
	  		</div>
			<!-- Modal -->
			<div class="modal fade" id="createItemModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			  <div class="modal-dialog">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			        <h4 class="modal-title" id="">Add Item</h4>
			      </div>
			      <div class="modal-body">
			      		<input id="modalItemVal" type="text" class="form-control">
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			        <button id="modalAddItemBtn" type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>	  		
			
	  		<br>
	  				
			<div class="tree well">
			    <ul id="itemHolder">
			        <li>
			            <span> Item</span>
			            <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
			            <ul>
			                <li>
			                	<span> Item</span> 
			                	<label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
			                    <ul>
			                        <li>
				                        <span> Item</span> 
				                        <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
			                        </li>
			                    </ul>
			                </li>
			                <li>
			                	<span> Item</span> 
			                	<label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
			                    <ul>
			                        <li>
				                        <span> Item</span> 
				                        <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
				                        <ul></ul>
			                        </li>
			                        <li>
			                        	<span> Item</span> 
			                        	<label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
			                            <ul>
			                                <li>
				                                <span> Item</span> 
				                                <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
					                            <ul>
					                                <li>
						                                <span> Item</span> 
						                                <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
						                                <ul></ul>
					                                </li>
					                                <li>
						                                <span> Item</span> 
						                                <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
						                                <ul></ul>
					                                </li>
					                             </ul>
			                                </li>
			                                <li>
				                                <span> Item</span> 
				                                <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
				                                <ul></ul>
			                                </li>
			                                <li>
				                                <span> Item</span> 
				                                <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
				                                <ul></ul>
			                                </li>
			                            </ul>
			                        </li>
			                        <li>
				                        <span> Item</span> 
				                        <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
				                        <ul></ul>
			                        </li>
			                    </ul>
			                </li>
			            </ul>
			        </li>
			        <li>
			            <span> Item</span> 
			            <label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
			            <ul>
			                <li>
			                	<span> Item</span> 
			                	<label>&nbsp<i class="glyphicon glyphicon-remove"></i>&nbsp<i id="addOne" class="glyphicon glyphicon-plus" ></i></label>
					        </li>
					    </ul>
			        </li>
			    </ul>
			</div>
		</div>
	</body>
</html>