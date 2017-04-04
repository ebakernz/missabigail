<main class="typography fixtotop">

	<% if Slides %>
		<div class="slides">
			<% loop Slides %>

				<div class="slide" style="background-image: url('$SlideImg.URL')" alt="$Title"></div>

			<% end_loop %>

			<div class="slidenav">
				<a href="left" class="left"><i class="fa fa-angle-left"></i></a>
				<a href="right" class="right"><i class="fa fa-angle-right"></i></a>
			</div>
		</div>
	<% end_if %>
	  
	<div class="inner">
	</div>  


</main>