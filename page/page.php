<?php
include "../db/connection.php";
session_start();

?>
<html lang="it">
<head>

    <title>offina1</title>
<link href="pagestyle.css" rel="stylesheet" >

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.rawgit.com/mervick/emojionearea/master/dist/emojionearea.min.css">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/sign-in/">
</head>
<body>
<div class="titile">
    <img class="mb-4" src="Black Autoparts In Gear, Auto Piston, Spark Plug And Wrench, Logo Design.svg" alt="" width="10%" height="5%">
    <p style="align-items: center">Visuale interventi di oggi</p>

</div>
<div class="content">


<table class="table table-bordered table-striped">
    <tr>
        <th width="5%">Num.</td>
        <th width="10%">Data</td>
        <th width="10%">Ora</td>
        <th width="10%">Targa</td>
        <th width="10%">Modello</td>
        <th width="10%">Proproetario</td>
        <th width="10%">Stato lavori</td>
        <th width="10%">Azioni</td>

    </tr>


        <?php
        include "../db/connection.php";

        //query in cui si vedono rispetto al giorno odierno tutti gli interventi che devono essere fatti

        $query="
select *
from clienti,macchine, operazioni,assistenze
where clienti.idCliente = macchine.idCliente1 and clienti.idCliente=operazioni.idCliente2 
and assistenze.idCliente4=clienti.idCliente and operazioni.idOfficina2=1 and assistenze.idOfficina3=1 and assistenze.Data= date(now())";

        $result = mysqli_query($conn,$query);

        $queryresult=mysqli_num_rows($result);
        if($queryresult>0){
            while ($row= mysqli_fetch_assoc($result)){
            $id=$row["idCliente"];

//stampa dei rispltati nella tabella

                echo "
       <div class='content'>

    <div class='descrizione'>
   
    <tr>
        <td><p>  ".$row['idOperazione']."</p></td>
     
       <td><p>  ".$row['Data']."</p></td>
        <td><p>  ".$row['Orario']."</p></td>
       <td> <p> " .$row['Targa']. "</p></td></td>
        <td><p>  ".$row['Modello']."</p> </td>
        <td><p>  ".$row['Proprietario']."</p></td>
        <td><p>  ".$row['statoLavoro']."</p></td>
       
      <!--   form in cui tramite una select si sceglie lo stato del lavoro se in laorazione o terminato  --> 
        <form action='action.php' method='post'>
        <input type='hidden' name='id' value='$id'>
        <td>
        <select name='action1'>
        <option selected disabled>--Seleziona stato -- </option>
        <option value='in lavorazione'> In Lavorazione</option>
        <option value='completato'> completato</option>
</select>
<button name='action'>do</button> </td>
          
        
        </form>
        
        </tr>
        </div>


        </div>";




            }}?>
        </table>
    </div>





</body>


</html>
