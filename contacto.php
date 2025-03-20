<?php /* Template Name: Contacto */ include('header.php'); ?>
<main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m12 s12 titulo-home">
        <h1>CONTACT ME</h1>
      </div>
    </div>
    
  </section>

  <section class="sec-contact"> 

  <div class="row">
  <div class="col m6 s12">
  <div class="fondo-contact animate__animated animate__fadeInRight">
    <div class="sub-tit-contact">
      <h2>Ivan Dario Posada Suarez</h2>
    </div>

    <div class="contact-info">
      <div class="contact-mail">
      <iconify-icon icon="iconoir:send-mail-solid" width="24" height="24"></iconify-icon>  <a href="mailto:ivandariowebdev@gmail.com">ivandariowebdev@gmail.com</a>
      </div>

      <div class="contact-tel">
      <iconify-icon icon="bi:phone-fill" width="24" height="24"></iconify-icon>  <a href="tel:+573002212364">+57 300 221 2364</a>
      </div>

      <div class="contact-loc">
      <iconify-icon icon="fa6-solid:map-location" width="24" height="24"></iconify-icon> <a href="">Bogotá - Colombia</a>
      </div>
    </div>

    <div class="contact-socials">
      <div class="social-tit">
          <h3>Socials</h3>

          <div class="social-icons">
            
          <a href="https://www.linkedin.com/in/ivan-dario-posada-suarez-9629a743/?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base%3BHT6n%2BS8RQq%2BqzcayqKrmBA%3D%3D" target="_blank" class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:linkedin"></iconify-icon> <span class="link.title"> </a>

          <a href="https://github.com/idposada" target="_blank" class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:github"></iconify-icon> <span class="link.title"> </a>

          <a href="https://open.spotify.com/user/idposada" target="_blank" class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:spotify"></iconify-icon><span class="link.title"> </a>
          <a href="https://twitter.com/isdposada" target="_blank" class="waves-effect waves-light btn btn-redes"><iconify-icon icon="devicon:twitter"></iconify-icon><span class="link.title"> </a>
          <a href="http://t.me/idposada" target="_blank" class="waves-effect waves-light btn btn-redes"><iconify-icon icon="cib:telegram"></iconify-icon> <span class="link.title"> </a>
        </div>

      </div>

    </div>
  </div>

  </div>

  <div class="col m6 s12">
    <div class="text-about contact-msg">
    Contact me and make business happen together
    </div>
  <?php echo apply_shortcodes( '[contact-form-7 id="a49345d" title="Formulario de contacto"]' ); ?>
  </div>
 </div>



   
 
  </section>

</main>

<?php include('footer.php'); ?>
