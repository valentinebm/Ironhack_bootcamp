// Write your Pizza Builder JavaScript in this file.

$('.btn-pepperonni').click(function(){
  var peps = $('.pep');
  var button = $('.btn-pepperonni');
  var cost = $('.peperonni-extra');
  var totalprice = $('strong');
  peps.each(function(index, element){
    $(element).toggleClass('inactive');
  });
  button.toggleClass('active');
  $("strong").text("$" + UpdatePrice());
});

$('.btn-mushrooms').click(function(){
  var mushrooms = $('.mushroom');
  var button = $('.btn-mushrooms');
  var totalprice = $('strong');
  mushrooms.each(function(index, element){
    $(element).toggleClass('inactive');
  })
  button.toggleClass('active');
  $("strong").text("$" + UpdatePrice());
});


$('.btn-green-peppers').click(function(){
  var greenpeppers = $('.green-pepper');
  var button = $('.btn-green-peppers');
  greenpeppers.each(function(index, element){
    $(element).toggleClass('inactive');
  });
  button.toggleClass('active');
  $("strong").text("$" + UpdatePrice());
});

$('.btn-sauce').click(function(){
  var sauce = $('.sauce');
  var button = $('.btn-sauce');
  sauce.each(function(index, element){
    $(element).toggleClass('sauce-white');
  });
  button.toggleClass('active');
  $("strong").text("$" + UpdatePrice());
});

$('.btn-crust').click(function(){
  var crust = $('.crust');
  var button = $('.btn-crust');
  crust.each(function(index, element){
    $(element).toggleClass('crust-gluten-free');
  });
  button.toggleClass('active');
  $("strong").text("$" + UpdatePrice());
});

function UpdatePrice(){
var totalprice = 10;
  if ($('.btn-pepperonni').hasClass('active')) {
    totalprice += 1;
  };
  if ($('.btn-mushrooms').hasClass('active')) {
    totalprice += 1;
  };
  if ($('.btn-green-peppers').hasClass('active')) {
    totalprice += 1;
  };
  if ($('.btn-sauce').hasClass('active')) {
    totalprice += 3;
  };
  if ($('.btn-crust').hasClass('active')) {
    totalprice += 5;
  };
  return(totalprice);
};

$("strong").text('$' + UpdatePrice())
