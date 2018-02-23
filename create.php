<!DOCTYPE html>
<html>
<link rel="stylesheet" href="w3.css">
<link rel="stylesheet" href="design.css">
<link rel="stylesheet" href="cs1.css"><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
	input[aria-invalid="true"], 
	textarea[aria-invalid="true"]
	{
		border:1px solid #f00;
		box-shadow:0 0 4px 0 #f00;
	}
	
	form p label
	{
		display:inline-block;
		width:7em;
	}
	form p label abbr
	{
		border:none;
		font-weight:bold;
		color:#f00;
	}

input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}</style><body><div id="whole">
<div id="nav1">
<?php include 'header.php';?>
</div>
<div id="center1">
<div id="pic">

 <h2>Register</h2>
<form action="cr.php" method="POST">
  <div class="container" id="create">
    <b>Firstname</b><br>
	<input type="text" name="firstname" ><br>
	<b>Lastname</b><br>
	<input type="text" name="lastname"><br>
	<b>EmailID</b><br>
	<input name="emailid" id="email" value=""
					required="required" aria-required="true" 
					pattern="^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$"
					title="Your email address"
					type="text" spellcheck="false"/><br>
	<label><b>Username</b></label><br>
    <input type="text" placeholder="Enter Username" name="name" required><br>
    <label><b>Password</b></label><br>
    
	
	<input name="phonenumber" type="password" placeholder="Enter password"required aria-required="true" 
	pattern="(^([a-zA-Z0-9@*#]{8,15})$)" 
	title="Enter your 10 digit mobile number"><br>
    
	
	
	
    <label><b>Repeat Password</b></label><br>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required><br>
	<center> <br><b>Country</b><br>
   
   <center> <select name="country" id="country" onchange="setStates();">
    <option value="India">India</option>
    </select>
        
    
	
   <center><br><b>State</b><br>
   
   <center> <select name="state" id="state" onchange="setCities();">
    <option value="">Please select a State</option>
    </select>
  
    <br><b>City</b><br>
    <select name="city"  id="city">
    <option value="">Please select a city</option>
    </select><br>	
	<b>Organization</b><br>
	<input type="text" name="Organization"><br>
	<b>Phonenumber</b><br>
	<input name="phonenumber" type="text" id="phonenumber" required 
	aria-required="true" 
	pattern="^('/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/')$" 
	title="Enter your 10 digit mobile number" ><br>
    <button type="submit" name="submit" class="signupbtn">Sign Up</button><br>
    </div><?php include("footer.php"); ?></div>


	<script type="text/javascript">
	(function()
	{
				
		//add event construct for modern browsers or IE
		//which fires the callback with a pre-converted target reference
		function addEvent(node, type, callback)
		{
			if(node.addEventListener)
			{
				node.addEventListener(type, function(e)
				{
					callback(e, e.target);
					
				}, false);
			}
			else if(node.attachEvent)
			{
				node.attachEvent('on' + type, function(e)
				{
					callback(e, e.srcElement);
				});
			}
		}
		
		
		//identify whether a field should be validated
		//ie. true if the field is neither readonly nor disabled, 
		//and has either "pattern", "required" or "aria-invalid"
		function shouldBeValidated(field)
		{
			return (
				!(field.getAttribute('readonly') || field.readonly)
				&&
				!(field.getAttribute('disabled') || field.disabled)
				&&
				(
					field.getAttribute('pattern')
					||
					field.getAttribute('required')
				)
			); 
		}
		
		
		//field testing and validation function
		function instantValidation(field)
		{
			//if the field should be validated
			if(shouldBeValidated(field))
			{
				//the field is invalid if: 
				//it's required but the value is empty 
				//it has a pattern but the (non-empty) value doesn't pass
				var invalid = 
				(
					(field.getAttribute('required') && !field.value)
					||
					(
						field.getAttribute('pattern') 
						&& 
						field.value 
						&& 
						!new RegExp(field.getAttribute('pattern')).test(field.value)
					)
				);
		
				//add or remove the attribute is indicated by 
				//the invalid flag and the current attribute state
				if(!invalid && field.getAttribute('aria-invalid'))
				{
					field.removeAttribute('aria-invalid');
				}
				else if(invalid && !field.getAttribute('aria-invalid'))
				{
					field.setAttribute('aria-invalid', 'true');
				}
			}
		}
		
		
		//now bind a delegated change event 
		//== THIS FAILS IN INTERNET EXPLORER <= 8 ==//
		//addEvent(document, 'change', function(e, target) 
		//{ 
		//	instantValidation(target); 
		//});
		
		
		//now bind a change event to each applicable for field
		var fields = [
			document.getElementsByTagName('input'), 
			document.getElementsByTagName('textarea')
			];
		for(var a = fields.length, i = 0; i < a; i ++)
		{
			for(var b = fields[i].length, j = 0; j < b; j ++)
			{
				addEvent(fields[i][j], 'change', function(e, target)
				{
					instantValidation(target);
				});
			}
		}
		
		
	})();
	</script>	
	
<script>
    $(document).ready(function() {
	$('form').on('submit', function (e) {
    var focusSet = false;
    if (!$('#emailid').val()) {
        if ($("#emailid").parent().next(".validation").length == 0) // only add if not added
        {
            $("#emailid").parent().after("<div class='validation' style='color:red;margin-bottom: 20px;'>Please enter valid email address</div>");
        }
        e.preventDefault(); // prevent form from POST to server
        $('#emailid').focus();
        focusSet = true;
    } else {
        $("#emailid").parent().next(".validation").remove(); // remove it
    }
    
}); 
</script>
</form>


<script type="text/javascript">
 
// State lists
var states = new Array();
states['India']=new Array('Tamilnadu','Assam','Manipur','Rajasthan','Megalaya','Bihar','Kashmir',
'Kerala','Gujarat','Lakshadweep','Uttarpradesh','Maharastra','Uttarkhand');
 
// City lists
var cities = new Array();
cities['India'] = new Array();

cities['India']['Tamilnadu'] = new Array('Madurai','Coimbatore');
cities['India']['Assam'] = new Array('Baksa','Barpeta');
cities['India']['Manipur'] = new Array('Chandel','Bishnupur');
cities['India']['Rajasthan'] = new Array('Ajmar','Alwar');
cities['India']['Megalaya']= new Array('Shillong','Cherrapunji');
cities['India']['Bihar']= new Array('Patna','Gaya'); 
cities['India']['Kashmir']= new Array('Bandipora','Anantnag'); 
cities['India']['Kerala']= new Array('Allappuzha','Idukki'); 
cities['India']['Gujarat']= new Array('Ahmedabad','Surat'); 
cities['India']['Lakshadweep']= new Array('Lakshadweep','Kawaratti'); 
cities['India']['Uttarpradesh']= new Array('Rampur','Ghazipur'); 
cities['India']['Maharastra']=new Array('Mumbai','Nagpur');
cities['India']['Uttarkhand']=new Array('Uttranchal','Dehradun');
 
function setStates() {
  cntrySel = document.getElementById('country');
  stateList = states[cntrySel.value];
  changeSelect('state', stateList, stateList);
  setCities();
}
 
function setCities() {
  cntrySel = document.getElementById('country');
  stateSel = document.getElementById('state');
  cityList = cities[cntrySel.value][stateSel.value];
  changeSelect('city', cityList, cityList);
}
 
function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}
 
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}
 
addLoadEvent(function() {
  setStates();
});
</script>

<script type="text/javascript">
 
// State lists
var month = new Array();
month['year']=new Array('JAN','FEB','DEC','MAR','APR','MAY','JUN','JUL','AUG','SEP','OCT','NOV');
 
// City lists
var season = new Array();
season['year'] = new Array();

season['year']['JAN'] = new Array('Winter');
season['year']['FEB'] = new Array('Winter');
season['year']['DEC'] = new Array('Winter');
season['year']['MAR'] = new Array('Summer');
season['year']['APR'] = new Array('Summer');
season['year']['MAY'] = new Array('Summer');
season['year']['JUN'] = new Array('Rainy');
season['year']['JUL'] = new Array('Rainy');
season['year']['AUG'] = new Array('Rainy');
season['year']['SEP'] = new Array('Rainy');
season['year']['OCT'] = new Array('Autumn');
season['year']['NOV'] = new Array('Autumn');

function setmonth() {
  yearSel = document.getElementById('year');
  monthList = month[yearSel.value];
  changeSelect('month', monthList, monthList);
  setseason();
}
 
function setseason() {
  yearSel = document.getElementById('year');
  monthSel = document.getElementById('month');
  seasonList = season[yearSel.value][monthSel.value];
  changeSelect('season', seasonList, seasonList);
}
 
function changeSelect(fieldID, newOptions, newValues) {
  selectField = document.getElementById(fieldID);
  selectField.options.length = 0;
  for (i=0; i<newOptions.length; i++) {
    selectField.options[selectField.length] = new Option(newOptions[i], newValues[i]);
  }
}
 
function addLoadEvent(func) {
  var oldonload = window.onload;
  if (typeof window.onload != 'function') {
    window.onload = func;
  } else {
    window.onload = function() {
      if (oldonload) {
        oldonload();
      }
      func();
    }
  }
}
 
addLoadEvent(function() {
  setmonth();
});
</script>

</body>
</html>