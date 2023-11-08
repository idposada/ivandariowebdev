<!DOCTYPE html>
<html>
<head>
  <!--Import Google Icon Font-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/materialize.min.css"  media="screen,projection"/>
  <link type="text/css" rel="stylesheet" href="<?php bloginfo('template_url'); ?>/style.css"  media="screen,projection"/>
  <link  rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.<?php bloginfo('template_url'); ?>/css/4.1.1/animate.min.css"  />
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <title><?php echo esc_html( get_bloginfo()); ?> | <?php echo esc_html( get_the_title()); ?></title>


  <meta property="og:url"                content="<?php echo get_permalink(); ?>" />
  <meta property="og:title"              content="<?php echo get_the_title(); ?>" />
  <meta property="og:description"        content="<?php the_excerpt(); ?>" />
  <meta property="og:image"              content="<?php the_post_thumbnail_url(); ?>" />
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <?php wp_head(); ?>
</head>

<body>
  <header>

    <nav>
      <nav>
          <div class="nav-wrapper">
            <a href="#" class="brand-logo"> <img src="<?php bloginfo('template_url'); ?>/img/ivandarioposada-logo.png" alt=""> </a>
            <a href="#" data-target="mobile-demo" class="sidenav-trigger"><i class="material-icons">menu</i></a>

            <?php
            wp_nav_menu(
              array(
                'menu' => 'primary',
                'menu_class' => 'menu right hide-on-med-and-down'
             )
             );


         ?>

          </div>
        </nav>

        <!-- MOBILE MENU -->


        <ul class="sidenav" id="mobile-demo">
          <a href="#" class="brand-logo-mobile"> <img src="<?php bloginfo('template_url'); ?>/img/ivandarioposada-logo.png" alt=""> </a>
          <hr>

          <?php

           wp_nav_menu(
             array(
               'menu' => 'primary',

            )
            );

       ?>

       <hr>
          <!-- <li><a class="waves-effect waves-light btn btn-menu" href="sass.html">Home</a></li>
          <li><a class="waves-effect waves-light btn btn-menu" href="badges.html">About</a></li>
          <li><a class="waves-effect waves-light btn btn-menu" href="collapsible.html">Projects</a></li>
          <li><a class="waves-effect waves-light btn btn-menu-active" href="collapsible.html">Contact</a></li> -->
          <div class="social-buttons center">

            <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:linkedin"></iconify-icon> <span class="link.title"> </a>

            <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:github"></iconify-icon> <span class="link.title"> </a>

            <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="mdi:spotify"></iconify-icon><span class="link.title"> </a>
            <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="devicon:twitter"></iconify-icon><span class="link.title"> </a>
              <a class="waves-effect waves-light btn btn-redes"><iconify-icon icon="cib:telegram"></iconify-icon> <span class="link.title"> </a>
          </div>
    </header>
        </ul>
