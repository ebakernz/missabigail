<% if GalleryItems %>
	<div class="grid">
		<% loop GalleryItems %>

			<a class="item grid-item float-left $ImageOrientation popup-trigger" data-eq="$Pos" 

				<% if ImageOrientation == 'portrait' %>
					style="background-image: url('$Image.setHeight(600).URL')"
				<% else %>
					style="background-image: url('$Image.setWidth(600).URL')"
				<% end_if %>

				<% if Title %> alt="$Title"<% end_if %>>
			</a>

		<% end_loop %>
	</div>
<% end_if %>