<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body>
	<!-- Pre-loader start -->
	<jsp:include page="loader.jsp"></jsp:include>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="navmenu.jsp"></jsp:include>

					<div class="pcoded-content">
						<!-- Page-header start -->

						<jsp:include page="header.jsp"></jsp:include>

						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<!-- Basic Form Inputs card start -->
												<div class="card">
													<div class="card-header">
														<h5>Cadastrar novo usuário</h5>
													</div>
													<div class="card-block">
														<h4 class="sub-title">Preencha as informações
															necessárias</h4>

														<form>
															<div class="form-group row">
																<div class="col-sm-6">
																	<input type="text" name="id" class="form-control"
																		placeholder="Id" readonly>
																</div>
																<div class="col-sm-6">
																	<input type="text" name="nome" class="form-control"
																		placeholder="Nome">
																</div>
															</div>
															<div class="form-group row">
																<div class="col-sm-6">
																	<input type="password" name="senha"
																		class="form-control" placeholder="Senha">
																</div>
																<div class="col-sm-6">
																	<input type="email" name="email" class="form-control"
																		placeholder="Email">
																</div>
															</div>
															<button class="btn btn-primary waves-effect waves-light">Enviar</button>
														</form>
													</div>
												</div>
											</div>
										</div>
										<!--  project and team member end -->
									</div>
									<!-- Page-body end -->
								</div>
								<div id="styleSelector"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="jsimports.jsp"></jsp:include>
</body>

</html>
