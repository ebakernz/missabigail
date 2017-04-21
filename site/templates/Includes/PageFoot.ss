<footer>

    <div class="inner cf">
    
        <ul class="float-left w1x2"> 
            <% loop Menu(1) %>
                <li><a href="$Link">$MenuTitle.XML</a></li>
            <% end_loop %>
        </ul>

        <div class="float-right w1x2">

            <div class="social-links cf">
                <a href="$SiteConfig.Instagram" target="_blank" class="social instagram" title="Go to Miss Abigail Bridal Couture Instagram"><i class="fa fa-instagram"></i></a>
                <a href="$SiteConfig.Facebook" target="_blank" class="social facebook" title="Go to Miss Abigail Bridal Couture Facebook"><i class="fa fa-facebook"></i></a>
                <a href="mailto:enquiries@missabigail.co.nz" target="_blank" title="Email Miss Abigil Bridal Couture"><i class="fa fa-envelope"></i></a>
            </div>
            
            <p class="float-right copy">Copyright &copy; Miss Abigail, {$Now.Year}. &nbsp;Site by Emma Baker.</p>
            
        </div>

    </div>

</footer>