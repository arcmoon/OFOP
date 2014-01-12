function validateFormOnSubmit(form) 
{
	var reason = "";
	reason += validateUsername(form);
	reason += validatePassword(form);
	reason += validateEmail(form);
	reason += validatePhone(form);
	reason += validateAge(form);
	if (reason !== "")
        {
	alert("Some fields are EMPTY!:\n" + reason);
	return false;
	}
	return true;
}



function validateUsername(fld) 
{
var str=document.getElementsByName('email');
var error = "";
var illegalChars = /\W/; // allow letters, numbers, and underscores

if (str === "") {
error= "You didn't enter a username.\n";
alert("You didn't enter a username.\n");
}
else if ((str.length < 5) || (str.length > 15)) {
error = "The username is the wrong length.\n";
alert("The username is the wrong length.\n");
}
else if (illegalChars.test(str)) {
    error="The username contains illegal characters.\n";
alert("The username contains illegal characters.\n");
}
return error;
}


function validatePassword(fld) {
var error = "";
var illegalChars = /[\W_]/; // allow only letters and numbers
if (fld.value === "") {
    error= "You didn't enter a password.\n";
alert("You didn't enter a password.\n");
} else if ((fld.value.length < 7) || (fld.value.length > 15)) {
    error="The password is the wrong length. \n";
alert("The password is the wrong length. \n");
} else if (illegalChars.test(fld.value)) {
    error="The password contains illegal characters.\n";
alert("The password contains illegal characters.\n");
} else if (!((fld.value.search(/(a-z)+/)) && (fld.value.search(/(0-9)+/)))) {
    error="The password must contain at least one numeral.\n";
alert("The password must contain at least one numeral.\n");
}
return error;
}




function trim(s)
{
return s.replace(/^\s+|\s+$/, '');
}


function validateEmail(fld) {
var error="";
var tfld = trim(fld.value); // value of field with whitespace trimmed off
var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;
var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;
if (fld.value === "") {
    error="You didn't enter an email address.\n";
alert("You didn't enter an email address.\n");
} else if (!emailFilter.test(tfld)) { //test email for illegal characters
    error="Please enter a valid email address.\n";
alert("Please enter a valid email address.\n");
} else if (fld.value.match(illegalChars)) {
    error="The email address contains illegal characters.\n";
alert("The email address contains illegal characters.\n");
}
return error;
}




function validatePhone(fld) {
var error = "";
var stripped = fld.value.replace(/[\(\)\.\-\ ]/g, '');
if (fld.value === "") {
    error="You didn't enter a phone number.\n";
alert("You didn't enter a phone number.\n");
} else if (isNaN(parseInt(stripped))) {
    error="The phone number contains illegal characters.\n";
alert("The phone number contains illegal characters.\n");
} else if (!(stripped.length === 10)) {
    error="The phone number is the wrong length. Make sure you included an area code.\n";
alert("The phone number is the wrong length. Make sure you included an area code.\n");
}
return error;
}



function validateAge(fld) {
var error = "";
var stripped = fld.value.replace(/[\(\)\.\-\ ]/g, '');
if (fld.value === "") {
    error="You didn't enter age.\n";
alert("You didn't enter age.\n");
} else if (isNaN(parseInt(stripped))) {
    error="The age contains illegal characters.\n";
alert("The age contains illegal characters.\n");
} else if (!(stripped.length === 2)) {
    error="The age is the wrong length.\n";
alert("The age is the wrong length.\n");
}
return error;
}