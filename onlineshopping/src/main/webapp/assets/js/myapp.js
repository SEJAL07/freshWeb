$(function(){
	//solving the active menu problem
	switch(menu){
	
	   case 'About Us' :
		   $('#about').addClass('active');
		   break;
	   case 'Contact Us' :
		   $('#contact').addClass('active');
		   break;
	   case 'Home' :
		   $('#home').addClass('active');
		   break;
	   case 'All products' :
		   $('#listProducts').addClass('active');
		  // $('#a_'+menu).addClass('active');
	
	   default :
		   $('#home ').addClass('active');
	       $('#a_'+menu).addClass('active');
		   break;
	}	
	
});