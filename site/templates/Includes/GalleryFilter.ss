<% if ShowFilter %>
	<div class="filter">
		
		<a class="button<% if FilterActive(all) %> active<% end_if %>" href="$Link">All</a>
		<% if Categories %>
			<% loop Categories %>
				<a class="button<% if Top.FilterActive($URLName) %> active<% end_if %>" href="{$Top.Link}filter/$URLName">
					$Title
				</a>
			<% end_loop %>
		<% end_if %>
	</div>
<% end_if %>