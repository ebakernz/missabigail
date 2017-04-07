<% if GalleryItems %>
	<div class="grid">
		<% loop GalleryItems %>

			<a class="item grid-item float-left $ColWidth popup-trigger" data-eq="$Pos" style="background-image: url('$Image.URL')"<% if Title %> alt="$Title"<% end_if %>>
			</a>

		<% end_loop %>
	</div>
<% end_if %>