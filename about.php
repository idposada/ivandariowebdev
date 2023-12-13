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

  <?php
  $args = array(
'posts_per_page'   => -1,
'orderby'          => 'post_date',
'order'            =>'DESC',
'post_type'        => 'job',
'post_status'      => 'publish',
);
$the_query = new WP_Query( $args );
?>

  <?php if( $the_query->have_posts() ): ?>
            <?php while( $the_query->have_posts() ) : $the_query->the_post(); ?>


  <div class="row job">
    <div class="col m6 s12">
      <div class="job-info">

        <img src="<?php the_post_thumbnail_url(); ?>" alt="">

        <div class="job-name">
          <h3><?php echo get_the_title(); ?></h3>
          <div class="role">
            <?php the_field('role'); ?>
          </div>
        </div>

      </div>

    </div>

    <div class="col m6 s12">
        <h3 class="job-desc">Job Description</h3>
          <div class="project-text">
          <?php the_field('role_description'); ?>
          </div>
    </div>

  </div>
  <hr>
<?php endwhile;?>
<?php endif;  wp_reset_query(); ?>

</section>




<?php include('footer.php'); ?>
