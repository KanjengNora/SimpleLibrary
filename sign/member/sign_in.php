<?php 
session_start();

//Jika member sudah login, tidak boleh kembali ke halaman login ,kecuali logout
if(isset($_SESSION["signIn"]) ) {
  header("Location: ../../DashboardMember/dashboardMember.php");
  exit;
}

require "../../loginSystem/connect.php";

if(isset($_POST["signIn"]) ) {
  
  $nama = strtolower($_POST["nama"]);
  $nisn = $_POST["nisn"];
  $password = $_POST["password"];
  
  
  $result = mysqli_query($connect, "SELECT * FROM member WHERE nama = '$nama' AND nisn = $nisn");
  
  if(mysqli_num_rows($result) === 1) {
    //cek pw 
    $pw = mysqli_fetch_assoc($result);
    if(password_verify($password, $pw["password"]) ) {
      // SET SESSION 
      $_SESSION["signIn"] = true;
      $_SESSION["member"]["nama"] = $nama;
      $_SESSION["member"]["nisn"] = $nisn;
      header("Location: ../../DashboardMember/dashboardMember.php");
      exit;
    }
  }
  $error = true;
  
}
?>

<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://kit.fontawesome.com/de8de52639.js" crossorigin="anonymous"></script>
     <link rel="icon" href="../../assets/manlogo.png" type="img/png">
     <title>Sign In || Member</title>
    </head>
  <body>
  <div class="container">
   <div class="bg-primary">
<div class="card">
<div class="card-body">
   <img src="../../assets/manlogo.png" class="float-end" alt="" srcset="" width="500px" height="500px">
   <div class="card">
      <div class="card-body">
      <a href="../link_login.html" type="button" class="btn btn-success" >kembali</a>
 <div class="h4 text-center text-secondary mt-5">
    Halaman login
 </div>
   <div class="text-center text-secondary mt-5">
  <small>Silahkan login untuk memasuki halaman utama</small>
   </div>

   <div class="row mt-4">
   <form action="" method="post"class=".needs-validation" novalidate>
       <div class="col-md-8 mb-2 mx-auto" >
         <label for="">Nama lengkap</label>
       <input type="text" class="form-control" name="nama" id="ValidationCustom01">
       <div class="invalid-feedback">
        Masukkan nama anda!
    </div>
       </div>
       <div class="col-md-8 mb-2  mx-auto" >
         <label for="">nisn</label>
       <input type="text" class="form-control" name="nisn" id="ValidationCustom">
       <div class="invalid-feedback">
        Masukkan nama anda!
    </div>
       </div>
       <div class="col-md-8 mb-2  mx-auto" >
         <label for="">Password</label>
       <input type="password" class="form-control" name="password" id="password">
       <div class="invalid-feedback">
        Masukkan nama anda!
    </div>
       </div>
       <div class="row col-md-4 mx-auto">
       <input type="submit" name="signIn" class="btn btn-info">
        </div>
        <br>
        <div class="text-center">
        <small>belum punya akun?silahkan <a href="sign_up.php">register</a></small>
        </div>
       </form>
      </div>

   </div>
</div>
</div>
</div>
</div>
</div>
</form>
</div>
<?php if(isset($error)) : ?>
      <div class="alert alert-danger mt-2" role="alert">Nama / Nisn / Password tidak sesuai !
      </div>
    <?php endif; ?>
</div>

<script>
  // Example starter JavaScript for disabling form submissions if there are invalid fields
(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()
</script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>