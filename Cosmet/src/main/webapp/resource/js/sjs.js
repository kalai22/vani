$(".checkBox").on("click", function(){
  
  // Setting up the variables that holds the sipping and billing info
  
  var nameShip     = $(".nameShip").val(),
      passShip     = $(".passShip").val(),
      address1Ship = $(".address1Ship").val(),
      address2Ship = $(".address2Ship").val(),
      cityShip     = $(".cityShip").val(),
      stateShip    = $(".stateShip").val(),
      zipShip      = $(".zipShip").val(),
      phoneShip    = $(".phoneShip").val(),
      emailShip    = $(".emailShip").val(),
      nameBill     = $(".nameBill"),
      address1Bill = $(".address1Bill"),
      address2Bill = $(".address2Bill"),
      cityBill     = $(".cityBill"),
      stateBill    = $(".stateBill"),
      zipBill      = $(".zipBill"),
      phoneBill    = $(".phoneBill"),
      emailBill    = $(".emailBill");
  
  // If/Else statment that copy the fields over.
  
  if($(".checkBox").is(":checked")){
    nameBill.val(nameShip);
    address1Bill.val(address1Ship);
    address2Bill.val(address2Ship);
    cityBill.val(cityShip);
    stateBill.val(stateShip);
    zipBill.val(zipShip);
    phoneBill.val(phoneShip);
    emailBill.val(emailShip);
  }else{
    nameBill.val("");
    address1Bill.val("");
    address2Bill.val("");
    cityBill.val("");
    stateBill.val("");
    zipBill.val("");
    phoneBill.val("");
    emailBill.val("");
  }
});

















/*$(".checkBox").on("click", function(){
  
  // Setting up the variables that holds the sipping and billing info
  
  var nameShip     = $(".nameShip").val(),
      address1Ship = $(".address1Ship").val(),
      address2Ship = $(".address2Ship").val(),
      cityShip     = $(".cityShip").val(),
      stateShip    = $(".stateShip").val(),
      zipShip      = $(".zipShip").val(),
      phoneShip    = $(".phoneShip").val(),
      emailShip    = $(".emailShip").val(),
      nameBill     = $(".nameBill"),
      address1Bill = $(".address1Bill"),
      address2Bill = $(".address2Bill"),
      cityBill     = $(".cityBill"),
      stateBill    = $(".stateBill"),
      zipBill      = $(".zipBill"),
      phoneBill    = $(".phoneBill"),
      emailBill    = $(".emailBill");
  
  // If/Else statment that copy the fields over.
  
  if($(".checkBox").is(":checked")){
    nameBill.val(nameShip);
    address1Bill.val(address1Ship);
    address2Bill.val(address2Ship);
    cityBill.val(cityShip);
    stateBill.val(stateShip);
    zipBill.val(zipShip);
    phoneBill.val(phoneShip);
    emailBill.val(emailShip);
  }else{
    nameBill.val("");
    address1Bill.val("");
    address2Bill.val("");
    cityBill.val("");
    stateBill.val("");
    zipBill.val("");
    phoneBill.val("");
    emailBill.val("");
  }
});*/