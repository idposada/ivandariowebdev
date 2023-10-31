<?php wp_footer();?>
<footer>
<div class="footer-line">
  <hr class="green-lines">
</div>

<div class="footer-text">
  Designed and Bult By Ivan Dario Posada
  <br>
  All Right Reserved - <?php echo date("Y"); ?>
</div>



  <!--JavaScript at end of body for optimized loading-->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <script src="https://code.iconify.design/iconify-icon/1.0.0-beta.3/iconify-icon.min.js"></script>
  <script type="text/javascript" src="<?php bloginfo('template_url'); ?>/js/materialize.min.js"></script>
  <script>  AOS.init(); </script>
  <script type="text/javascript">
  document.addEventListener('DOMContentLoaded', function() {
  var elems = document.querySelectorAll('.sidenav');
  var instances = M.Sidenav.init(elems);
});
  </script>

</script>
  </footer>

</body>
</html>
