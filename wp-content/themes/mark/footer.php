
    <!-- footer start-->
    <footer class="footer space-2">
        <div class="container">
            <div class="row">
                 <div class="col-md-4 col-sm-12 p-right-80">
                     <div class="footer-logo">
                         <img src="<?php echo get_template_directory_uri();?>/assets/img/logo-dark.png" srcset="<?php echo get_template_directory_uri();?>/assets/img/logo-dark@2x.png 2x" alt="">
                     </div>
                     <?php
                     if(is_active_sidebar('footer-left')){
                        dynamic_sidebar('footer-left');
                     }
                     ?>
                 </div>
                 <div class="col-md-4 col-sm-6 p-right-80">
                    <?php
                        if(is_active_sidebar('footer-middle')){
                            dynamic_sidebar('footer-middle');
                        }
                    ?>

                 </div>

                 <div class="col-md-4 col-sm-6">
                    <?php
                        if(is_active_sidebar('footer-right')){
                            dynamic_sidebar('footer-right');
                        }
                    ?>
                 </div>
            </div>
        </div>
        <div class="copyright-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        &copy; Copyright 2018. <a href="#"> LWHH </a>. All rights reserved.
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- footer end-->
<?php 
    wp_footer();
?>

</body>
</html>