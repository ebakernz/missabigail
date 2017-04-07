<footer>

    <div class="inner cf">
    
        <ul class="float-left w1x3"> 
            <% loop ShowAllFooterLinks %>
                <li><a href="ShowPageLink">$FooterText</a></li>
            <% end_loop %>
        </ul>

        <div class="float-left w1x3">
            <p class="copy">Copyright &copy; Miss Abigail, {$Now.Year}. <span>Site by Emma Baker.</span></p>
        </div>

        <div class="float-right w1x3">
            <a href="$SiteConfig.Instagram" class="social instagram" title="Go to Miss Abigail Bridal Couture Instagram"><i class="fa fa-instagram"></i></a>
            <a href="$SiteConfig.Facebook" class="social facebook" title="Go to Miss Abigail Bridal Couture Facebook"><i class="fa fa-facebook"></i></a>
            <a href="mailto:enquiries@missabigail.co.nz" id="email" title="Email Miss Abigil Bridal Couture"><i class="fa fa-envelope"></i></a>
        </div>

    </div>

</footer>