<div id="popups" class="gallery">
	<div class="close fa fa-times"></div>
	<div class="inner">
	
		<div class="popup-content slides">
			<% if GalleryItems %>
				<% loop GalleryItems %>

					<div class="slide">
						<div class="item $ImageOrientation" 
							<% if ImageOrientation == 'portrait' %>
								style="background-image: url('$Image.setHeight(1200).URL')" 
							<% else %>
								style="background-image: url('$Image.setWidth(1200).URL')" 
							<% end_if %>

							alt="$Title"></div>
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