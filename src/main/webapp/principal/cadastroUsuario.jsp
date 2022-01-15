<%@page import="model.ModelLogin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>

<body>
	<jsp:include page="loader.jsp"></jsp:include>
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">

			<jsp:include page="navbar.jsp"></jsp:include>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">

					<jsp:include page="navmenu.jsp"></jsp:include>

					<div class="pcoded-content">

						<jsp:include page="header.jsp"></jsp:include>

						<div class="pcoded-inner-content">
							<div class="main-body">
								<div class="page-wrapper">
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-header">
														<h5>Cadastrar novo usuário</h5>
													</div>
													<div class="card-block">
														<h4 class="sub-title">Preencha as informações
															necessárias</h4>

														<form action="<%= request.getContextPath() %>/ServletUsuarioController" method="POST">
															<div class="form-group row">
																<div class="col-sm-4">
																	<input type="text" name="id" class="form-control" value="${modelLogin.id}"
																		placeholder="Id" readonly>
																</div>
																<div class="col-sm-4">
																	<input type="text" name="login" value="${modelLogin.login}" class="form-control"
																		placeholder="Login" required>
																</div>
																<div class="col-sm-4">
																	<input type="text" name="nome" value="${modelLogin.nome}" class="form-control"
																		placeholder="Nome" required>
																</div>
															</div>
															<div class="form-group row">
																<div class="col-sm-6">
																	<input type="password" name="senha" value="${modelLogin.password}"
																		class="form-control" placeholder="Senha" required>
																</div>
																<div class="col-sm-6">
																	<input type="email" name="email" class="form-control" value="${modelLogin.email}"
																		placeholder="Email" required>
																</div>
															</div>
															<button type="submit" class="btn btn-primary waves-effect waves-light">Novo</button>
															<button type="submit" class="btn btn-secondary waves-effect waves-light">Salvar</button>
															<button type="submit" class="btn btn-danger waves-effect waves-light">Excluir</button>
														</form>
														<p>${msg}</p>
													</div>
												</div>
											</div>
										</div>
									</div>
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
