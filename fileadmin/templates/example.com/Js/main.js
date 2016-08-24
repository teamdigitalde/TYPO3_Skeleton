var bodywidth = document.body.clientWidth;
// Fancybox
$(document).ready(function() {
	$('.fancybox').fancybox();
	$('.dropdown-submenu > a').submenupicker();
});

// Dropdown mit Slideout
/*
$('.navbar .dropdown, .dropdown-submenu ').hover(function() {
	if(bodywidth >= 720) {
		$(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();
		$(this).find('.dropdown-menu-arrow').first().stop(true, true).delay(250).slideDown();
	}
}, function() {
	if(bodywidth >= 720) {
		$(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp();
		$(this).find('.dropdown-menu-arrow').first().stop(true, true).delay(100).slideUp();
	}
});
*/

// Bei der 1. Ebene wird nach einem Klick der Link zur Seite aktiviert
/* 
$('li.dropdown').on('click', function() {
    var $el = $(this);
    if ($el.hasClass('open')) {
        var $a = $el.children('a.dropdown-toggle');
        if ($a.length && $a.attr('href')) {
            location.href = $a.attr('href');
        }
    }
});
*/

// Show ToTop-Icon only if scrolled a little bit down
var showed = false;
var scrollTop = 0;
function jumpToElement(elem) {
    if( elem.length ) {
        $('html, body').animate({
            scrollTop: $(elem).offset().top}, {
            duration: 1000,
            complete: function(){
                hideToTop();
            }
        });

    }
}
window.onscroll = function() {
    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
    if (scrollTop > 400) {
        if(!showed) {
            showToTop();
        }
    } else {
        if(showed) {
            hideToTop();
        }
    }
};
function hideToTop() {
    $( "div.totop" ).hide( "slow");
    showed = false;
}
function showToTop() {
    $( "div.totop" ).show( "slow");
    showed = true;
}
window.onresize = function(event) {
    bodywidth = document.body.clientWidth;
};