<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="header.jsp" %>

<div class="container p-4">


	<div class="d-flex justify-content-between align-items-end mb-3">
		<h1 id="title">Ajouter un Contact</h1>
		<div>
			<button class="btn btn-dark">
				<a href="${pageContext.request.contextPath}/afficherContacts" class="text-reset text-decoration-none text-truncate">
				<i class="fas fa-list"></i> Afficher Mes Contacts
				</a>
			</button>
		</div>
	</div>
		<div>

			<c:if test="${infoMsg!=null}">
				<div class="alert alert-success" role="alert">${infoMsg}</div>
			</c:if>
			<c:if test="${errorMsg!=null}">
				<div class="alert alert-danger" role="alert">${errorMsg}</div>
			</c:if>



			<f:form action="ajoutContact" method="POST" modelAttribute="contactModel">

				<div class="form-group row mb-3">
						<label class="col-sm-2 col-form-label">Nom</label>
					<div class="col-sm-10">
						<f:input path="nom" type="text" class="form-control"
							placeholder="Nom" />
						<f:errors path="nom" class="text-danger" />
					</div>
				</div>
				<div class="form-group row mb-3">
						<label class="col-sm-2 col-form-label">Prenom</label>
					<div class="col-sm-10">
						<f:input path="prenom" type="text" class="form-control"
								 placeholder="Prenom" />
						<f:errors path="prenom" class="text-danger" />
					</div>
				</div>


				<div class="form-group row mb-3">
					<label class="col-sm-2 col-form-label">Numeros Telephone</label>
					<div class="col-sm-10 d-flex">
						<div class="col me-2">
							<f:input path="telephonePeronnel" type="text" class="form-control" placeholder="Telephone Peronnel" />
							<f:errors path="telephonePeronnel" class="text-danger" />
						</div>
						<div class="col ms-2">
							<f:input path="telephoneProfessionel" type="text" class="form-control" placeholder="Telephone Professionel" />
							<f:errors path="telephoneProfessionel" class="text-danger" />
						</div>
					</div>
				</div>

				<div class="form-group row mb-3">
					<label class="col-sm-2 col-form-label">Emails</label>
					<div class="col-sm-10 d-flex">
						<div class="col me-2">
							<f:input path="emailPeronnel" class="form-control" placeholder="Email Peronnel" />
							<f:errors path="emailPeronnel" class="text-danger" />
						</div>
						<div class="col ms-2">
							<f:input path="emailProfessionel" class="form-control" placeholder="Email Professionel" />
							<f:errors path="emailProfessionel" class="text-danger" />
						</div>
					</div>
				</div>



				<div class="form-group row mb-3">
					<label class="col-sm-2 col-form-label">Adresse</label>
					<div class="col-sm-10">
						<f:input path="adresse" type="text" class="form-control"
							placeholder="ex: Morocco" />
						<f:errors path="adresse" class="text-danger" />
					</div>
				</div>

				<div class="form-group row mb-3">
					<label class="col-sm-2 col-form-label">Genre</label>
					<div class="col-sm-10">
						<label class="list-group-item">
							<input class="form-check-input me-1" type="radio" name="genre" id="femelleRadio" value="femelle">
							Female
						</label>
						<label class="list-group-item">
							<input class="form-check-input me-1" type="radio" name="genre" id="maleRadio"  value="male">
							Male
						</label>
						<f:errors path="genre" class="text-danger" />
					</div>

				</div>
			<div class="row">
				<div class="col-sm-10 offset-sm-2 d-flex justify-content-end">
					<div>
					<button type="submit" class="btn btn-primary"><i class="fa fa-user-plus text-light"></i> Ajouter un Contact</button>
					<button type="reset" class="btn btn-outline-primary">
						<i class="fas fa-undo"></i> Réinitialiser
					</button>
					</div>
				</div>
			</div>

			</f:form>
		</div>


	</div>
</body>
</html>