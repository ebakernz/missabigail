<div class="testimonials">
	<h3>What people have been saying</h3>

	<% loop Testimonials %>

		<div class="quote">
			<p>"$Quote"</p>
			<p class="author">$Author</p>
		</div>

	<% end_loop %>

	<% if MultiTestimonials %>
		<div class="slidenav">
			<a href="prev" class="left"><i class="fa fa-angle-left"></i></a>
			<a href="next" class="right"><i class="fa fa-angle-right"></i></a>
		</div>
	<% end_if %>
</div>