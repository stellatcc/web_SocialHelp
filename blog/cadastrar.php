<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/css/cadastrar.css">

    <title>Cadastrar</title>
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
                    <a href="index.php"><button type="button" class="btn btn-warning">Voltar</button></a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
          <!-- End Nav -->

          <h1>Cadastrar Notícias</h1>

          <main id="main">
            <form class="form" method="POST" action="cadastrar_action.php">
              <div class="input-search">
                <label for="inputNotice">Título da Notícia:</label>
                <input type="text" name="notice" id="inputNotice">
              </div>
              <div class="input-search">
                <label for="inputText">Notícia inteira:</label>
                <textarea type="text" name="all" id="inputText"></textarea>
              </div>
              <div class="input-search">
                <label for="inputDescription">Descrição da Notícia:</label>
                <textarea type="text" name="description" rows="5" id="inputDescription"></textarea>
                <div class="input-search">
                  <input type="submit" value="Cadastrar">
                </div>
              </div>
            </form>
          </main>

          <?php

            require 'footer.php';

          ?>
    </div>
    <!-- Fim Embrulho -->

</body>
</html>