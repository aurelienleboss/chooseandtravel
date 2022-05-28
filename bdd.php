<?php
            $servername = 'localhost';
            $username = 'sylvain';
            $password = 'bromuald';
            $dbname = "6tt_chooseandtravel";
            
            //On établit la connexion
            $conn = new mysqli($servername, $username, $password, $dbname);
            
            //On vérifie la connexion
            if($conn->connect_error){
                die('Erreur : ' .$conn->connect_error);
            }
            echo 'Connexion réussie !';


            $sql = "SELECT * FROM ville";
            $result = $conn->query($sql);
            
            if ($result->num_rows > 0) {
              // output data of each row
              while($row = $result->fetch_assoc()) {
                echo "id: " . $row["id"]. " -ville:" . $row["ville"]. " -pays" . $row["pays"]. " -continents:". $row["continent"]. "<br>";
              }
            } else {
              echo "0 results";
            }

            
?>