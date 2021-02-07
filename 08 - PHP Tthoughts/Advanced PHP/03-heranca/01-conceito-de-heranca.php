<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>PHP - Conceitos de Herança</title>
    </head>
    <body>
        <?php
        require('./inc/Config.inc.php');
        $pessoa = new Heranca('Robson V. Leite', 27);
        $pessoa->Formar('Pro PHP');
        $pessoa->Formar('PHP');
        $pessoa->Envelhecer();
        $pessoa->VerPessoa();
        
        var_dump($pessoa);
        echo "<hr>";
        
        $pessoaME = new HerancaJuridica('Robson V. Leite', 27, 'UPINSIDE TECNOLOGIA');
        $pessoaME->Formar('Pro PHP');
        $pessoaME->Formar('PHP');
        $pessoaME->Envelhecer();
        $pessoaME->VerPessoa();
        
        $pessoaME->Contratar('Marcos');
        $pessoaME->Contratar('Maria');
        $pessoaME->VerEmpresa();
        
        var_dump($pessoaME);
        ?>
    </body>
</html>
