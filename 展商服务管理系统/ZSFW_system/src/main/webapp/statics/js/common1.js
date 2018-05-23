var urodz= new Date("3/24/2016");
var now = new Date();
var ile = urodz.getTime() - now.getTime();
var dni = Math.floor(ile / (1000 * 60 * 60 * 24));

$(document).ready(function(){

	$("#daoji").html(dni);

	$('.topNavigation .level1 > li').hover(function() {
		$(this).find('.level2').animate({ opacity:'show', height:'show' },300);
	}, function() {
		$('.level2').stop(true,true).hide();
	}).slice(-3,-1).find('.children').addClass('sleft');


	$("#interveiw-float-btn a.backtop").hide();
	$(window).scroll(function (){
		// 让浮动层距离窗口顶部，始终保持80px
		var offsetTop = $(window).scrollTop() + 0 +"px";            
		$("#interveiw-float-btn").animate({top : offsetTop },{ duration:500 , queue:false });
		($(document).scrollTop() > 20)? $("#interveiw-float-btn a.backtop").fadeIn(500): $("#interveiw-float-btn a.backtop").fadeOut(500);
	});
	// Scroll page to the bottom
	$("#interveiw-float-btn a.backtop").click(function(){
		$("html, body").animate({scrollTop:0}, "slow");
		return false;
	});

	$("ul.social li a.weixin, ul.social li a.weibo, ul.social li a.email").hover(function(){
		$(this).parent().children("div.detail").show();
		},function(){
		$(this).parent().children("div.detail").hide();	
	})

});