<% if GalleryItems %>
	<div class="grid">
		<% loop GalleryItems %>

			<a href="$Image.URL" class="item grid-item float-left $ImageOrientation $ColWidth popup-trigger slideshow" data-eq="$Pos" style="background-image: url('$Image.URL')" data-link="$Image.URL" alt="$Title">
			</a>

		<% end_loop %>
	</div>
<% end_if %>