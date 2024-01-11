<?php /* Template Name: Contacto */ include('header.php'); ?>
<main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m12 s12 titulo-home">
        <h1>CONTACT ME</h1>
      </div>
    </div>

    <div class="text-about animate__animated animate__slideInDown">
      Make thinks happen, Together!
    </div>
  </section>

  <section class="sec-contact">
    <div class="row">
      <div class="col m6 s12">
        <div class="contact-form ">

               <?php echo do_shortcode( '[contact-form-7 id="a49345d" title="Formulario de contacto"]' ); ?>
<!--

          <form class="" action="index.html" method="post">


            <div class="input-field ">
              <input id="last_name" type="text" class="validate">
              <label for="last_name">Your Name</label>
            </div>

            <div class="input-field ">
              <input id="email" type="text" class="validate">
              <label for="email">Your Email</label>
            </div>

            <div class="input-field ">
              <textarea id="textarea1" class="materialize-textarea"></textarea>
              <label for="textarea1">Your Message</label>
            </div>

            <div class="center enviar ">
              <input type="submit" name="iniciar" value="Send Message" class="waves-effect waves-light btn btn-enviar center">
            </div>

          </form> -->
        </div>
        <div class="social-buttons center">

          <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:linkedin"></iconify-icon> <span class="link.title"> </a>

          <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:github"></iconify-icon> <span class="link.title"> </a>

          <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:spotify"></iconify-icon><span class="link.title"> </a>
          <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="devicon:twitter"></iconify-icon><span class="link.title"> </a>
            <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="cib:telegram"></iconify-icon> <span class="link.title"> </a>
        </div>
      </div>

      <div class="col m6 s12">

        <div class="center img-about">
            <img src="<?php the_field('img_about'); ?>" alt="">
        </div>


      </div>

    </div>
  </section>

</main>

<?php include('footer.php'); ?>
