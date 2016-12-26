$(document).ready(function() {
	// $('div').fadeTo('fast', 0)

  $('div').mouseenter(function (){
  	$(this).css('color', 'red');
  });

  $('div').mouseleave(function(){
  	$(this).css('color', 'black');
  });

  $('div').click(function(){
  		$(this).fadeTo('slow', 0);
  });
  $('button').click(function(){
  		$('div').fadeTo('slow', 1);
  });
});