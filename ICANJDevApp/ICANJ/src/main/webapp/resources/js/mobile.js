/**
 * Open facebook like menu.
 * Implemented using
 * https://github.com/aldomatic/FB-Style-Page-Slide-Menu
 */
$(function(){
	var menuStatus;
	$("a.btn-left-navbar").click(function(){
			if(menuStatus != true){
			$(".page").animate({
					marginLeft: "200px",
				}, 300, function(){menuStatus = true});
				return false;
				} else {
					$(".page").animate({
					marginLeft: "0px",
				}, 300, function(){menuStatus = false});
					return false;
				}
	});
});