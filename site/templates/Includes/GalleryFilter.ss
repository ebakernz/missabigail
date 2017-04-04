<% if ShowFilter %>
	<div class="filter">
		<p>Filter by:</p>
		<a href="$Link">All</a>
		<% if Categories %>
			<% loop Categories %>
				<a href="{$Top.Link}filter/$URLName">
					$Title
				</a>
			<% end_loop %>
		<% end_if %>
	</div>
<% end_if %>