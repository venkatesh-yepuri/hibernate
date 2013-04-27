<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="public/javascript/countries2.js"></script>
<script type="text/javascript"
	src="public/javascript/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="public/javascript/zebra_datepicker.js"></script>
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/style.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/zebra_datepicker.css" media="screen" />
<link rel="stylesheet" type="text/css"
	href="public/stylesheets/zebra_datepicker_metallic.css" media="screen" />
</head>
<body>
	<!-- <script>
		jQuery(document).ready(function() {

			$("#datepicker").Zebra_DatePicker();
			var $zdp = $('#datepicker').data('Zebra_DatePicker');

		});
	</script>
 -->
	<%@ include file="header.jsp"%>

	<div id="site-wrapper">
		<div style="width: 916px; height: 530px;">
			<form action="reqprocess" method="post">
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="firstname" style="float: right; margin-top: 9px;">Firstname:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="firstname" id="firstname" class="text"
							size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="lastname" style="float: right; margin-top: 9px;">Lastname:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="lastname" id="lastname" class="text"
							size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="email" style="float: right; margin-top: 9px;">Email:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="email" id="email" class="text" size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="desiredusername"
							style="float: right; margin-top: 9px;">Desired username:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="desiredusername" id="desiredusername"
							class="text" size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="password" style="float: right; margin-top: 9px;">Password:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="password" id="password" class="text"
							size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="confpassword" style="float: right; margin-top: 9px;">Conf
							password:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="confpassword" id="confpassword"
							class="text" size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="address" style="float: right; margin-top: 9px;">Address:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="address" id="address" class="text"
							size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="country" style="float: right; margin-top: 9px;">Select
							Country:</label>
					</div>
					<div
						style="width: 400px; float: left; height: 30px; margin-left: 10px;">
						<select onchange="print_state('state',this.selectedIndex);"
							id="country" name="country" style="margin-left: 5px;"></select>
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="country" style="float: right; margin-top: 9px;">City/District/State:</label>

					</div>
					<div
						style="width: 400px; float: left; height: 30px; margin-left: 15px;">
						<select name="state" id="state"></select>

						<script language="javascript">
							print_country("country");
						</script>
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="date" style="float: right; margin-top: 9px;">Date:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="date" id="datepicker" class="text" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="mobilenumber" style="float: right; margin-top: 9px;">Mobile
							number:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="mobilenumber" id="mobilenumber"
							class="text" size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="faxnumber" style="float: right; margin-top: 9px;">Faxno:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<input type="text" name="faxnumber" id="faxnumber" class="text" size="50" />
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="mobilenumber" style="float: right; margin-top: 9px;">Qualification:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<select name="qualification" id="qualification" class="text">
							<option>BTech</option>
							<option>B.E</option>
							<option>MCA</option>
							<option>MTech.</option>
						</select>
					</div>
				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="mobilenumber" style="float: right; margin-top: 9px;">Role:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<select name="role" id="role" class="text">
							<option value="student">student</option>
							<option value="employee">employee</option>
						</select>
					</div>

				</div>
				<div style="width: 916px; height: 30px;">
					<div style="width: 400px; float: left; height: 30px;">
						<label for="skillsummary"
							style="float: right; margin-top: 9px; margin-top: 20px;">Skill
							Summary:</label>
					</div>
					<div style="width: 500px; float: right; height: 30px;">
						<textarea name="skillsummary" id="skillsummary"
							style="border: solid 1px black;" class="text"></textarea>
					</div>
				</div>

				<div style="width: 916px; height: 30px; margin-top: 30px;">
					<div style="width: 500px; float: right; height: 30px;">
						<input type="submit" name="submit" id="submit" value="Submit"
							class="text" size="50" /> <input type="reset" name="reset"
							id="reset" value="Reset" class="text" size="50" />
					</div>
				</div>

			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>