function login(form)
{   if((form.elements[0].value==="")||(form.elements[1].value===""))
     {    alert("Fields should not be empty");
          return false;
     }
}


function signup(form)
{  for(var i=0;i<form.length-1;i++)
   { if(form.elements[i].value==="")
     {   alert("Fields should not be empty..!!");
         return false;
     }
   }
   
}


function order(form)
{   if((form.elements[0].value===""))
    {    alert("Fields should not be empty");
         return false;
    }
}

function valid(form)
{               var s=document.getElementsByName("myradio");
 		if(s[0].checked)
 		{	if((form.elements[0].value=="")||(form.elements[1].value=="")||(form.elements[2].value=="")||(form.elements[4].value==""))
  			{	alert("NAME/EXPIRY DATE/CVV NO./BANK field may be vacant!");
   				return false;
  			}
		 }
		 if(s[1].checked)
  		 {	 if((form.elements[0].value=="")||(form.elements[1].value=="")||(form.elements[3].value=="")||(form.elements[4].value==""))
  				{	alert("NAME/EXPIRY DATE/PIN/BANK field may be vacant!");
   					return false;
  				}
 		}
}