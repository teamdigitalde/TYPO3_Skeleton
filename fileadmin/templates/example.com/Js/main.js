var bodywidth = document.body.clientWidth;
// Fancybox
$(document).ready(function() {
	$('.fancybox').fancybox();
	$('.dropdown-submenu > a').submenupicker();
	
	    // ersetzt das (at) durch @ ohne das für crawler offen zu legen
    $('a[href*="linkTo_UnCryptMailto"]').each(function() {
		if(typeof $(this) === 'string'){
			$(this).text($(this).text().replace('(at)', '@'));
		}
    });
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

// tel: usw. auf dem Desktop nicht verlinken
$('a[href^="tel:"], a[href^="fax:"], a[href^="sms:"]').click(function() {
    if (navigator.userAgent.search(/(Android|iPhone|Windows Phone|Blackberry)/i) == -1) {
        return false;    
                }});

if (navigator.userAgent.search(/(Android|iPhone|Windows Phone|Blackberry)/i) == -1) {
    $('a[href^="tel:"]').css({
        color: 'white',  // Schriftfarbe des Links
        textDecoration: 'none' // Unterstreichung unterdrücken
    });
    $('a[href^="tel:"]').mouseenter(function() {
         $(this).css({
             cursor: 'text' // Cursor beim Hover-State auf text setzen
         });
    });
}
// tel: usw. auf dem Desktop nicht verlinken - ENDE


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