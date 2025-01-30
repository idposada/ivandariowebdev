<?php /* Template Name: Blog */ include('header.php'); ?>
<main>
    <section class="intro">
        <div class="row animate__animated animate__slideInDown" data-aos="fade-up">
            <div class="col m12 s12 titulo-home">
                <h1>MY BLOG</h1>
            </div>
        </div>

        <div class="row">
            <div class="col m12 s12 text-about" data-aos="fade-up">
                <?php the_field('text_blog'); ?>
            </div>

        </div>


    </section>

    <section class="blog-grid">

        <div class="row">

            <div class="col m4 s12">
                <div class="card card-blog">
                    <div class="card-image">
                        <img src="<?php bloginfo('template_url'); ?>/img/blog-banner.png" alt="">
                        <span class="card-title">Anime for Beginners: 20 Pieces of Essential Viewing</span>
                    
                        <a class="btn-blog btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    </div>
                    
                    <div class="card-content">
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>

            </div>

            <div class="col m4 s12">
                <div class="card card-blog">
                    <div class="card-image">
                        <img src="<?php bloginfo('template_url'); ?>/img/blog-banner.png" alt="">
                        <span class="card-title">Anime for Beginners: 20 Pieces of Essential Viewing</span>
                        <a class="btn-blog btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    </div>
                    <div class="card-content">
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>

            </div>

            <div class="col m4 s12">
                <div class="card card-blog">
                    <div class="card-image">
                        <img src="<?php bloginfo('template_url'); ?>/img/blog-banner.png" alt="">
                        <span class="card-title">Anime for Beginners: 20 Pieces of Essential Viewing</span>
                        <a class="btn-blog btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    </div>
                    <div class="card-content">
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>

            </div>

            <div class="col m4 s12">
                <div class="card card-blog">
                    <div class="card-image">
                        <img src="<?php bloginfo('template_url'); ?>/img/blog-banner.png" alt="">
                        <span class="card-title">Anime for Beginners: 20 Pieces of Essential Viewing</span>
                        <a class="btn-blog btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    </div>
                    <div class="card-content">
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>

            </div>

            <div class="col m4 s12">
            <div class="card card-blog">
                    <div class="card-image">
                        <img src="<?php bloginfo('template_url'); ?>/img/blog-banner.png" alt="">
                        <span class="card-title">Anime for Beginners: 20 Pieces of Essential Viewing</span>
                        <a class="btn-blog btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    </div>
                    <div class="card-content">
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>

            </div>

            <div class="col m4 s12">
            <div class="card card-blog">
                    <div class="card-image">
                        <img src="<?php bloginfo('template_url'); ?>/img/blog-banner.png" alt="">
                        <span class="card-title">Anime for Beginners: 20 Pieces of Essential Viewing</span>
                        <a class="btn-blog btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
                    </div>
                    <div class="card-content">
                        <p>I am a very simple card. I am good at containing small bits of information. I am convenient because I require little markup to use effectively.</p>
                    </div>
                </div>

            </div>


        </div>


        </search>



</main>

<?php include('footer.php'); ?>