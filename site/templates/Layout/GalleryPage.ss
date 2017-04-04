
<main class="typography">

	<div class="gallery-items inner cf">

		<% include GalleryFilter %>
                
		<% if GalleryItems %>
			<% loop GalleryItems %>

				<a href="$Image.URL" class="item float-left $ColWidth popup-trigger slideshow" style="background-image: url('$Image.URL')" alt="$Title">
				</a>

			<% end_loop %>
		<% end_if %>
      
    </div>  
    

</main>

<div id="popups" class="slideshow"></div>