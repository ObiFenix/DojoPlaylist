document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('select');
  var instances = M.FormSelect.init(elems, options);
});

// Or with jQuery

$(document).ready(function(){
  //   alert("Well passed....!")
  $('select').formSelect();
  $('.datepicker').datepicker();
  $("nav").find("a").click(function(e) {
    e.preventDefault();
    var section = $(this).attr("href");
    $("html, body").animate({
        scrollTop: $(section).offset().top
    }, 1500,'easeInOutExpo');
    e.preventDefault();
  });
  
  // Handles DELETE_ALL request from a form
  var delete_all = document.getElementById('delete_all');
  delete_all.onsubmit = function(e){
    var form = this;
    e.preventDefault();
    if(confirm("Are you sure you wish to remove all?"))
      form.submit();
  }
});
