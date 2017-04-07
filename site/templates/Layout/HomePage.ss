<% if Slides %>
	<div class="slides">
		<% loop Slides %>

			<div class="slide" style="background-image: url('$SlideImg.URL')" alt="$Title"></div>

		<% end_loop %>

		<if not SingleSlide %>
			<div class="slidenav">
				<a href="prev" class="left"><i class="fa fa-angle-left"></i></a>
				<a href="next" class="right"><i class="fa fa-angle-right"></i></a>
			</div>
		<% end_if %>
	</div>
<% end_if %>

<main class="typography fixtotop">
	  
	<div class="inner">
	</div>  


</main>