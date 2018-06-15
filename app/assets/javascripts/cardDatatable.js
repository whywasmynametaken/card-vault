$(document).on("turbolinks:load", function(){
   var datatable = $('#myTable').DataTable({});

   $('#category').on('change', function(){
      var category = $('#category').val();

      if(category === "All"){category = ""}

      datatable.columns(1).search(category).draw();
   })
})
