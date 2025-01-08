<?php include('header.php'); ?>
<main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m8 s12 titulo-home">
      <h1>  IVAN DARIO POSADA SUAREZ </h1>
            </div>
      <div class="col m4 s12 img-home">
        <img src="<?php the_field('logo_principal'); ?>" alt="">
      </div>
    </div>

    <div class="row">
      <div class="col m4 s12 skills animate__animated animate__fadeInUp">
      <h3>  Web Developer </h3>
      </div>
      <div class="col m4 s12 skills animate__animated animate__fadeInUp">
      <h3>  IT Consulting </h3>
      </div>
      <div class="col m4 s12 skills animate__animated animate__fadeInUp">
      <h3>  Project Manager </h3>
      </div>

    </div>
  </section>

  <section class="sec-about">
    <div class="tit2-home row">
    <h2>ABOUT</h2>
    </div>
    <div class="row">
      <div class="col m6 s12 text-about" data-aos="fade-up">
        <?php the_field('text_about'); ?>
      </div>
      <div class="col m6 s12 img-about" data-aos="fade-up">
        <img src="<?php the_field('imagen_about_home'); ?>" alt="">
      </div>
    </div>
  </section>

  <section class="sec-projects">

  </section>


  <section class="sec-projects">
  <div class="tit2-home row">
    <h2>MY PROJECTS</h2>
    </div>

    <div class="row">

      <?php
      $args = array(
    'posts_per_page'   => -1,
    'orderby'          => 'post_date',
    'order'            =>'DESC',
    'post_type'        => 'project',
    'post_status'      => 'publish',
  );
  $the_query = new WP_Query( $args );

       ?>

    <?php if( $the_query->have_posts() ): ?>
      <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>


        <div class="col m4 s12">
          <div class="card card-project" data-aos="zoom-in">
            <div class="hm-project-name">
            <h3> <?php echo get_the_title(); ?> </h3>
            </div>

            <div class="boton-redondo">
            <a  href="<?php the_permalink(); ?>" class="btn btn-redondo" href="#">-></a>
            </div>
          </div>

        </div>
      <?php endwhile;?>
      <?php endif;  wp_reset_query(); ?>

    </div>

  </section>
  <section>
    <div class="tit2-home row">
      <h2>WEB DEVELOPMENT STACK</h2>
      </div>

      <div class="row">
        <div class="col m4 s12">
          <div class="card-stack" data-aos="flip-left">
            <div class="center">
            <h3>FRONTEND </h3>
            </div>


            <hr class="stack-line">
          HTML  5<br>
          CSS 3<br>
          jAVASCRIPT<br>
          BOOTSTRAP<br>
          MATERIAL UI<br>
          VUE JS
          </div>
        </div>

        <div class="col m4 s12">
          <div class="card-stack" data-aos="flip-left">
            <div class="center">
           <h3>     BACKEND </h3>
            </div>
            <hr class="stack-line">
            PHP <br>
            MYSQL <br>
            NODE JS <br>
            MAGENTO <br>
            WORDPRESS <br>
            YII FRAMEWORK

          </div>
        </div>

        <div class="col m4 s12">
          <div class="card-stack" data-aos="flip-left">
            <div class="center">
           <h3>     DEPLOY & TOOLS </h3>
            </div>
            <hr class="stack-line">
            GIT <br>
            AWS <br>
            VS CODE <br>
            COMPOSER <br>
            NPM <br>
            LINUX

          </div>
        </div>
      </div>
  </section>

  <section class="sec-contact">
    <div class="tit2-home row">
      <h2>CONTACT ME</h2>
      </div>

    <div class="row">

        <div class="contact-form col m8 s12">
          <div class="text-about animate__animated animate__slideInDown">
            Make thinks happen, Together!
          </div>
            <?php echo do_shortcode( '[contact-form-7 id="a49345d" title="Formulario de contacto"]' ); ?>

              <!-- <form class="" action="index.html" method="post">


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

        <div class="col m4 s12 img-about" data-aos="fade-up">
          <img src="<?php the_field('imagen_about_home'); ?>" alt="">
        </div>


    </div>
  </section>
</main>


<?php include('footer.php'); ?>
