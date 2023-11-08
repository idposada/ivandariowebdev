<?php /* Template Name: Projects */ include('header.php'); ?>
<main>
  <section class="intro">
    <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
      <div class="col m12 s12 titulo-home">
    <h1>PROJECTS</h1>
      </div>
    </div>

    <div class="text-about animate__animated animate__slideInDown">
      Here you can see some of my web development projects.
    </div>
  </section>

  <section class="project-list">

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

    <div class="row project">

      <div class="col m6 s12">
        <div class="tit2-home row">
          <h2><?php echo get_the_title(); ?></h2>
        </div>
          <hr class="ln-project">
          <div class="project-links">
            <a href="<?php the_permalink(); ?>" class="waves-effect waves-light btn btn-project">VIEW DETAILS</a>
            <a href="<?php the_field('project_url'); ?>" target="_blank" class="waves-effect waves-light btn btn-project">VISIT SITE</a>
          </div>

      </div>

      <div class="col m6 s12">
        <div class="img-project-externa" data-aos="fade-left">
        <a href="<?php the_permalink(); ?>">  <img src="<?php the_post_thumbnail_url(); ?>" alt=""> </a>
        </div>
      </div>
    </div>
    <hr>
  <?php endwhile;?>
  <?php endif;  wp_reset_query(); ?>

  </section>

</main>
<?php include('footer.php'); ?>
