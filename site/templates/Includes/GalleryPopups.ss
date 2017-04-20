<div id="popups" class="gallery">
	<div class="close"></div>
	<div class="inner">
	
		<div class="popup-content slides">
			<% if GalleryItems %>
				<% loop GalleryItems %>

					<div class="slide">
						<img class="item $ImageOrientation"
							<% if ImageOrientation == 'portrait' %>
								src="$Image.setheight(1700).URL"
							<% else %>
								src="$Image.setWidth(1700).URL"
							<% end_if %>
						/>
					</div>

				<% end_loop %>
			<% end_if %>

			<div class="slidenav">
				<a href="prev" class="left"><i class="fa fa-angle-left"></i></a>
				<a href="next" class="right"><i class="fa fa-angle-right"></i></a>
			</div>
		</div>
	
	</div>
</div>