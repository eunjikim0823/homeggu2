/*베스트아이템 슬라이더*/

$(function(){	

$('.best_slider').bxSlider({
	minSlides:5, 
	maxSlides:5, 
	MoveSlides:1, 
	slideWidth:400, 
	slideMargin:30, 
	auto:true,
	pager:false,
	speed:200
});

/*할인상품 슬라이더 */
$('.sale_slider').bxSlider({
	minSlides:5, 
	maxSlides:5, 
	MoveSlides:1, 
	slideWidth:400, 
	slideMargin:30, 
	auto:true,
	pager:false,
	speed:200
});
});