<% include DocumentHead %>

	<div class="wrapper" <% if BackgroundImage %>style="background-image: url($BackgroundImage.URL)"<% end_if %>>

		<% include PageHead %>
		
		$Layout
		
		<% include PageFoot %>

	</div>

<% include DocumentFoot %>