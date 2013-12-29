/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
   
        var a = new Array();
        a[0] = "0";
        a[1] = "70";
        a[2] = "110";
        a[3] = "60";
        a[4] = "140";
        a[5] = "90";
        a[6] = "75";
        a[7] = "80";
        a[8] = "30";
        a[9] = "50";
        a[10] = "30";
        a[11] = "45";
        a[12] = "70";
        a[13] = "60";
        a[14] = "25";
        a[15] = "40";
        a[16] = "95";
        a[17] = "20";
        a[18] = "120";
        a[19] = "80";
        a[20] = "150";
        a[21] = "60";
        a[22] = "80";
        a[23] = "40";
        a[24] = "85";
        a[25] = "90";
                
        var sup = new Array();
        var sup_map_sup =  new Array();
        var sup_map_item =  new Array();
        
        sup[0] = "";
        sup[1] = "Bihari Kabab";
        sup[2] = "Fish Biryani";
        sup[3] = "Vegetable Biryani";
        sup[4] = "Shrimp Biryani";
        sup[5] = "Cheese Kabab";
        sup[6] = "Triple Sundae";
        sup[7] = "Choco Trofle Cake";
        sup[8] = "Sandesh";
        sup[9] = "Mysore Pak";
        sup[10] = "ShriKhand";
        sup[11] = "French Fries";
        sup[12] = "Manchurin";
        sup[13] = "Spring Rolls";
        sup[14] = "Burger";
        sup[15] = "Hard Shell Tacco";
        sup[16] = "Shahi Paneer";
        sup[17] = "Lachha Parantha";
        sup[18] = "Rogan Josh";
        sup[19] = "Chola Batura";
        sup[20] = "Tandoori Chicken";
        sup[21] = "Sambhar Vada";
        sup[22] = "Dosa";
        sup[23] = "Idli";
        sup[24] = "Almond Payasam";
        sup[25] = "Avial";
               
        sup_map_sup['0'] = "1";
        sup_map_sup['1'] = "2";
        sup_map_sup['2'] = "3";
        sup_map_sup['3'] = "4";
        sup_map_sup['4'] = "5";
        sup_map_item['0'] = "1";
        
        sup_map_sup['5'] = "6";
        sup_map_sup['6'] = "7";
        sup_map_sup['7'] = "8";
        sup_map_sup['8'] = "9";
        sup_map_sup['9'] = "10";
        sup_map_item['1'] = "2"; 
        
        sup_map_sup['10'] = "11";
        sup_map_sup['11'] = "12";
        sup_map_sup['12'] = "13";
        sup_map_sup['13'] = "14";
        sup_map_sup['14'] = "15";
        sup_map_item['2'] = "3";
        
        sup_map_sup['15'] = "16";
        sup_map_sup['16'] = "17";
        sup_map_sup['17'] = "18";
        sup_map_sup['18'] = "19";
        sup_map_sup['19'] = "20";
        sup_map_item['3'] = "4";
        
        sup_map_sup['20'] = "21";
        sup_map_sup['21'] = "22";
        sup_map_sup['22'] = "23";
        sup_map_sup['23'] = "24";
        sup_map_sup['24'] = "25";
        sup_map_item['4'] = "5";

   function updateunit(thiss)
   {    var c=thiss.value;
       document.getElementById('item').length = 1;
      for (var i = 0; i < sup_map_item.length; i++)
      {
        if (sup_map_item[i] === c) 
        {   for(var j=0;j<5;j++)
            {   var p=((i*5)+j);
                addOption(document.getElementById('item'), sup_map_sup[p], sup[sup_map_sup[p]]);
            }
        }
      }
      
    }

    function addOption(selectbox, value, text )
    {
      var optn = document.createElement("OPTION");
      optn.text = text;
      optn.value = value;

      selectbox.options.add(optn);
    }

function pricelist()
{
        var n=document.getElementById("item");
        var e=n.options[n.selectedIndex].value;
        var pp=a[e];
        document.getElementById('pane2').innerHTML = pp ;
}
function returnprice()
{       var n=document.getElementById("item");
        var e=n.options[n.selectedIndex].value;
        var pp=a[e];
        return pp;
} 
function valid(form)
         {  
             var s=document.getElementsByName("addressmode");
 		if(s[0].checked)
 		{	for(var i=0;i<form.length-1;i++)
                        { if(form.elements[i].value==="")
                            {   alert("Fields should not be empty..!!");
                                return false;
                             }
                        }   
		 }
                 else
                     {
                         for(var i=0;i<form.length-1;i++)
                        {   if(i===5)
                                break;
                            else
                            if(form.elements[i].value==="")
                            {   alert("Fields should not be empty..!!");
                                return false;
                             }
                        }
                     }
    
                 
         }
         