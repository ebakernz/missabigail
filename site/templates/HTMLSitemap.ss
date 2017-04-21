<% include DocumentHead %>

	<div class="wrapper">

		<% include PageHead %>
		
		<main class="typography">

			<div class="inner cf">
				<div class="liner cf">

					<% cached 'sitemap', $List('SiteTree').max('LastEdited'), $List('SiteTree').count() %>
					
						<% if Menu(1) %>
							<%-- level 1 --%>
							<ul>
							<% loop Menu(1) %>
								<% if not ExcludeFromSitemap %>
									<li>
										<a href="$Link" title="{$Title}">$MenuTitle.XML</a>
										<% if Children %>
											<% include SitemapNextLevel %>
										<% end_if %>

										<% if Top.GalleryCategoryToMenu($ID) %>
							          		<ul class="secondary">

								          		<% loop Top.GalleryCategoryToMenu($ID) %>
								          			<li><a href="{$GalleryPageLink}filter/$URLName">$Title</a></li>
								          		<% end_loop %>
							                
								          	</ul>
							          	<% end_if %>
							          	
									</li>
								<% end_if %>
							<% end_loop %>
							</ul>
						<% else %>
						
							<p>There are no pages in this site yet.</p>
							$Content
							$Form
						
						<% end_if %>
					
					<% end_cached %>
					
					<div class="clear"></div>

				</div>
			</div>
		</main>
		
		<% include PageFoot %>

	</div>
		

<% include DocumentFoot %>