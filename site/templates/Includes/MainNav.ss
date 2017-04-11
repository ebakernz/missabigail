<nav class="mainnav">
	<ul class="cf">
		<% loop Menu(1) %>
          <li class="$LinkingMode">
          	<a href="$Link">$MenuTitle.XML</a>

          	<% if GalleryCategoryToMenu($ID) %>
          		<ul class="secondary">
	          		<% loop GalleryCategoryToMenu($ID) %>
	          			<li class="$LinkingMode"><a href="$Link">$MenuTitle.XML</a></li>
	          		<% end_loop %>
	          	</ul>
          	<% end_if %>

          </li>
       <% end_loop %>
	</ul>
</nav>