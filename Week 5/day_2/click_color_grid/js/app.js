$(document).on('ready', function() {

	var container = $('.container');
	var cells = [];

	for(var i = 0; i < 10; i++) {
		for(var j = 0; j < 10; j++) {
			var cell = $('<div>').addClass('cell');
			// cell.addClass(i + ',' + j);
			cell.attr('id', i + '-' + j)
			cells.push(cell);
			container.append(cell);
		}
	}

	$('.cell').on('click', function() {
		$(this).toggleClass('active');
	})

	$('body').keypress(function() {
		// $('.active').toggleClass('active');
		debugger
	})
});

//---- Professor command line explanation ----
$('.active')
[<div class=​"cell active" id=​"2-5">​</div>​]
$('#2-6')
[<div class=​"cell" id=​"2-6">​</div>​]
$('.active').attr('id')
"2-5"
var coordinates = $('.active').attr('id').split('-')
undefined
coordinates
["2", "5"]
var nextCol = parseInt(coordinates[1]) + 1
undefined
nextCol
6
var nextRow = parseInt(coordinates[0])
undefined
nextRow
2
var nextId = nextRow + "-" + nextCol
undefined
nextId
"2-6"
var selector = "#" + nextId
undefined
selector
"#2-6"
$(selector)
[<div class=​"cell" id=​"2-6">​</div>​]
$(selector).addClass('active')
[<div class=​"cell active" id=​"2-6">​</div>​]

// var id = activePosition.attr('id');
// var coordinates = id.split(',');
// var col = 