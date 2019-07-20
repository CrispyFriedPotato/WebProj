<%@ page contentType="text/html; charset=UTF-8" %>
<%
	  String id = (String) session.getAttribute("idKey");
	  String url = "member.jsp";
	  String label = "Register";
      if(id!=null){
        url = "memberUpdate.jsp";
        label = "Edit your information";
      }
      
%>
<html>
<head>
<title>head</title>
<link href="style.css" rel="stylesheet" type="text/css">
<link href="Main.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if (id == "") {
			alert("Please insert your ID");
			frm.id.focus();
			return;
		}
		//idCheck.jsp로 넘어가는데, 그 때 id를 가지고 넘어감(form 처럼)
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300,height=150");
	}
</script>
</head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  color: #ffffff;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
<body>
<%
        if(id != null) // Logined
        { 
    %>
    		<font size=6>Valkommen!Bangapseumnida!</font>
    		<b><%=id%></b>
            <a href="logout.jsp" class="log" style="float:right"><button id="btn logout">Logout</button></a>
<%
}else{
%>
            <a class="log" style="float:right">
    		<button id="btn reg" style="width:auto" style="width:auto" onclick="document.getElementById('register').style.display='block'">Sign Up</button></a> 
			
			<a class="log" style="float:right"> 
			<button id="btn log" style="width:auto" style="width:auto" onclick="document.getElementById('login').style.display='block'" >Sign in</button></a>

			<div id="login" class="modal1">
			  <form class="modal-content animate" method="post" action="loginProc.jsp" >
			     <div class="imgcontainer">
				      <span onclick="document.getElementById('login').style.display='none'" class="close" title="Close Modal">&times;</span>  
				    </div>
				
				    <div class="container">
							    <h1>Sign in</h1>
				    <hr>
				      <label for="id"><b>User name</b></label>
				      <input type="text" placeholder="Enter Username" name="id" required>
						
				      <label for="pwd"><b>Password</b></label>
				      <input type="password" placeholder="Enter Password" name="pwd" required>
				        
				      <button type="submit" value="login" >Login</button>
				    </div>
				    <div class="clearfix mr-10" style="background-color:#f1f1f1">
				      <button type="reset" value="reset" onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
				    </div>
			  </form>
			</div>	 
    		
    		<div id="register" class="modal2">
			  <form class="modal-content animate" method="post" action="memberProc.jsp" >
			     <div class="imgcontainer">
				      <span onclick="document.getElementById('register').style.display='none'" class="close" title="Close Modal">&times;</span>  
				    </div>
				
				    <div class="container">
							   <h1>Sign Up</h1>
				      <p>Please fill in this form to create an account.</p>
				      <hr>
				 
		            <label for="name"><b>Name</b></label>
		            <input type="text" name="name" id="name" placeholder="Enter Name" required/>
		        		
		        		
				      <label for="id"><b>ID</b></label>
				      <input type="text" placeholder="Enter ID" name="id" required>
					  <input type="button" value="ID CHECK" onClick="idCheck(this.form.id.value)">
					  <br>
				      <label for="email"><b>Email</b></label>
				      <input type="text" placeholder="Enter Email" name="email" required>
				
				      <label for="pwd"><b>Password</b></label>
				      <input type="password" placeholder="Password" name="pwd" required>
				
				      <label for="pwd-repeat"><b>Repeat Password</b></label>
				      <input type="password" placeholder="Repeat Password" name="repwd" required>
				      <div class="select-country">
				      <label for="country"><b>Country</b></label>   
			             	<br>
			              <select id="country" name="country" class="form-control">
			              <option>Please select your country</option>
			                <option value="Afghanistan">Afghanistan</option>
			                <option value="Åland Islands">Åland Islands</option>
			                <option value="Albania">Albania</option>
			                <option value="Algeria">Algeria</option>
			                <option value="American Samoa">American Samoa</option>
			                <option value="Andorra">Andorra</option>
			                <option value="Angola">Angola</option>
			                <option value="Anguilla">Anguilla</option>
			                <option value="Antarctica">Antarctica</option>
			                <option value="Antigua and Barbuda">Antigua and Barbuda</option>
			                <option value="Argentina">Argentina</option>
			                <option value="Armenia">Armenia</option>
			                <option value="Aruba">Aruba</option>
			                <option value="Australia">Australia</option>
			                <option value="Austria">Austria</option>
			                <option value="Azerbaijan">Azerbaijan</option>
			                <option value="Bahamas">Bahamas</option>
			                <option value="Bahrain">Bahrain</option>
			                <option value="Bangladesh">Bangladesh</option>
			                <option value="Barbados">Barbados</option>
			                <option value="Belarus">Belarus</option>
			                <option value="Belgium">Belgium</option>
			                <option value="Belize">Belize</option>
			                <option value="Benin">Benin</option>
			                <option value="Bermuda">Bermuda</option>
			                <option value="Bhutan">Bhutan</option>
			                <option value="Bolivia">Bolivia</option>
			                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
			                <option value="Botswana">Botswana</option>
			                <option value="Bouvet Island">Bouvet Island</option>
			                <option value="Brazil">Brazil</option>
			                <option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
			                <option value="Brunei Darussalam">Brunei Darussalam</option>
			                <option value="Bulgaria">Bulgaria</option>
			                <option value="Burkina Faso">Burkina Faso</option>
			                <option value="Burundi">Burundi</option>
			                <option value="Cambodia">Cambodia</option>
			                <option value="Cameroon">Cameroon</option>
			                <option value="Canada">Canada</option>
			                <option value="Cape Verde">Cape Verde</option>
			                <option value="Cayman Islands">Cayman Islands</option>
			                <option value="Central African Republic">Central African Republic</option>
			                <option value="Chad">Chad</option>
			                <option value="Chile">Chile</option>
			                <option value="China">China</option>
			                <option value="Christmas Island">Christmas Island</option>
			                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
			                <option value="Colombia">Colombia</option>
			                <option value="Comoros">Comoros</option>
			                <option value="Congo">Congo</option>
			                <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
			                <option value="Cook Islands">Cook Islands</option>
			                <option value="Costa Rica">Costa Rica</option>
			                <option value="Cote D'ivoire">Cote D'ivoire</option>
			                <option value="Croatia">Croatia</option>
			                <option value="Cuba">Cuba</option>
			                <option value="Cyprus">Cyprus</option>
			                <option value="Czech Republic">Czech Republic</option>
			                <option value="Denmark">Denmark</option>
			                <option value="Djibouti">Djibouti</option>
			                <option value="Dominica">Dominica</option>
			                <option value="Dominican Republic">Dominican Republic</option>
			                <option value="Ecuador">Ecuador</option>
			                <option value="Egypt">Egypt</option>
			                <option value="El Salvador">El Salvador</option>
			                <option value="Equatorial Guinea">Equatorial Guinea</option>
			                <option value="Eritrea">Eritrea</option>
			                <option value="Estonia">Estonia</option>
			                <option value="Ethiopia">Ethiopia</option>
			                <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
			                <option value="Faroe Islands">Faroe Islands</option>
			                <option value="Fiji">Fiji</option>
			                <option value="Finland">Finland</option>
			                <option value="France">France</option>
			                <option value="French Guiana">French Guiana</option>
			                <option value="French Polynesia">French Polynesia</option>
			                <option value="French Southern Territories">French Southern Territories</option>
			                <option value="Gabon">Gabon</option>
			                <option value="Gambia">Gambia</option>
			                <option value="Georgia">Georgia</option>
			                <option value="Germany">Germany</option>
			                <option value="Ghana">Ghana</option>
			                <option value="Gibraltar">Gibraltar</option>
			                <option value="Greece">Greece</option>
			                <option value="Greenland">Greenland</option>
			                <option value="Grenada">Grenada</option>
			                <option value="Guadeloupe">Guadeloupe</option>
			                <option value="Guam">Guam</option>
			                <option value="Guatemala">Guatemala</option>
			                <option value="Guernsey">Guernsey</option>
			                <option value="Guinea">Guinea</option>
			                <option value="Guinea-bissau">Guinea-bissau</option>
			                <option value="Guyana">Guyana</option>
			                <option value="Haiti">Haiti</option>
			                <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
			                <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
			                <option value="Honduras">Honduras</option>
			                <option value="Hong Kong">Hong Kong</option>
			                <option value="Hungary">Hungary</option>
			                <option value="Iceland">Iceland</option>
			                <option value="India">India</option>
			                <option value="Indonesia">Indonesia</option>
			                <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
			                <option value="Iraq">Iraq</option>
			                <option value="Ireland">Ireland</option>
			                <option value="Isle of Man">Isle of Man</option>
			                <option value="Israel">Israel</option>
			                <option value="Italy">Italy</option>
			                <option value="Jamaica">Jamaica</option>
			                <option value="Japan">Japan</option>
			                <option value="Jersey">Jersey</option>
			                <option value="Jordan">Jordan</option>
			                <option value="Kazakhstan">Kazakhstan</option>
			                <option value="Kenya">Kenya</option>
			                <option value="Kiribati">Kiribati</option>
			                <option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
			                <option value="Korea, Republic of">Korea, Republic of</option>
			                <option value="Kuwait">Kuwait</option>
			                <option value="Kyrgyzstan">Kyrgyzstan</option>
			                <option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
			                <option value="Latvia">Latvia</option>
			                <option value="Lebanon">Lebanon</option>
			                <option value="Lesotho">Lesotho</option>
			                <option value="Liberia">Liberia</option>
			                <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
			                <option value="Liechtenstein">Liechtenstein</option>
			                <option value="Lithuania">Lithuania</option>
			                <option value="Luxembourg">Luxembourg</option>
			                <option value="Macao">Macao</option>
			                <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
			                <option value="Madagascar">Madagascar</option>
			                <option value="Malawi">Malawi</option>
			                <option value="Malaysia">Malaysia</option>
			                <option value="Maldives">Maldives</option>
			                <option value="Mali">Mali</option>
			                <option value="Malta">Malta</option>
			                <option value="Marshall Islands">Marshall Islands</option>
			                <option value="Martinique">Martinique</option>
			                <option value="Mauritania">Mauritania</option>
			                <option value="Mauritius">Mauritius</option>
			                <option value="Mayotte">Mayotte</option>
			                <option value="Mexico">Mexico</option>
			                <option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
			                <option value="Moldova, Republic of">Moldova, Republic of</option>
			                <option value="Monaco">Monaco</option>
			                <option value="Mongolia">Mongolia</option>
			                <option value="Montenegro">Montenegro</option>
			                <option value="Montserrat">Montserrat</option>
			                <option value="Morocco">Morocco</option>
			                <option value="Mozambique">Mozambique</option>
			                <option value="Myanmar">Myanmar</option>
			                <option value="Namibia">Namibia</option>
			                <option value="Nauru">Nauru</option>
			                <option value="Nepal">Nepal</option>
			                <option value="Netherlands">Netherlands</option>
			                <option value="Netherlands Antilles">Netherlands Antilles</option>
			                <option value="New Caledonia">New Caledonia</option>
			                <option value="New Zealand">New Zealand</option>
			                <option value="Nicaragua">Nicaragua</option>
			                <option value="Niger">Niger</option>
			                <option value="Nigeria">Nigeria</option>
			                <option value="Niue">Niue</option>
			                <option value="Norfolk Island">Norfolk Island</option>
			                <option value="Northern Mariana Islands">Northern Mariana Islands</option>
			                <option value="Norway">Norway</option>
			                <option value="Oman">Oman</option>
			                <option value="Pakistan">Pakistan</option>
			                <option value="Palau">Palau</option>
			                <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
			                <option value="Panama">Panama</option>
			                <option value="Papua New Guinea">Papua New Guinea</option>
			                <option value="Paraguay">Paraguay</option>
			                <option value="Peru">Peru</option>
			                <option value="Philippines">Philippines</option>
			                <option value="Pitcairn">Pitcairn</option>
			                <option value="Poland">Poland</option>
			                <option value="Portugal">Portugal</option>
			                <option value="Puerto Rico">Puerto Rico</option>
			                <option value="Qatar">Qatar</option>
			                <option value="Reunion">Reunion</option>
			                <option value="Romania">Romania</option>
			                <option value="Russian Federation">Russian Federation</option>
			                <option value="Rwanda">Rwanda</option>
			                <option value="Saint Helena">Saint Helena</option>
			                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
			                <option value="Saint Lucia">Saint Lucia</option>
			                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
			                <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
			                <option value="Samoa">Samoa</option>
			                <option value="San Marino">San Marino</option>
			                <option value="Sao Tome and Principe">Sao Tome and Principe</option>
			                <option value="Saudi Arabia">Saudi Arabia</option>
			                <option value="Senegal">Senegal</option>
			                <option value="Serbia">Serbia</option>
			                <option value="Seychelles">Seychelles</option>
			                <option value="Sierra Leone">Sierra Leone</option>
			                <option value="Singapore">Singapore</option>
			                <option value="Slovakia">Slovakia</option>
			                <option value="Slovenia">Slovenia</option>
			                <option value="Solomon Islands">Solomon Islands</option>
			                <option value="Somalia">Somalia</option>
			                <option value="South Africa">South Africa</option>
			                <option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
			                <option value="Spain">Spain</option>
			                <option value="Sri Lanka">Sri Lanka</option>
			                <option value="Sudan">Sudan</option>
			                <option value="Suriname">Suriname</option>
			                <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
			                <option value="Swaziland">Swaziland</option>
			                <option value="Sweden">Sweden</option>
			                <option value="Switzerland">Switzerland</option>
			                <option value="Syrian Arab Republic">Syrian Arab Republic</option>
			                <option value="Taiwan, Province of China">Taiwan, Province of China</option>
			                <option value="Tajikistan">Tajikistan</option>
			                <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
			                <option value="Thailand">Thailand</option>
			                <option value="Timor-leste">Timor-leste</option>
			                <option value="Togo">Togo</option>
			                <option value="Tokelau">Tokelau</option>
			                <option value="Tonga">Tonga</option>
			                <option value="Trinidad and Tobago">Trinidad and Tobago</option>
			                <option value="Tunisia">Tunisia</option>
			                <option value="Turkey">Turkey</option>
			                <option value="Turkmenistan">Turkmenistan</option>
			                <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
			                <option value="Tuvalu">Tuvalu</option>
			                <option value="Uganda">Uganda</option>
			                <option value="Ukraine">Ukraine</option>
			                <option value="United Arab Emirates">United Arab Emirates</option>
			                <option value="United Kingdom">United Kingdom</option>
			                <option value="United States">United States</option>
			                <option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
			                <option value="Uruguay">Uruguay</option>
			                <option value="Uzbekistan">Uzbekistan</option>
			                <option value="Vanuatu">Vanuatu</option>
			                <option value="Venezuela">Venezuela</option>
			                <option value="Viet Nam">Viet Nam</option>
			                <option value="Virgin Islands, British">Virgin Islands, British</option>
			                <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
			                <option value="Wallis and Futuna">Wallis and Futuna</option>
			                <option value="Western Sahara">Western Sahara</option>
			                <option value="Yemen">Yemen</option>
			                <option value="Zambia">Zambia</option>
			                <option value="Zimbabwe">Zimbabwe</option>
			            </select>

				      		<br>
			</div>	
			<button type="submit" onclick="inputCheck()"  class="signupbtn">Sign Up</button>
			</div>
			<div class="clearfix mr-10" style="background-color:#f1f1f1">
				      <button type="reset" value="reset" onclick="document.getElementById('login').style.display='none'" class="cancelbtn">Cancel</button>
			</div>
			</form>
			</div>
			
    <%    } %>

<header >
<a href="main.jsp" target="_parent" onFocus="this.blur();">
<img src="images/logo.png" width="20%" height="100%"></a>


	
	
	
</header>
<script>
// Get the modal
var modal1 = document.getElementById('login');
var modal2 = document.getElementById('register');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal1) {
        modal.style.display = "none";
    }
}
window.onclick = function(event) {
    if (event.target == modal2) {
        modal.style.display = "none";
    }
}
</script>
</body>

</html>