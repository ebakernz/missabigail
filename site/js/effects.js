/*

	Effects 
*/

function GalleryPagePopupSlider() {

	$('.gallery-items .item').click(function() {

	})

}

function AllSlides() {
	
	// Click on slide nav overrides timer
	$('.slides nav a').click( function(evt) {
		evt.preventDefault();
		changeSlides( 'click', $(this).attr('class') );
		clearInterval( setSliderTimer );		
	});
	
	function changeSlides( mode, destination ){
	
		if( mode == 'first') {
			$('.slides .slide:eq(0)').css({ 'z-index' : 3 });
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
		
		// update activated controls
		$('.homeSlides nav a').removeClass('active');
		$('.homeSlides nav a:eq(' + next + ')').addClass('active');
		
		// --- UPDATE SLIDER		
		// move all to bottom
		$('.slides .slide').css({ 'z-index' : 1, 'opacity' : 0 });
		
		// move current on top of bottom stack
		$('.slides .slide:eq(' + current + ')').css({ 'z-index' : 2 });
		
		// move next slide to top with 0% opacity and then animate in
		$('.slides .slide:eq(' + next + ')').css({ 'z-index' : 3, 'opacity' : 0 }).animate({ 'opacity' : 1 }, 1000);
		
		// --- UPDATE COUNTER
		current = next;	
		
	}
	
	// number of slides
	var numSlides = $('.slides .slide').size() - 1;
	
	// current slider
	var current = 0;
	
	// declare variable
	var next = 1;
	
	// run function on load
	changeSlides( 'first' );
	
	// initiate timed slide
	var setSliderTimer = setInterval( changeSlides, 7000 );
	
	
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
        $('#popups .popup-content').empty();
    });
}

/*
    Event enquiries
 */
/*
function BookingEnquiries() {

    if( $('.button.booking').length > 0 ) {

        var popup = $('.booking-form-popup').first();
        var target = popup.find('.popup-content');

        $('.popup-trigger.booking').click(function(evt) {
            evt.preventDefault();

            // Fetch form
            $.ajax({

                url: $(this).attr('href') + 'RenderEnquiryForm/',
                method: 'GET',
                success: function( response ){
                    target.html( response );
                },
                error: function( response ){
                    alert('There was a problem, please try again');
                }

            });

        });

        $('#Form_EnquiryForm .button').click(function() {

            var form = $(this).closest('form');

            var valid = true;
            var required_fields = [
                form.find('input[name=Name]'),
                form.find('input[name=Email]')
            ];

            // check required fields contain something
            // if not, set valid to false and add error classes

            $.each(required_fields, function(key, field) {
                if( !field.val() ){
                    valid = false;
                    field.addClass('required error');
                }
            })

            if( !valid ) {
                alert('Please complete all the required fields');
            } else {
                // otherwise, submit the form
                $.ajax({

                    url: form.attr('action') + 'SubmitEnquiryForm/',
                    type: form.attr('method'),
                    data: form.serialize(),
                    success: function(response) {
                        json = jQuery.parseJSON( response);
                        if(json.HTML) {
                            target.html(json.HTML);
                        }
                    },
                    error: function(response) {
                        alert('There was a problem, please try again');
                    }
                });
            }

        });

        // Handle clearing of error classes from required inputs - as content is typed
        
        $('#Form_EnquiryForm input.text, #Form_EnquiryForm textarea').change(function() {
            if( $(this).hasClass('required error') ){
                if( $(this).val() ){
                    $(this).removeClass('required error');
                }
            }
        });

    } else {
        console.log('nope');
    }
}
*/
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

$(document).ready( function() {
	
	GalleryPagePopupSlider();
	AllSlides();
	Popups();

});