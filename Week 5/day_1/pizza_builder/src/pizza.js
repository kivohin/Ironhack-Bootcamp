// Write your Pizza Builder JavaScript in this file.

var defaultPrice = 13;
$('strong').text('$'+defaultPrice)
var currentPrice = defaultPrice;

$('.btn-pepperonni').on('click', function(){
  $('.pep').toggle();
  $('.btn-pepperonni').toggleClass('active')
  if ($('.btn-pepperonni').hasClass('active')){
    currentPrice = currentPrice + 1;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(1)').show();
  } else {
    currentPrice = currentPrice - 1;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(1)').hide();
  };

});
$('.btn-mushrooms').on('click', function(){
  $('.mushroom').toggle();
  $('.btn-mushrooms').toggleClass('active');
  if ($('.btn-mushrooms').hasClass('active')){
    currentPrice = currentPrice + 1;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(2)').show();
  } else {
    currentPrice = currentPrice - 1;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(2)').hide();
  };
});

$('.btn-green-peppers').on('click', function(){
  $('.green-pepper').toggle();
  $('.btn-green-peppers').toggleClass('active');
  if ($('.btn-green-peppers').hasClass('active')){
    currentPrice = currentPrice + 1;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(3)').show();
  } else {
    currentPrice = currentPrice - 1;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(3)').hide();
  };
});

$('aside.panel.price ul li:nth-child(5)').hide();
$('.crust').toggleClass('crust-gluten-free');
$('.btn-crust').toggleClass('active');
$('.btn-crust').on('click', function(){
  $('.crust').toggleClass('crust-gluten-free');
  $('.btn-crust').toggleClass('active');
  if ($('.btn-crust').hasClass('active')){
    currentPrice = currentPrice + 5;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(5)').show();
  } else {
    currentPrice = currentPrice - 5;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(5)').hide();
  };
})

$('aside.panel.price ul li:nth-child(4)').hide();
$('.sauce').toggleClass('sauce-white');
$('.btn-sauce').toggleClass('active');
$('.btn-sauce').on('click', function(){
  $('.sauce').toggleClass('sauce-white');
  $('.btn-sauce').toggleClass('active');
  if ($('.btn-sauce').hasClass('active')){
    currentPrice = currentPrice + 3;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(4)').show();
  } else {
    currentPrice = currentPrice - 3;
    $('strong').text('$'+currentPrice);
    $('aside.panel.price ul li:nth-child(4)').hide();
  };
})
