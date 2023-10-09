<?php

  require 'conexao.php';

  $sql = $pdo->query("SELECT * FROM noticia ORDER BY id DESC");

  if($sql->rowCount() > 0) {
    $lista = $sql->fetchAll(PDO::FETCH_ASSOC);
  }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/css/home.css">

    <title>Blog de notícias</title>
</head>
<body>

    <!-- JavaScript e Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

    <!-- Inicio Embrulho -->
    <div class="wrapper">

        <!-- Inicio Nav -->
        <nav class="navbar navbar-expand-lg navbar-light px-5">
            <div class="container-fluid">
              <a class="navbar-brand" href="#"><img src="./img/logo.png" alt="Logo do SocialHelp" height="90px" width="90px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse px-5 justify-content-end" id="navbarNavDropdown">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link" href="cadastrar.php">Cadastrar</a>
                  </li>
                  <li class="nav-item">
                    <a href="../index.html"><button type="button" class="btn btn-warning">Voltar</button></a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
          <!-- Fim Nav -->
        <!-- Inicio Container -->
        <div class="container">
          <!-- Inicio do Busca -->
          <div class="input-search">
            <i class="bi bi-search"></i>
            <input type="text" name="text" id="text" placeholder="Pesqisar no Blog">
          </div>
          <!-- Fim do Busca -->

          <!-- Inicio Notícias -->
          <main class="container-post">

          <?php foreach ($lista as $notice): ?>
            <div class="post">
              <div class="top-post">
                <span><?= date_format(new DateTime($notice['data_create']), 'd/m/Y') ; ?></span>
                <i class="bi bi-heart"></i>
              </div>
              <div class="content-post">
                <h3><?= $notice['title_notice']; ?></h3>
                <p><?= $notice['description_notice']; ?></p>
              </div>
            </div>
            <?php endforeach; ?>
            
          </main>
          <!-- Fim Notícias -->

          <?php

            require 'footer.php';

          ?>

        </div>
        <!-- Fim Container -->

    </div>
    <!-- Fim Embrulho -->

</body>
</html>