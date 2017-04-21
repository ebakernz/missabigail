<nav class="mainnav">
	<ul class="inner cf">
		<% loop Menu(1) %>
          <li class="$LinkingMode<% if ClassName == 'GalleryPage' %> dropdown<% end_if %>">
          	<a <% if ClassName != 'GalleryPage' %>href="$Link"<% end_if %>>
          		$MenuTitle.XML
          		<span></span>
          	</a>

          	<% if Top.GalleryCategoryToMenu($ID) %>
          		<ul class="secondary">

	          		<% loop Top.GalleryCategoryToMenu($ID) %>
	          			<li><a href="{$GalleryPageLink}filter/$URLName">$Title</a></li>
	          		<% end_loop %>
                
	          	</ul>
          	<% end_if %>

          </li>
       <% end_loop %>
	</ul>
</nav>