<% if Slides %>
	<div class="slides">
		<% loop Slides %>

			<div class="slide" style="background-image: url('$SlideImg.URL')" alt="$Title"></div>

		<% end_loop %>

		<div class="slidenav">
			<a href="prev" class="left"><i class="fa fa-angle-left"></i></a>
			<a href="next" class="right"><i class="fa fa-angle-right"></i></a>
		</div>
	</div>
<% end_if %>

<main class="typography fixtotop">
	  
	<div class="inner">
	</div>  


</main>