<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Collapsible tree menu with accordion - Bootsnipp.com</title>
		<meta content="width=device-width, initial-scale=1" name="viewport">
		<%
			String contextPath = request.getContextPath();
		%>
		
		<link href="<%=contextPath%>/resources/util/bootstrap/css/bootstrap.css">
		
<!-- 		
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css">
 -->		
		<style type="text/css">
			.menu .accordion-heading {
				position: relative;
			}
			
			.menu .accordion-heading .edit {
				position: absolute;
				top: 8px;
				right: 30px;
			}
			
			.menu .area {
				border-left: 4px solid #f38787;
			}
			
			.menu .equipamento {
				border-left: 4px solid #65c465;
			}
			
			.menu .ponto {
				border-left: 4px solid #98b3fa;
			}
			
			.menu .collapse.in {
				overflow: visible;
			}
		</style>
		<script type="text/javascript" src="<%=contextPath%>/resources/util/jquery/jquery-2.1.0.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/resources/util/bootstrap/js/bootstrap.js"></script> 
		<script type="text/javascript">
			window.alert = function() {
			};
			$(document).ready(function() {
				var iframe_height = parseInt($('html').height());
				window.parent.postMessage(iframe_height, 'http://bootsnipp.com');
			});
		</script>
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
									<a href="#area1" data-toggle="collapse" class="accordion-toggle">Área
										#1</a>
	
									<div class="dropdown edit">
										<a style="font-style: italic" href="#" data-toggle="dropdown"
											class="dropdown-toggle icon-pencil"></a>
	
										<ul class="dropdown-menu">
											<!-- Adicionar equipamento -->
	
											<li><a href="../equipamento/add.php"><i
													class="icon-plus"></i> Adicionar equipamento</a></li>
	
											<li class="divider"></li>
											<!-- Editar área -->
	
											<li><a href="../area/edit.php"><i class="icon-pencil"></i>
													Editar área</a></li>
	
											<li class="divider"></li>
											<!-- Remover área -->
	
											<li><a href="#remove" class="danger"><i
													class="icon-remove"></i> Remover área</a></li>
										</ul>
									</div>
								</div>
								<!-- /Área -->
	
								<div id="area1" class="accordion-body in collapse"
									style="height: auto;">
									<div class="accordion-inner">
										<div id="equipamento1" class="accordion">
											<!-- Equipamentos -->
	
											<div class="accordion-group">
												<div class="accordion-heading equipamento">
													<a href="#ponto1-1" data-toggle="collapse"
														data-parent="#equipamento1-1" class="accordion-toggle">Equipamento
														#1-1</a>
	
													<div class="dropdown edit">
														<a style="font-style: italic" href="#"
															data-toggle="dropdown" class="dropdown-toggle icon-pencil"></a>
	
														<ul class="dropdown-menu">
															<!-- Adicionar ponto -->
	
															<li><a href="../ponto/add.php"><i
																	class="icon-plus"> </i> Adicionar ponto</a></li>
	
															<li class="divider"></li>
															<!-- Editar equipamento -->
	
															<li><a href="../equipamento/edit.php"><i
																	class="icon-pencil"></i> Editar equipamento</a></li>
	
															<li class="divider"></li>
															<!-- Remover equipamento -->
	
															<li><a href="#remove" class="danger"><i
																	class="icon-remove"></i> Remover equipamento</a></li>
														</ul>
													</div>
												</div>
												<!-- Pontos -->
	
												<div id="ponto1-1" class="accordion-body collapse">
													<div class="accordion-inner">
														<div id="servico1" class="accordion">
															<div class="accordion-group">
																<div class="accordion-heading ponto">
																	<a href="#servico1-1-1" data-toggle="collapse"
																		data-parent="#servico1-1-1" class="accordion-toggle">Ponto
																		#1-1-1</a>
	
																	<div class="dropdown edit">
																		<a style="font-style: italic" href="#"
																			data-toggle="dropdown"
																			class="dropdown-toggle icon-pencil"></a>
	
																		<ul class="dropdown-menu">
																			<!-- Adicionar servico -->
	
																			<li><a href="../servico/add.php"> <i
																					class="icon-plus"></i> Adicionar servico
																			</a></li>
	
																			<li class="divider"></li>
																			<!-- Editar ponto -->
	
																			<li><a href="../ponto/edit.php"> <i
																					class="icon-pencil"></i> Editar ponto
																			</a></li>
	
																			<li class="divider"></li>
																			<!-- Remover ponto -->
	
																			<li><a href="#remove" class="danger"><i
																					class="icon-remove"></i> Remover ponto</a></li>
																		</ul>
																	</div>
																</div>
																<!-- Serviços -->
	
																<div id="servico1-1-1" class="accordion-body collapse">
																	<div class="accordion-inner">
																		<ul class="nav nav-list">
																			<li><a href="#"><i class="icon-chevron-right">
																				</i> Serviço #1-1-1-1</a></li>
	
																			<li><a href="#"><i class="icon-chevron-right">
																				</i> Serviço #1-1-1-2</a></li>
	
																			<li><a href="#"><i class="icon-chevron-right">
																				</i> Serviço #1-1-1-3</a></li>
																		</ul>
																	</div>
																</div>
																<!-- /Serviços -->
															</div>
														</div>
													</div>
												</div>
												<!-- /Pontos -->
											</div>
											<!-- /Equipamentos -->
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /accordion -->
					</div>
				</div>
			</div>
		</div>
	</body>
</html>