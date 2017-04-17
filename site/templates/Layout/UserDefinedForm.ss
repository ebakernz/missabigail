<main class="typography">

	<div class="inner">
        <div class="liner cf">

            <div class="float-left w1x2-right-spaced">

                <div class="contact-details">

                    $Content

                    <% if SiteConfig.Address %>
                        <p class="cf">
                        	<i class="fa fa-map-marker"></i>
                        	<span>$SiteConfig.Address</span>
                        </p>
                    <% end_if %>

                    <% if SiteConfig.Phone %>
                        <p class="cf">
                        	<i class="fa fa-phone"></i>
                        	<span>$SiteConfig.Phone</span>
                        </p>
                    <% end_if %>

                    <% if SiteConfig.Mobile %>
                        <p class="cf">
                        	<i class="fa fa-mobile"></i>
                        	<span>$SiteConfig.Mobile</span>
                        </p>
                    <% end_if %>

                    <% if SiteConfig.Email %>
                        <p class="cf">
                        	<i class="fa fa-envelope"></i>
                        	<span>$SiteConfig.Email</span>
                        </p>
                    <% end_if %>
                

                <div class="social">
                
                    <% if SiteConfig.Instagram %>
                        <a href="$SiteConfig.Instagram" class="social instagram" title="Go to Miss Abigail Bridal Couture Instagram" target="_blank"><i class="fa fa-instagram"></i></a>
                    <% end_if %>
                    <% if SiteConfig.Facebook %>
                        <a href="$SiteConfig.Facebook" class="social facebook" title="Go to Miss Abigail Bridal Couture Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                    <% end_if %>

                    <% if SiteConfig.Twitter %>
                        <a href="$SiteConfig.Twitter" class="social twitter" title="Go to Miss Abigail Bridal Couture Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                    <% end_if %>

                    <% if SiteConfig.Pinterest %>
                        <a href="$SiteConfig.Pinterest" class="social pinterest" title="Go to Miss Abigail Bridal Couture Pinterest" target="_blank"><i class="fa fa-pinterest"></i></a>
                    <% end_if %>

                    <% if SiteConfig.Email %>
                        <a href="mailto:{$SiteConfig.Email}" id="email" title="Email Miss Abigil Bridal Couture" target="_blank"><i class="fa fa-envelope"></i></a>
                    <% end_if %>

                </div>

                </div>

            </div>

            <div class="float-left w1x2-left-spaced">
                <h1 class="script-font">Or send me a message</h1>
                $Form
            </div>

        </div>
    </div>  
    

</main>