<?php
  require_once'../db.php';
  $select="SELECT * FROM tetstimonials";
  $aboutus=mysqli_query($db, $select);
  include'include/header.php';
?>
<div class="br-mainpanel">
  <div class="pd-30">
    <h6 class="tx-gray-800 mg-b-5">
      <a class="tx-white" href="dashboard.php">Dashboard /</a>
      <a class="tx-white" href="#">Tetstimonials</a>
    </h6>
  </div>

  <div class="br-pagebody mg-t-5 pd-x-30">
    <div class="col-12 m-auto">
      <div class="card mt-sm-3">     
        <table class="table table-bordered mt-30 text-center">
          <div class="text-center bg-dark">
            <h2>Tetstimonials</h2>
          </div>         
            <a class="text-right" href="add-tetstimonial.php"><i class="fa fa-plus"></i>Add</a>          
          <?php
            if (isset($_SESSION['changestatus'])) {
              ?>
              <div class="alert alert-warning alert-dismissible fade show" role="alert">
                <strong><?php echo $_SESSION['changestatus'] ?>!</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <?php
              unset($_SESSION['changestatus']);
            }
          ?>
          <thead class="thead-light">
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Titlt</th>
              <th>Image</th>
              <th>Description</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody class="tx-white">
            <?php
              foreach ($aboutus as $key => $value) {
                ?>
              <tr>
                <td class="bg-dark"><?php echo ++$key?></td>                
                <td class="bg-dark"><?php echo $value['name'];?></td>
                <td class="bg-dark"><?php echo $value['title'];?></td>
                <td class="bg-dark"><?php echo $value['description'];?></td>
                <td class="bg-dark">
                  <img width="50" src="../assets/portfolio/testimonial/<?php echo $value['image'];?>">
                </td>                
                <td class="bg-dark"><?php echo $value['status'];?></td>
              </tr>
              <?php
              }
            ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<?php include'include/footer.php'?>