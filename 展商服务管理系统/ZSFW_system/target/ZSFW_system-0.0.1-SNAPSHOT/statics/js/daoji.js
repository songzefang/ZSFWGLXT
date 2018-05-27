var urodz= new Date("2018/05/25 09:00:00");
var now = new Date();
var ile = urodz.getTime() - now.getTime();
var dni = Math.floor(ile / (1000 * 60 * 60 * 24));
var shi = Math.floor(ile /1000/60/60%24);
var fen = Math.floor(ile /1000/60%60);
var miao = Math.floor(ile /1000%60);

$(document).ready(function(){

	$("#daoji").html(dni);
	$("#daojishi").html(shi);
	$("#daojifen").html(fen);
	$("#daojimiao").html(miao);
	
	$('.topNavigation .level1 > li').hover(function() {
		$(this).find('.level2').animate({ opacity:'show', height:'show' },300);
	}, function() {
		$('.level2').stop(true,true).hide();
	}).slice(-3,-1).find('.children').addClass('sleft');

	$("a.fancybox-weixin").fancybox({
		'padding'			: 0,
		'transitionIn'		: 'elastic',
		'transitionOut'		: 'elastic',
		'type'				: 'image'
	});

});