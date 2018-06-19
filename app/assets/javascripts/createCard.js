$(document).ready(function(){
  $("select").change(function(){
    if ($("#category").val("Gift")){
      $("#company_name").attr("disabled", false);
      $("#amount").attr("disabled", false);
      $("#expire").attr("disabled", false);
    }
    else if($("#category").val("Membership")){
      $("#company_name").attr("disabled", false);
      $("#amount").attr("disabled", true);
      $("#expire").attr("disabled", false);
    }
    else ($("#category").val("Rewards")){
      $("#company_name").attr("disabled", false);
      $("#amount").attr("disabled", true);
      $("#expire").attr("disabled", true);
    }
  });
});
