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
            panel.css({ 'background-image': 'url('+ panel.data('large') +')' });

        } else if( panelWidth > config.multiSize.medium && panel.data('medium') ){
            panel.css({'background-image': 'url('+ panel.data('medium') +')' });

        } else if(panel.data('small')){
            panel.css({'background-image': 'url('+ panel.data('small') +')' });
        }

    });

}


function GeneralSlides() {

	// Click on slide nav overrides timer
	$('.general.slides .slidenav a').click( function(evt) {
		evt.preventDefault();
		GeneralSlides( 'click', $(this).attr('href') );
		clearInterval( setSliderTimer );		
	});
	
	function GeneralSlides( mode, destination ){

		if( mode == 'first') {
			$('.general.slides .slide:eq(0)').css({ 'z-index' : 3 });
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
		$('.general.slides .slide').css({ 'z-index' : 1 });
		
		// move current on top of bottom stack
		$('.general.slides .slide:eq(' + current + ')').css({ 'z-index' : 2 });
		
		// move next slide to top with 0% opacity and then animate in
		$('.general.slides .slide:eq(' + next + ')').css({ 'z-index' : 3, 'opacity': 0 }).animate({ 'opacity' : 1 }, 800);
		
		// --- UPDATE COUNTER
		current = next;	
	
		
	}
	
	// number of slides
	var numSlides = $('.general.slides .slide').length - 1;

	// Check if there is more than 1 slide, so don't flash single image
	if( numSlides ) {
	
		// current slider
		var current = 0;
		
		// declare variable
		var next = 1;
		
		// run function on load
		GeneralSlides( 'first' );

		// initiate timed slides, default timing every 7 secs
		var transition = 7000;

		// If sidebar page slider, transition every 4 secs
		if( $('.sidebar .slides').length > 0 ) {
			var transition = 4000;
		} 

		var setSliderTimer = setInterval( GeneralSlides, transition );
	
	}
}

function GallerySlides() {

	// Click on slide nav overrides timer
	$('.GalleryPage .slides .slidenav a').click( function(evt) {
		evt.preventDefault();
		changeGallerySlides( 'click', $(this).attr('href') );
	});

	if( $(window).width() > 500 ) {
		// Click on gallery item to trigger
		$('.gallery-items .popup-trigger').click(function(evt) {
	        evt.preventDefault();
	        var href = $(this).attr('data-eq');
	        var num = href - 1;
	        changeGallerySlides( 'select', num );
	    });
	}
	
	function changeGallerySlides( mode, destination ){

		if( mode == 'first') {
			$('.GalleryPage .slides .slide:eq(0)').css({ 'z-index' : 3, 'opacity': 1 });
			return false;
		}

		if( mode == 'select' ) {
			next = destination;
			$('.GalleryPage .slides .slide').css({ 'z-index' : 1, 'opacity': 0 });
			$('.GalleryPage .slides .slide:eq(' + next + ')').css({ 'z-index' : 3, 'opacity': 1 });
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
		$('.GalleryPage .slides .slide').css({ 'z-index' : 1,  'opacity': 0 });
		
		// move current on top of bottom stack
		$('.GalleryPage .slides .slide:eq(' + current + ')').css({ 'z-index' : 2,  'opacity': 0 });
		
		// move next slide to top with 0% opacity and then animate in
		$('.GalleryPage .slides .slide:eq(' + next + ')').css({ 'z-index' : 3, 'opacity' : 0 }).animate({ 'opacity' : 1 }, 500);
		
		// --- UPDATE COUNTER
		current = next;	
	
		
	}
	
	// number of slides
	var numSlides = $('.GalleryPage .slides .slide').length - 1;

	// Check if there is more than 1 slide, so don't flash single image
	if( numSlides ) {
	
		// current slider
		var current = 0;
		
		// declare variable
		var next = 1;
		
		// run function on load
		changeGallerySlides( 'first' );
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

    // bind esc key to close
	$(document).keyup(function(e){		
		if(e.keyCode === 27)
			$('#popups').hide().fadeOut(500);
	});
}

function MobileNavExpansion() {
	
	$('#mob-icon').click(function() {
		$(this).toggleClass('open');
		
		$('.nav-panel').toggleClass('active');
		
	});
	
	// If using mobile nav, smaller than ipad portrait
	if( $(window).width() < 700 ) {

		console.log('testing');

		var dropdowns = $('.mainnav li.dropdown > a');
		$(dropdowns).click(function(evt) {
			evt.preventDefault();
			$(this).toggleClass('open');
			$(this).next('.secondary').toggle();
		});

	}

}


function TestimonialSlider() {

	// Click on slide nav overrides timer
	$('.testimonials .slidenav a').click( function(evt) {
		evt.preventDefault();
		changeTestimonials( 'click', $(this).attr('href') );
		clearInterval( setSliderTimer );		
	});
	
	function changeTestimonials( mode, destination ){

		if( mode == 'first') {
			$('.testimonials .quote:eq(0)').css({ 'z-index' : 3, 'opacity': 1 });
			return false;
		}
		
		// if no destination specified
		if( mode == 'click' ){			
			if( destination == 'prev' ) {				
				if( current == 0 ){
					next = numQuotes;
				} else {
					next = current - 1;
				}				
			} else {
				// if at last element
				if( current == numQuotes ){
					next = 0;
				} else {
					next = current + 1;
				}
			}			
		} else {
			// if at last element
			if( current == numQuotes ){
				next = 0;
			} else {
				next = current + 1;
			}
		}
				
		// --- UPDATE SLIDER		
		// move all to bottom
		$('.testimonials .quote').css({ 'z-index' : 1, 'opacity': 0 });
		
		// move current on top of bottom stack
		$('.testimonials .quote:eq(' + current + ')').css({ 'z-index' : 2, 'opacity': 0 });
		
		// move next quote to top with 0% opacity and then animate in
		$('.testimonials .quote:eq(' + next + ')').css({ 'z-index' : 3, 'opacity' : 0 }).animate({ 'opacity' : 1 }, 500);
		
		// --- UPDATE COUNTER
		current = next;	
	
		
	}
	
	// number of slides
	var numQuotes = $('.testimonials .quote').length - 1;

	// Check if there is more than 1 slide, so don't flash single image
	if( numQuotes ) {
	
		// current slider
		var current = 0;
		
		// declare variable
		var next = 1;
		
		// run function on load
		changeTestimonials( 'first' );

		// initiate timed slide
		var setSliderTimer = setInterval( changeTestimonials, 10000 );
	}
}



$(document).ready( function() {
	// Change out images based on screen size
	ResponsiveBG();

	if( $(window).width() > 500 ) {
		// only do popup gallery if bigger than 500px
		Popups();
	}

	// Homepage and sidebar slides
	if( $('.HomePage .slides .slide, .sidebar .slides .slide').length > 0 ) GeneralSlides();

	// Gallery slides, in popup
	if( $('.GalleryPage .slides .slide').length > 0 ) GallerySlides();

	// Hide/show nav for smaller devices
	MobileNavExpansion();

	// Long page
	console.log('window ' + $(window).height());
	console.log('main ' + $('main').height());
	
	if( $('main').height() > $(window).height() ) {
		$('.wrapper').addClass('long');
	}

	// Testimonial slider
	if( $('.quote').length > 1 ) TestimonialSlider();
});

// when screen is changed, recheck
$(window).resize(function(){
    ResponsiveBG();
});

/*$(window).scroll( function() {
    ResponsiveBG();
});*/

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
