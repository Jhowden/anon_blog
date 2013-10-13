$(document).ready(function() {


  $('.edit_click').click(function(event){

  	event.preventDefault();
    var url = $(this).attr('href');
    console.log(url);
    var link = this

    $.get(url, function(response) {
    	
    	console.log(response);
    	console.log(link);
    	$(link).after(response);
    });
  });

});


$(document).ready(function(){
  $('.create_click').click(function(event){
    event.preventDefault();
    console.log('click');

    var url = $(this).attr('href');
    console.log(url)
    var link = this

    $.get(url, function(response) {

      // console.log(response);
      console.log(link);
      $(link).after(response);
    });
  });

});
