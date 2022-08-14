<?php
    include "csatlakozas.php";

?>
<!DOCTYPE html>
<html>
    <!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page Title</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div>
    <form method="post" action="">
        <label for="inputName"><br>Az ön neve:</br></label>
        <input type="text" name="name" id="inputName" maxlength="50">
        <label for="inputEmail"><br>Email cime:</br></label>
        <input type="email" name="email" id="inputEmail" maxlength="256">
        <label for="inputMessage"><br>Üzenet:</br></label>
        <textarea name="message" id="inputMessage" maxlength="1000"></textarea>
        <input type="submit" name="sendMessage" value="Küldés">
    
    <?php
        if(isset($_POST['sendMessage']))
        {
            $name=trim($_POST['name']);
            $email=trim($_POST['email']);
            $message=trim($_POST['message']);
            $error = false;


            if(strlen($name) < 1)
            {
                $error=true;
                echo '<h3>Hiba! Kérjük töltsd ki az Név mezőt!</h3>';               
            }
            if(strlen($email) < 1)
            {
                $error=true;
                echo '<h3>Hiba! Kérjük töltsd ki az E-mail mezőt!</h3>';
            }

            
            else 
            {

                $sql = "INSERT INTO urlap01(nev , e_mail , uzenet) VALUES ('$name' , '$email' , '$message')";
                
                mysqli_query($conn, $sql);    
            
            
                echo '<h3>Köszönjük szépen a kérdésedet. Válaszunkkal hamarosan keresünk a megadott e-mail címen.</h3>';
            }

        }

            
        
        
    ?>
    </form>
    </div>
</body>

</html>