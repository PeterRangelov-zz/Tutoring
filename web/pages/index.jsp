<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
	<head>
		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
		<link href=//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css rel="stylesheet">
		<title>Request maintenance</title>
	</head>
	
	<body>
		<div class="container">
				<h3 class='text-success'>Place a maintenance request</h3>
				<hr>
			<div class=row>
				<form method="post" action="/submit" enctype="multipart/form-data">
					<div class="col-xs-6">
						<label>Your name (required)</label>
						<form:errors path="form.name" cssClass="text-danger"/>
						<input id="name" name=name class=form-control maxlength=30 value=${form.name} >
					</div>
					
					<div class="col-xs-6">
						<label>Unit (required)</label>
						<form:errors path="form.unit" cssClass="text-danger"/>
						<input id="unit" name=unit class=form-control maxlength=10 value=${form.unit}>
					</div>
					
					
					<div class="col-xs-12">
						<label>Subject (required)</label>
						<form:errors path="form.subject" cssClass="text-danger"/>
						<input name=subject class=form-control maxlength=30 value=${form.subject}>
					</div>
					
					<div class="col-xs-12">
						<label>Please provide details (required)</label>
						<form:errors path="form.text" cssClass="text-danger"/>
						<textarea class=form-control rows="7" cols="50" name=text maxlength=1000>${form.text}</textarea>
					</div>
					
					<div class="col-xs-12 ">
						<label>Upload photo</label>
						<form:errors path="form.file"></form:errors>
						<input type="file" name="file">
					</div>
					
					<div class="col-xs-12 ">
						<br>
						<button type=submit class="btn btn-success">Submit request</button>
					</div>
				</form>
			</div>
		</div>
			
		
	</body>
</html>