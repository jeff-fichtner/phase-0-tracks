var img

$(document).ready(function(){
    
    img.dblclick(function(){
        $(this).toggle();
    });
    
    $("h1").hover(function(){
      img.fadeIn(3000);
    });

    // $("footer").click(function(){
    // 	for (i = 0; i < 20; i++) {
	   //  	img.animate({left: '100px'});
	   //  	img.animate({up: '100px'});
	   //  	img.animate({right: '100px'});
	   //  	img.animate({down: '100px'})
	   //  }
    // });

});