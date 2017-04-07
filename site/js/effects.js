/*

	Effects 
*/


// config for screensize thresholds and settings
var config = {
    multiSize: {
        large: 1150,
        medium: 660,
        small: 400
    }
};

/**
 * Multi-size graphics
 * These allow us to load the relevant image size, depending on the size of the screen
 * By default we load a mobile-sized image initially, and swap to larger pics if applicable
 **/
function ResponsiveBG(){

    $('.responsive-bg').each( function( key, panel ){

        panel = $(panel);
        var panelWidth = panel.outerWidth();
        
        if( panelWidth > config.multiSize.large && panel.data('large') ){
            panel.delay(1000).css({ 'background-image': 'url('+ panel.data('large') +')' });
        }else if( panelWidth > config.multiSize.medium && panel.data('medium') ){
            panel.css({'background-image': 'url('+ panel.data('medium') +')' });
        }else if(panel.data('small')){
            panel.css({'background-image': 'url('+ panel.data('small') +')' });
        }

    });

}

function Slides() {

	// Click on slide nav overrides timer
	$('.slides .slidenav a').click( function(evt) {
		evt.preventDefault();
		changeSlides( 'click', $(this).attr('href') );
		clearInterval( setSliderTimer );		
	});

	// Click on gallery item to trigger
	$('.gallery-items .popup-trigger').click(function(evt) {
        evt.preventDefault();
        var href = $(this).attr('data-eq');
        var num = href - 1;
        changeSlides( 'select', num );
        clearInterval( setSliderTimer );
    });
	
	function changeSlides( mode, destination ){

		if( mode == 'first') {
			$('.slides .slide:eq(0)').css({ 'z-index' : 3 });
			return false;
		}

		if( mode == 'select' ) {
			next = destination;
			$('.slides .slide').css({ 'z-index' : 1 });
			$('.slides .slide:eq(' + next + ')').css({ 'z-index' : 3 });
			current = next;
			return false;
		}
		
		// if no destination specified
		if( mode == 'click' ){			
			if( destination == 'prev' ) {				
				if( current == 0 ){
					next = numSlides;
				} else {
					next = current - 1;
				}				
			} else {
				// if at last element
				if( current == numSlides ){
					next = 0;
				} else {
					next = current + 1;
				}
			}			
		} else {
			// if at last element
			if( current == numSlides ){
				next = 0;
			} else {
				next = current + 1;
			}
		}
				
		// --- UPDATE SLIDER		
		// move all to bottom
		$('.slides .slide').css({ 'z-index' : 1 });
		
		// move current on top of bottom stack
		$('.slides .slide:eq(' + current + ')').css({ 'z-index' : 2 });
		
		// move next slide to top with 0% opacity and then animate in
		$('.slides .slide:eq(' + next + ')').css({ 'z-index' : 3, 'opacity' : 0 }).animate({ 'opacity' : 1 }, 1000);
		
		// --- UPDATE COUNTER
		current = next;	
	
		
	}
	
	// number of slides
	var numSlides = $('.slides .slide').length - 1;

	// Check if there is more than 1 slide, so don't flash single image
	if( numSlides ) {
	
		// current slider
		var current = 0;
		
		// declare variable
		var next = 1;
		
		// run function on load
		changeSlides( 'first' );
		
		// initiate timed slide, accept for gallery page (hidden, only change on click)
		if( $('.GalleryPage').length == 0 ) {
			var setSliderTimer = setInterval( changeSlides, 7000 );
		}
	}
}

/* initiate popups */
function Popups() {
    $('.popup-trigger').click(function(evt){
        evt.preventDefault();
        $('#popups').show().fadeIn(100);        
    });

    $('#popups .close').click(function(){
        //$('.popup').toggleClass('hide');
        $('#popups').hide().fadeOut(100);
    //    $('#popups .popup-content').empty();
    });
}


$(document).ready( function() {
	ResponsiveBG();
	if( $('.slides .slide').length > 0 ) Slides();
	Popups();
});

$(window).resize(function(){
    ResponsiveBG();
});

$(window).scroll( function() {
    ResponsiveBG();
});

/*
function Slide( direction, target ){

	// gather the facts
	var slideAmount = $(target).find('.slide').outerWidth();
	var originPosition = parseFloat( $(target).find('.liner').css('left').replace('px', '') );
	var destinationPosition = 0;
	var slideLinerWidth = parseFloat( $(target).find('.liner').outerWidth() );

	// we're sliding next
	if( direction == 'next' ){

		// check limits
		if( originPosition <= -(slideLinerWidth - slideAmount) ){

			// slide to first slide
			destinationPosition = 0;
		} else {	

			// calculate next slide destination
			destinationPosition = originPosition - slideAmount;
		}

	// we're sliding previous
	} else if( direction == 'prev' ) {

		// check limits
		if( originPosition >= 0 ){

			// slide to last slide
			destinationPosition = -( slideLinerWidth - slideAmount );

		} else {

			// calculate prev slide destination
			destinationPosition = originPosition + slideAmount;
		}

	}

	// animate to destination position
	$(target).find('.liner').animate({
		'left': destinationPosition
	}, 200);
	
}*/
