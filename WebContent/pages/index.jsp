<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="//cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.4.5/jquery.datetimepicker.min.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
		<link href=//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css rel="stylesheet">

		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.6/moment.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.0-beta.2/angular.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.4.5/jquery.datetimepicker.min.js"></script>
		<script src="/pages/root.js"></script>
		<%--<script src="//livejs.com/live.js"></script>--%>



		<title>Tutoring</title>
	</head>
	
	<body ng-app="root" >
		<div class="container" ng-controller="index">
				<h2 class='text-success'>Private Java tutoring & homework help for UMUC students</h2>
				<hr>

			<div class=row>




				<%--<input type="text" name="datetime1" id="datetime1" placeholder=""/>--%>






				<div class="col-xs-12">
					Tutoring sessions are offered Saturdays and Sundays 1pm - 5pm at the Library: <br>
					<a href="https://www.google.com/maps/place/Howard+County+Library+System,+HCLS+East+Columbia+Branch/@39.1903163,-76.8489411,17z/data=!3m1!4b1!4m2!3m1!1s0x89b7de351a6b100b:0x5d40cb70949581ff" target="_blank">Howard County Library System, East Columbia Branch</a> <br>
					6600 Cradlerock Way, Columbia, MD 21045
					<h3>Please fill out this form and I'll be in touch</h3>

				<form:form method="post" action="/submit" modelAttribute="form">
					<div class="form-group col-sm-12">
						<label for="name">Your name</label>
						<form:errors path="name" cssClass="text-danger"/>
						<form:input path="name" class="form-control" value="${form.name}"/>
					</div>

					<div class="form-group col-sm-12">
						<label for="email">Your email</label>
						<form:errors path="email" cssClass="text-danger"/>
						<form:input path="email" class="form-control" value="${form.email}"/>
					</div>

					<div class="form-group col-sm-12">
						<label for="datetime1">Preferred time</label>
						<form:errors path="first" cssClass="text-danger"/>
						<form:input path="first" class="form-control" id="datetime1" value="${form.first}"/>
					</div>

					<div class="form-group col-sm-12">
						<label for="datetime2">Alternate time</label>
						<form:input path="second" class="form-control" id="datetime2" value="${form.second}"/>
					</div>


					<div class="form-group col-sm-12">
						<label for="hours">How many hours would you like to schedule?</label>
						<form:select path="hours" id="hours" value="${form.hours}" >
							<form:option value="1">1 hour</form:option>
							<form:option value="2">2 hours</form:option>
							<form:option value="3">3 hours</form:option>
							<form:option value="4">4 hours</form:option>
						</form:select>

						<br>

						<p id = "totalP"></p>
					</div>


					<div class="form-group col-sm-12">
						<label>
							<form:radiobutton path="payment" value="cash"  /> I'm paying cash
						</label>

						<br>

						<label>
							<form:radiobutton path="payment" value="paypal"/> I'm paying with paypal
						</label>
					</div>



					<div class="form-group col-sm-12">
						<button type="submit" class="btn btn-lg btn-success">Submit</button>
					</div>
				</form:form>
				</div>

					<div>
						<h3>About Peter:</h3>
						Peter is a Lead Java Developer at a Big Four consulting firm. He holds several industry certifications: CompTIA Network+, Security+, Cloud+, CDIA+, CEH.
						Peter obtained his Bachelor's and Master's degrees in Computer Science from UMBC. <b>Excellent references available upon request!</b>
						<br>
						<a href="https://www.linkedin.com/in/peterrangelov" target="_blank">Peter's LinkedIn</a>
						<br>
						<a href="https://github.com/PeterRangelov" target="_blank">Peter's Github</a>

						<br>

						<br>



						This application is written using Spring MVC, Java 8, Twitter bootstrap, Angular, HTML, JQuery. Font Awesome.<br>
						Check out the source code <a href="https://github.com/PeterRangelov/Tutoring" target="_blank">here</a>.

					</div>


			</div>
		</div>

			
		
	</body>
</html>