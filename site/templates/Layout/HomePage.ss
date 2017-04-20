<% if Slides %>
	<div class="slides general">
		<% loop Slides %>

			<div class="slide responsive-bg" style="background-image: url('$SlideImg.setWidth(1000).URL')"
				data-large="$SlideImg.setWidth(2000).URL"
				data-medium="$SlideImg.setWidth(1200).URL"
				data-small="$SlideImg.setWidth(700).URL"
				<% if Title %> alt="$Title"<% end_if %>
			></div>

		<% end_loop %>

		<% if not SingleSlide %>
			<div class="slidenav">
				<a href="prev" class="left"><i class="fa fa-angle-left"></i></a>
				<a href="next" class="right"><i class="fa fa-angle-right"></i></a>
			</div>
		<% end_if %>
	</div>
<% end_if %>
