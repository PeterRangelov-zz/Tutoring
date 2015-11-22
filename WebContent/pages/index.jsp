<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0-beta.2/angular.min.js"></script>
		<script src="/pages/root.js"></script>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
		<link href=//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css rel="stylesheet">
		<title>Tutoring</title>
	</head>
	
	<body ng-app="root" >
		<div class="container" ng-controller="index">
				<h3 class='text-success'>Java tutoring in Columbia, MD</h3>
				<hr>

			<div class=row>
				<div class="col-xs-12">


				<form:form method="post" action="/new" modelAttribute="form">

					<div class="form-group col-sm-6">
						<label for="name">Name</label>
						<form:input path="name" ng-model="name" class="form-control"/>
					</div>

					<div class="form-group col-sm-6">
						<label for="email">Email</label>
						<form:input path="email" ng-model="email" class="form-control"/>
					</div>

					<div class="form-group col-sm-6">
						<label for="first">Preferred time</label>
						<form:input path="first" ng-model="first" class="form-control"/>
					</div>

					<div class="form-group col-sm-6">
						<label for="second">Alternate time</label>
						<form:input path="second" ng-model="second" class="form-control"/>
					</div>


					<div class="form-group col-sm-12">
						<label for="hours">How many hours would you like to schedule?</label>
						<select ng-model="hours" id="hours">
							<option value="1">1 hour</option>
							<option value="2">2 hours</option>
							<option value="3">3 hours</option>
							<option value="4">4 hours</option>
						</select>
					</div>



					<br>
					<div class="form-group col-sm-12">
						<label>
							<form:radiobutton path="payment" value="cash" ng-model="payment"/> Pay with cash
						</label>

						<br>

						<label>
							<form:radiobutton path="payment" value="paypal" ng-model="payment"/> Pay with paypal
						</label>
					</div>

					<br>
					<div class="form-group col-sm-12">
						<div ng-if="payment=='cash'">
							<p>Cash div</p>
						</div>
						<div ng-if="payment=='paypal'">
							<p>Paypal div</p>
						</div>
					</div>
					<br>
					<hr>
					Total: $ {{total}}.00
					<br><br><br>
					<button type="submit" class="btn btn-success">Submit</button>

				</form:form>
				</div>



				<%--<form method="post" action="/submit" enctype="multipart/form-data">--%>
					<%--<div class="col-xs-6">--%>
						<%--<label>Your name (required)</label>--%>
						<%--<form:errors path="form.name" cssClass="text-danger"/>--%>
						<%--<input id="name" name=name class=form-control maxlength=30 value=${form.name} >--%>
					<%--</div>--%>
					<%----%>
					<%--<div class="col-xs-6">--%>
						<%--<label>Unit (required)</label>--%>
						<%--<form:errors path="form.unit" cssClass="text-danger"/>--%>
						<%--<input id="unit" name=unit class=form-control maxlength=10 value=${form.unit}>--%>
					<%--</div>--%>
					<%----%>
					<%----%>
					<%--<div class="col-xs-12">--%>
						<%--<label>Subject (required)</label>--%>
						<%--<form:errors path="form.subject" cssClass="text-danger"/>--%>
						<%--<input name=subject class=form-control maxlength=30 value=${form.subject}>--%>
					<%--</div>--%>
					<%----%>
					<%--<div class="col-xs-12">--%>
						<%--<label>Please provide details (required)</label>--%>
						<%--<form:errors path="form.text" cssClass="text-danger"/>--%>
						<%--<textarea class=form-control rows="7" cols="50" name=text maxlength=1000>${form.text}</textarea>--%>
					<%--</div>--%>
					<%----%>
					<%--<div class="col-xs-12 ">--%>
						<%--<label>Upload photo</label>--%>
						<%--<form:errors path="form.file"></form:errors>--%>
						<%--<input type="file" name="file">--%>
					<%--</div>--%>
					<%----%>
					<%--<div class="col-xs-12 ">--%>
						<%--<br>--%>
						<%--<button type=submit class="btn btn-success">Submit request</button>--%>
					<%--</div>--%>
				<%--</form>--%>










			</div>
		</div>
			
		
	</body>
</html>