<?php

    require 'conexao.php';

    $title_notice = filter_input(INPUT_POST, 'notice');
    $description_notice = filter_input(INPUT_POST, 'description');

    if(isset($title_notice) && !empty($title_notice) && isset($description_notice) && !empty($description_notice)){

        $sql = $pdo->prepare("INSERT INTO noticia (title_notice, description_notice) VALUES (:noticia, :descricao)");
        $sql->bindValue(':noticia', $title_notice);
        $sql->bindValue(':descricao', $description_notice);
        $sql->execute();

        echo "
        <script>
            alert('Cadastrado com sucesso!');
            window.location.href = 'index.php';
        </script>
        ";
        exit;
    } else {
        echo "
        <script>
            alert('Por favor, preencha todos os campos!');
            window.location.href = 'cadastrar.php';
        </script>
        ";
        exit;
    }


?>