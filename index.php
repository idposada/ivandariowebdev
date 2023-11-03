<?php include('header.php'); ?>
<main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m8 s12 titulo-home">
        IVAN DARIO POSADA SUAREZ
      </div>
      <div class="col m4 s12 img-home">
        <img src="<?php the_field('logo_principal'); ?>" alt="">
      </div>
    </div>

    <div class="row">
      <div class="col m4 s12 skills animate__animated animate__fadeInUp">
        Web Developer
      </div>
      <div class="col m4 s12 skills animate__animated animate__fadeInUp">
        IT Consulting
      </div>
      <div class="col m4 s12 skills animate__animated animate__fadeInUp">
        Project Manager
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

        <div class="col m4 s12">
          <div class="card card-project" data-aos="zoom-in">
            <div class="hm-project-name">
              DelaEspriella Style Ecommerce
            </div>

            <div class="boton-redondo">
            <a class="btn btn-redondo" href="#">-></a>
            </div>
          </div>

        </div>

        <div class="col m4 s12">
          <div class="card card-project" data-aos="zoom-in">
            <div class="hm-project-name">
              DelaEspriella Style Ecommerce
            </div>

            <div class="boton-redondo">
            <a class="btn btn-redondo" href="#">-></a>
            </div>
          </div>

        </div>


        <div class="col m4 s12">
          <div class="card card-project" data-aos="zoom-in">
            <div class="hm-project-name">
              DelaEspriella Style Ecommerce
            </div>

            <div class="boton-redondo">
            <a class="btn btn-redondo" href="#">-></a>
            </div>
          </div>

        </div>

    </div>

  </section>

  <section class="sec-contact">
    <div class="tit2-home row">
      <h2>CONTACT ME</h2>
      </div>

    <div class="row">

        <div class="contact-form ">


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

              </form>
                    </div>


    </div>
  </section>
</main>


<?php include('footer.php'); ?>
