<?php
  include'header/nav.php';
  session_start();
  require_once'db.php';
  $select="SELECT * FROM php";
  $users=mysqli_query($db, $select);
  $select2="SELECT COUNT(*) as total, name, email, phone FROM php";
  $users2=mysqli_query($db, $select2);
  $count=mysqli_fetch_assoc($users2);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
      <div class="col-10 m-auto">
      <div class="card mt-sm-3">     
        <table class="table table-bordered mt-30 text-center">
          <div class="text-center bg-dark text-white">
            <h2>All Users(<?php echo $count['total']?>)</h2> 
          </div>
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
              <th>Email</th>
              <th>Phone</th>
              <th>Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php
              foreach ($users as $key => $value) {
                ?>
              <tr>
                <td><?php echo ++$key?></td>
                <td><?php echo $value['name'];?></td>
                <td><?php echo $value['email'];?></td>
                <td><?php echo $value['phone'];?></td>
                <td><?php
                      if ($value['status']==1) {
                        ?>
                        <a href="status.php?status_id=<?php echo $value['id']?>" class="btn btn-secondary">Active</a>
                        <?php
                      }else{
                        ?>
                        <a href="status.php?status_id=<?php echo $value['id']?>" class="btn btn-danger">Deactive</a>
                        <?php
                      }
                    ?>  
                </td>
                <td>
                  <?php 
                    if ($value['status']==1) {
                      ?>
                      <a href="edit.php?edit_id=<?php echo $value['id']?>" class="btn btn-secondary">Edit</a>
                      <a href="delete.php?delete_id=<?php echo $value['id']?>" class="btn btn-danger">Delete</a>
                      <?php
                    }else{
                      ?>
                        <a class="btn btn-success">Not Allow</a>
                      <?php
                    }
                  ?>
                </td>
              </tr>
              <?php
              }
            ?>          
          </tbody>
        </table>
      </div>
    </div>
</div>
</body>
</html>        
