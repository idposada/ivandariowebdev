<?php /* Template Name: About */ include('header.php'); ?>
<main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m12 s12 titulo-home">
        ABOUT
      </div>
    </div>
  </section>

  <section class="sec-about">

    <div class="row">
      <div class="col m6 s12 text-about" data-aos="fade-up">
        <?php the_field('text_about'); ?>
      </div>
      <div class="col m6 s12 img-about" data-aos="fade-up">
        <img src="<?php the_field('img_abot'); ?>" alt="">
      </div>
    </div>
  </section>

  <section class="sec-skill-int">
    <div class="row">
      <div class="col m6 s12">
        <div class="card card-skill">
          <div class="skill-name">
            WEB DEVELOPER
            <hr>
          </div>

          <div class="skill-text">
            <?php the_field('text_web_developer'); ?>
          </div>
        </div>
      </div>

      <div class="col m6 s12">
        <div class="card card-skill">
          <div class="skill-name">
            PROJECT MANAGER
            <hr>
          </div>

          <div class="skill-text">
            <?php the_field('text_pm'); ?>
          </div>
        </div>
      </div>

      <div class="col m6 s12">
        <div class="card card-skill">
          <div class="skill-name">
            IT CONSULTING
            <hr>
          </div>

          <div class="skill-text">
            <?php the_field('text_it_consulting'); ?>
          </div>
        </div>
      </div>

      <div class="col m6 s12">
        <div class="card card-skill">
          <div class="skill-name">
            UX - UI
            <hr>
          </div>

          <div class="skill-text">
          <?php the_field('text_ui_ux'); ?>
          </div>
        </div>
      </div>

    </div>
  </section>

<section>
  <div class="tit2-home row">
  <h2>MY WORK EXPERIENCE</h2>
  </div>

  <div class="row job">
    <div class="col m6 s12">
      <div class="job-info">

        <img src="<?php bloginfo('template_url'); ?>/img/visbanking.png" alt="" class="company-logo">

        <div class="job-name">
          <h3>GEOMETRIX</h3>
          <div class="role">
            Web Developer
          </div>
        </div>

      </div>

    </div>

    <div class="col m6 s12">
        <h3 class="job-desc">Job Description</h3>
          <div class="project-text">
            With great enthusiasm, i proudly introduce 'O Plano de Metas': a landing page developed in collaboration with Supernova for the renowned @nocidanielle, who boasts an impressive community of over 888k followers.
          </div>
    </div>

  </div>
  <hr>

</section>




<?php include('footer.php'); ?>
