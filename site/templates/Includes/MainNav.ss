<nav class="mainnav">
	<ul class="cf">
		<% loop Menu(1) %>
          <li class="<% if Top.ActiveGalleryNav($ID) %>section<% else %>$LinkingMode<% end_if %>">
          	<a href="$Link">$MenuTitle.XML</a>

          	<% if Top.GalleryCategoryToMenu($ID) %>
          		<ul class="secondary">
	          		<% loop Top.GalleryCategoryToMenu($ID) %>
	          		 <li class="$LinkingMode"><a href="{$GalleryPageLink}filter/$URLName">$Title</a></li>
	          		<% end_loop %>
                
	          	</ul>
          	<% end_if %>

          </li>
       <% end_loop %>
	</ul>
</nav>