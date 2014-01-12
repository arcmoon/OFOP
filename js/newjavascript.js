/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

function validateFormOnSubmit(form) 
{
	var reason = "";
	reason += validateUsername(form);
	if (reason !== "")
        {
	alert("Some fields are EMPTY!:\n" + reason);
	return false;
	}
	return true;
}

function validateUsername(form) 
{
var str=document.getElementsByName('user');
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