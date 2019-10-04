$(document).ready(function(){
  			$("button").click(function(){
  				var a=$("input:text").val();
  				var m="try again"
  				var p=m;
  				if(a=="headache"){
  					m="Crocin";
  					p="Get Some Sleep";
  				}
  				else if(a=="acidity"){
  					m="Eno";
  					p="Take light diet";
  				}
  				else if(a=="fever"){
  					m="Paracetamol";
  					p="Take Rest";
  				}
  				else if(a=="dehydration"){
  					m="ORS";
  					p="Drink more water";
  				}
    			$(".remedy").html("Medicine: "+m+"<br>"+"Precautions: "+p);
  			});
		});