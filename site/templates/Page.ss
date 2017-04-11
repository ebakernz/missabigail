<% include DocumentHead %>

	<div class="wrapper responsive-bg"
		<% if BackgroundImage %>
			style=""
			data-large="$BackgroundImage.setWidth(2000).URL"
			data-medium="$BackgroundImage.setWidth(1200).URL"
			data-small="$BackgroundImage.setWidth(700).URL"
		<% end_if %>>
		<!-- style="background-image: url($BackgroundImage.setWidth(700).URL)" -->

		<% include PageHead %>
		
		$Layout
		
		<% include PageFoot %>

	</div>

<% include DocumentFoot %>