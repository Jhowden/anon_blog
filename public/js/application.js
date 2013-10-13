


$(document).ready(function() {


  $('.edit_click').click(function(event){

  	event.preventDefault();
    var url = $(this).attr('href')
    console.log(url);
    var link = this

    $.get(url, function(response) {
    	
    	console.log(response);
    	console.log(link);
    	$(link).after(response);
    });
  });

});
