<?php include('header.php'); ?><main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m12 s12 titulo-project">
    <h1><?php echo get_the_title(); ?></h1>
      </div>
    </div>
  </section>

  <section class="project-details">
    <div class="row">
      <div class="col m6 s12" data-aos="fade-up">
        <div class="project-text">
          <h2>Description</h2>
          <?php the_field('project_description'); ?>
        </div>
      </div>

      <div class="col m6 s12" data-aos="fade-up">

        <div class="project-tech">
          <h2>Tech Stack</h2>
          <?php the_field('project_techs'); ?>
        </div>

      </div>

    </div>

  </section>

  <hr>

  <section class="project-imgs">
    <div class="row">
      <div class="project-imgs-principal" data-aos="fade-up">
        <img src="<?php the_post_thumbnail_url(); ?>" alt="">
      </div>
    </div>

    <div class="row">
      <div class="col m6 s12">
        <div class="project-imgs-secundaria" data-aos="fade-up">
          <img src="<?php the_field('project_img1'); ?>" alt="">
        </div>
      </div>

      <div class="col m6 s12">
        <div class="project-imgs-secundaria" data-aos="fade-up">
        <img src="<?php the_field('project_img2'); ?>" alt="">
        </div>
      </div>
    </div>
  </section>
  <section>
    <div class="row center">
      <div class="project-links-int">
        <a href="<?php the_field('project_url'); ?>" target="_blank" class="waves-effect waves-light btn btn-project">VISIT SITE</a>
      </div>
    </div>
  </section>

</main>
<?php include('footer.php'); ?>
