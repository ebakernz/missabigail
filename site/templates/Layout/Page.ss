
<main class="typography">

	<div class="inner cf">
		<div class="liner cf">

			<% if Slides %>

				<div class="float-left w1x2">
					$Content					
				</div>

				<div class="sidebar float-left w1x2-left-spaced">

					<% if SingleSlide %>
						<% loop Slides %>
							<img class="slide single" src="$SlideImg.croppedImage(600,700).URL" alt="$Title" />
						<% end_loop %>
					<% else %>

						<div class="slides general">

							<% loop Slides %>
								<div class="slide" style="background-image: url('$SlideImg.croppedImage(600,700).URL')" alt="$Title"></div>
							<% end_loop %>

							<div class="slidenav">
								<a href="prev" class="left"><i class="fa fa-angle-left"></i></a>
								<a href="next" class="right"><i class="fa fa-angle-right"></i></a>
							</div>

						</div>

					<% end_if %>

					<% if Testimonials %>
						<% include Testimonials %>
					<% end_if %>

				</div>


			<% else %>

				$Content
	        	$Form

			<% end_if %>
        
        </div>
    </div>  
    

</main>