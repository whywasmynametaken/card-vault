$(document).on("turbolinks:load", function(){
  $("select#card_category").change(function(){
    if($("select#card_category").val() === "Gift"){
      $("#card_company_name").attr("disabled", false);
      $("#company_field").show();

      $("#card_card_number").attr("disabled", false);
      $("#card_number_field").show();

      $("#card_amount").attr("disabled", false);
      $("#amount_field").show();

      $("#card_expire").attr("disabled", false);
      $("#expire_field").show();
    }else if($("select#card_category").val() === "Membership"){
      $("#card_company_name").attr("disabled", false);
      $("#company_name_field").show();

      $("#card_card_number").attr("disabled", true);
      $("#card_number_field").hide();

      $("#card_amount").attr("disabled", true);
      $("#amount_field").hide();

      $("#card_expire").attr("disabled", false);
      $("#expire_field").show();
    }else if($("select#card_category").val() === "Rewards"){
      $("#card_company_name").attr("disabled", false);
      $("#company_name_field").show();

      $("#card_card_number").attr("disabled", true);
      $("#card_number_field").hide();

      $("#card_amount").attr("disabled", true);
      $("#amount_field").hide();

      $("#card_expire").attr("disabled", true);
      $("#expire_field").hide();
    }
  });
});
