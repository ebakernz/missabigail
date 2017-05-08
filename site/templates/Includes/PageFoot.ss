<footer>

    <div class="inner cf">
    
        <ul class="float-left w1x2"> 
            <% loop Menu(1) %>
                <li><a href="$Link">$MenuTitle.XML</a></li>
            <% end_loop %>
        </ul>

        <div class="float-right w1x2">

            <div class="social-links cf">
                <% if SiteConfig.Instagram %>
                    <a href="$SiteConfig.Instagram" target="_blank" class="social instagram" title="Go to Miss Abigail Bridal Couture Instagram"><i class="fa fa-instagram"></i></a>
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
            
            <p class="float-right copy">Copyright &copy; Miss Abigail, {$Now.Year}. <span>&nbsp;Site by Emma Baker.</span></p>
            
        </div>

    </div>

</footer>