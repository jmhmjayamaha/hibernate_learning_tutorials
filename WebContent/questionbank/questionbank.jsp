<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  	#content {
  		width : 1000px;
  		text-align : left;
  	}
  	
  </style>
  <script type="text/javascript">
  	function validate() {
  		
  	}
  </script>
<title>question bank</title>
</head>
<body>
<div align=center>
	<div id="content">
	<form action="add-questionbank.jsp" method="post">
		<div class="form-group">
			<label for="question">question :</label> <input type="text"
				class="form-control" id="qName" name="qName" required>
		</div>
		<label for="one">There should be 4 answer:</label>
		<div class="form-group">
			<label for="one">one:</label> <input type="text"
				class="form-control" id="one" name="one" required>
		</div>
		<div class="form-group">
			<label for="two">two:</label> <input type="text"
				class="form-control" id="two" name="two" required>
		</div>
		<div class="form-group">
			<label for="three">three:</label> <input type="text"
				class="form-control" id="three" name="three" required>
		</div>
		<div class="form-group">
			<label for="four">four:</label> <input type="text"
				class="form-control" id="four" name="four" required>
		</div>
		<button type="submit" class="btn btn-default">Submit</button>
	</form>
	<a href="view-paper.jsp" /> go to question list</a>
	</div>
</div>	
</body>
</html>