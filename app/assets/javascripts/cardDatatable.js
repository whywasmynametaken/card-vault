// CARDS INDEX TABLE
$(document).on("turbolinks:load", function(){
   var datatable = $('#myTable').DataTable({paging: false,
                                           "language": { "search": "" },
                                           
                                                   });

   $('#category').on('change', function(){
      var category = $('#category').val();

      if(category === "All"){category = ""}

      datatable.columns(1).search(category).draw();
   })
})


// USERS INDEX TABLE
$(document).on("turbolinks:load", function(){
   var datatable = $('#peopleTable').DataTable({paging: false,
                                                "language": { "search": "" },
});

   $('#category').on('change', function(){
      var category = $('#category').val();

      if(category === "All"){category = ""}

      datatable.columns(1).search(category).draw();
   })
})
