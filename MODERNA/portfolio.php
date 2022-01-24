<?php
  include'../mordana/header.php';
  session_start();
  require_once'../db.php';
  $select="SELECT * FROM portfolio";
  $portfolio=mysqli_query($db, $select);
?>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center ">
    <div class="container d-flex justify-content-between align-items-center">

      <div class="logo">
        <h1 class="text-light"><a href="index.php"><span>Moderna</span></a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="../assetsm/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="" href="index.php">Home</a></li>
          <li><a href="about.php">About</a></li>
          <li><a href="services.php">Services</a></li>
          <li><a class="active" href="portfolio.php">Portfolio</a></li>
          <li><a href="team.php">Team</a></li>
          <li><a href="blog.php">Blog</a></li>
          <li><a href="contact.php">Contact Us</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <main id="main">

    <!-- ======= Our Portfolio Section ======= -->
    <section class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Our Portfolio</h2>
          <ol>
            <li><a href="index.php">Home</a></li>
            <li>Our Portfolio</li>
          </ol>
        </div>

      </div>
    </section><!-- End Our Portfolio Section -->

    <!-- ======= Portfolio Section ======= -->
    <section class="portfolio">
      <div class="container">

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-easing="ease-in-out" data-aos-duration="500">
          <?php 
            foreach($portfolio as $key=> $value){
              ?>
              <div class="col-lg-4 col-md-6 portfolio-wrap filter-app">
                <div class="portfolio-item">
                  <img src="../assets/portfolio/image/<?php echo$value['image']?>" class="img-fluid" alt="">
                  <div class="portfolio-info">
                    <h3><?php echo $value['title'] ?></h3>
                    <div>
                      <a href="../assetsm/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="bx bx-plus"></i></a>
                      <a href="portfolio-details.html" title="Portfolio Details"><i class="bx bx-link"></i></a>
                    </div>
                  </div>
                </div>
              </div>              
              <?php
            }
          ?>

          <!-- <div class="col-lg-4 col-md-6 portfolio-wrap filter-web">
            <div class="portfolio-item">
              <img src="../assetsm/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h3>Web 1</h3>
                <div>
                  <a href="../assetsm/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 1"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.html" title="Portfolio Details"><i class="bx bx-link"></i></a>
                </div>
              </div>
            </div>
          </div> -->
        </div>
      </div>
    </section><!-- End Portfolio Section -->
  </main><!-- End #main -->
<?php
  include'../mordana/footer.php';
?>