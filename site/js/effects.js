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

function Slides() {

	// Click on slide nav overrides timer
	$('.slides .slidenav a').click( function(evt) {
		evt.preventDefault();
		changeSlides( 'click', $(this).attr('href') );
		clearInterval( setSliderTimer );		
	});

	if( $(window).width() > 500 ) {
		// Click on gallery item to trigger
		$('.gallery-items .popup-trigger').click(function(evt) {
	        evt.preventDefault();
	        var href = $(this).attr('data-eq');
	        var num = href - 1;
	        changeSlides( 'select', num );
	        clearInterval( setSliderTimer );
	    });
	}
	
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

function ResizePopups() {
	
	//Get container and image
    var image = $('#popups .popup-content.slides .slide .item').first();
    var container = $(window);

    //Get container dimensions
    var container_height = container.height();
    var container_width = container.width();

    console.log('container_height ' + container_height + ' container_width ' + container_width );

    //Get image dimensions
    var image_height = image.height();
    var image_width = image.width();

    console.log('image_height ' + image_height + ' image_width ' + image_width );

    //Calculate the center of image since origin is at x:50% y:50%
    var image_center_left = image_width / 2.0;
    var image_center_top = image_height / 2.0;

    console.log('image_center_left ' + image_center_left + ' image_center_left ' + image_center_left );

    //Calculate scaling factor
    var zoom_factor;

    //Check to determine whether to stretch along width or heigh
    if(image_height > image_width)
        zoom_factor = container_height / image_height;
    else
        zoom_factor = container_width / image_width;

    console.log( zoom_factor );

    /*//Zoom by zoom_factor
    $panzoom.panzoom("zoom", zoom_factor, {animate: false});

    //Calculate new image dimensions after zoom
    image_width = image_width * zoom_factor;
    image_height = image_height * zoom_factor;

    //Calculate offset of the image after zoom
    var image_offset_left = image_center_left - (image_width / 2.0);
    var image_offset_top = image_center_top - (image_height / 2.0);

    //Calculate desired offset for image
    var new_offset_left = (container_width - image_width) / 2.0;
    var new_offset_top = (container_height - image_height) / 2.0;

    //Pan to set desired offset for image
    var pan_left = new_offset_left - image_offset_left;
    var pan_top = new_offset_top - image_offset_top;
    $panzoom.panzoom("pan", pan_left, pan_top);*/

}

function MobileNavExpansion() {
	
	$('#mob-icon').click(function() {
		$(this).toggleClass('open');
		
		$('.nav-panel').toggleClass('active');
		
	});
	
}



$(document).ready( function() {
	ResponsiveBG();
	if( $(window).width() > 500 ) {
		Popups();
	}
	if( $('.slides .slide').length > 0 ) Slides();
	ResizePopups();
	MobileNavExpansion();
});

$(window).resize(function(){
    ResponsiveBG();
    ResizePopups();
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
