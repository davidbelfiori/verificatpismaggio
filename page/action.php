<?php
session_start();
include "../db/connection.php";

//start sessione e connessione con il db

if(isset($_POST['action'])){


    $idcliente=$_POST['id'];
    $action1=$_POST['action1'];

    //query nella quale dal codice cliente che viene preso dalla pagina principale risalgo ai suoi dati nel db
    $res=mysqli_query($conn,"
    select user.* , clienti.*
    from clienti,operazioni,user
    where idCliente2 =clienti.idCliente and clienti.idUser1=user.idUser and idCliente2='$idcliente';");
    $row= mysqli_fetch_assoc($res);
    if($action1=='in lavorazione') {


        //update riga di statolavori
     mysqli_query($conn, "update operazioni
     set statoLavoro = 'In Lavorazione'
     where idOfficina2=1 and idCliente2='$idcliente'");

        //se il processo va a buon fine torna alla pagina principale
     header('location: page.php');

 //invio dellla email funzionante se si utilizza un server sftp come xampp
        $subject = "Ofiicina1 ";
        $message = "Ciao  siamo l'officina1 la tua macchina è in lavorazione  ";
        $sender = "From: jobint.help@gmail.com";
        if(!mail($row['Email'], $subject, $message, $sender)){
            echo "<script>alert('Failed while sending email!')</script>";
        }

    }else{
//update riga di statolavori
        mysqli_query($conn, "update operazioni
                        set statoLavoro = 'Completato'
                        where idOfficina2=1 and idCliente2='$idcliente'");

        //invio dellla email funzionante se si utilizza un server sftp come xampp
        $subject = "Ofiicina1 ";
        $message = "Ciao  siamo l'officina1 la tua macchina è Pronta ";
        $sender = "From: jobint.help@gmail.com";
        if(!mail($row['Email'], $subject, $message, $sender)){
            echo "<script>alert('Failed while sending email!')</script>";
        }

        header('location: page.php');
    }


}

