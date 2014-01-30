<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>speed-fire | EDU | tree</title>
		<%
			String contextPath = request.getContextPath();
		%>
		
		<link href="<%=contextPath%>/resources/util/bootstrap/css/bootstrap.css">
		<link href="<%=contextPath%>/resources/util/bootstrap/css/bootstrap-theme.css">
		<style type="text/css">
			.menu .accordion-heading {  position: relative; }
			.menu .accordion-heading .edit {
			    position: absolute;
			    top: 8px;
			    right: 30px; 
			}
			.menu .area { border-left: 4px solid #f38787; }
			.menu .equipamento { border-left: 4px solid #65c465; }
			.menu .ponto { border-left: 4px solid #98b3fa; }
			.menu .collapse.in { overflow: visible; }		
		</style>
		
		<script type="text/javascript" src="<%=contextPath%>/resources/util/jquery/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/resources/util/bootstrap/js/bootstrap.js"></script> 
		
	</head>
	<body>
		<div class="container">
			<div class="row">
				<div class="span12">
		    	    <div class="menu">
		                <div class="accordion">
		                    <!-- Áreas -->
		                    <div class="accordion-group">
		                        <!-- Área -->
		                        <div class="accordion-heading area">
		                            <a class="accordion-toggle" data-toggle="collapse" href=
		                            "#area1">Área #1</a>
		            
		                            <div class="dropdown edit">
		                                <a class="dropdown-toggle icon-pencil" data-toggle=
		                                "dropdown" href="#" style="font-style: italic"></a>
		            
		                                <ul class="dropdown-menu">
		                                    <!-- Adicionar equipamento -->
		            
		                                    <li>
		                                        <a href="../equipamento/add.php"><i class=
		                                        "icon-plus"></i> Adicionar equipamento</a>
		                                    </li>
		            
		                                    <li class="divider"></li><!-- Editar área -->
		            
		                                    <li>
		                                        <a href="../area/edit.php"><i class=
		                                        "icon-pencil"></i> Editar área</a>
		                                    </li>
		            
		                                    <li class="divider"></li><!-- Remover área -->
		            
		                                    <li>
		                                        <a class="danger" href="#remove"><i class=
		                                        "icon-remove"></i> Remover área</a>
		                                    </li>
		                                </ul>
		                            </div>
		                        </div><!-- /Área -->
		            
		                        <div class="accordion-body collapse" id="area1">
		                            <div class="accordion-inner">
		                                <div class="accordion" id="equipamento1">
		                                    <!-- Equipamentos -->
		            
		                                    <div class="accordion-group">
		                                        <div class="accordion-heading equipamento">
		                                            <a class="accordion-toggle" data-parent=
		                                            "#equipamento1-1" data-toggle="collapse" href=
		                                            "#ponto1-1">Equipamento #1-1</a>
		            
		                                            <div class="dropdown edit">
		                                                <a class="dropdown-toggle icon-pencil"
		                                                data-toggle="dropdown" href="#" style=
		                                                "font-style: italic"></a>
		            
		                                                <ul class="dropdown-menu">
		                                                    <!-- Adicionar ponto -->
		            
		                                                    <li>
		                                                        <a href=
		                                                        "../ponto/add.php"><i class="icon-plus">
		                                                        </i> Adicionar ponto</a>
		                                                    </li>
		            
		                                                    <li class="divider"></li>
		                                                    <!-- Editar equipamento -->
		            
		                                                    <li>
		                                                        <a href=
		                                                        "../equipamento/edit.php"><i class=
		                                                        "icon-pencil"></i> Editar
		                                                        equipamento</a>
		                                                    </li>
		            
		                                                    <li class="divider"></li>
		                                                    <!-- Remover equipamento -->
		            
		                                                    <li>
		                                                        <a class="danger" href=
		                                                        "#remove"><i class=
		                                                        "icon-remove"></i> Remover
		                                                        equipamento</a>
		                                                    </li>
		                                                </ul>
		                                            </div>
		                                        </div><!-- Pontos -->
		            
		                                        <div class="accordion-body collapse" id="ponto1-1">
		                                            <div class="accordion-inner">
		                                                <div class="accordion" id="servico1">
		                                                    <div class="accordion-group">
		                                                        <div class=
		                                                        "accordion-heading ponto">
		                                                            <a class="accordion-toggle"
		                                                            data-parent="#servico1-1-1"
		                                                            data-toggle="collapse" href=
		                                                            "#servico1-1-1">Ponto
		                                                            #1-1-1</a>
		            
		                                                            <div class="dropdown edit">
		                                                                <a class=
		                                                                "dropdown-toggle icon-pencil"
		                                                                data-toggle="dropdown"
		                                                                href="#" style=
		                                                                "font-style: italic"></a>
		            
		                                                                <ul class="dropdown-menu">
		                                                                    <!-- Adicionar servico -->
		            
		                                                                    <li>
		                                                                        <a href=
		                                                                        "../servico/add.php">
		                                                                        <i class=
		                                                                        "icon-plus"></i>
		                                                                        Adicionar
		                                                                        servico</a>
		                                                                    </li>
		            
		                                                                    <li class="divider">
		                                                                    </li><!-- Editar ponto -->
		            
		                                                                    <li>
		                                                                        <a href=
		                                                                        "../ponto/edit.php">
		                                                                        <i class=
		                                                                        "icon-pencil"></i>
		                                                                        Editar ponto</a>
		                                                                    </li>
		            
		                                                                    <li class="divider">
		                                                                    </li><!-- Remover ponto -->
		            
		                                                                    <li>
		                                                                        <a class="danger"
		                                                                        href=
		                                                                        "#remove"><i class=
		                                                                        "icon-remove"></i>
		                                                                        Remover ponto</a>
		                                                                    </li>
		                                                                </ul>
		                                                            </div>
		                                                        </div><!-- Serviços -->
		            
		                                                        <div class=
		                                                        "accordion-body collapse" id=
		                                                        "servico1-1-1">
		                                                            <div class="accordion-inner">
		                                                                <ul class="nav nav-list">
		                                                                    <li>
		                                                                        <a href=
		                                                                        "#"><i class=
		                                                                        "icon-chevron-right">
		                                                                        </i> Serviço
		                                                                        #1-1-1-1</a>
		                                                                    </li>
		            
		                                                                    <li>
		                                                                        <a href=
		                                                                        "#"><i class=
		                                                                        "icon-chevron-right">
		                                                                        </i> Serviço
		                                                                        #1-1-1-2</a>
		                                                                    </li>
		            
		                                                                    <li>
		                                                                        <a href=
		                                                                        "#"><i class=
		                                                                        "icon-chevron-right">
		                                                                        </i> Serviço
		                                                                        #1-1-1-3</a>
		                                                                    </li>
		                                                                </ul>
		                                                            </div>
		                                                        </div><!-- /Serviços -->
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div><!-- /Pontos -->
		                                    </div><!-- /Equipamentos -->
		                                </div>
		                            </div>
		                        </div>
		                    </div>
		                </div><!-- /accordion -->
		            </div> 
				</div>
			</div>
		</div>
	</body>
</html>