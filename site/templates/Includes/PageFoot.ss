<footer>

    <div class="inner">
    
        <ul class="float-left w1x2"> 
            <% loop ShowAllFooterLinks %>
                <li><a href="ShowPageLink">$FooterText</a></li>
            <% end_loop %>
        </ul>

        <div class="float-right w1x5">
            <a href="$SiteConfig.Instagram" class="social instagram" title="Go to Miss Abigail Bridal Couture Instagram"><i class="fa fa-instagram"></i></a>
            <a href="$SiteConfig.Facebook" class="social facebook" title="Go to Miss Abigail Bridal Couture Facebook"><i class="fa fa-facebook"></i></a>
            <a href="mailto:enquiries@missabigail.co.nz" id="email" title="Email Miss Abigil Bridal Couture"><i class="fa fa-envelope"></i></a>
        </div>

        <div class="clear"></div>

        <p class="copy">Copyright &copy; Miss Abigail, $Now.Year</p>
        <p class="dev">Site by Emma Clark</p>
    
    </div>

</footer>