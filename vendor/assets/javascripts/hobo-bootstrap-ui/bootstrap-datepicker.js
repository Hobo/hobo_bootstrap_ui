$(function() {
  $('body').on('focus',".bootstrap-datepicker", function(){
    $(this).datepicker({ language: document.documentElement.lang });
  });
});
