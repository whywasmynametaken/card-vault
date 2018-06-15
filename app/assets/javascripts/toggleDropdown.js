$(document).on("turbolinks:load", function(){
   $('#toggle-dropdown').on('click', function(){
      $('#myDropdown').toggleClass("show");
   });
});
