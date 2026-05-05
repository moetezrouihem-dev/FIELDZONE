<?php
$host = 'localhost';
$dbname = 'fieldzone_db';
$username = 'root'; 
$password = '';   

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $nom = htmlspecialchars($_POST['nom']);
        $email = htmlspecialchars($_POST['email']);
        $sujet = htmlspecialchars($_POST['sujet']);
        $message = htmlspecialchars($_POST['message']);

        $sql = "INSERT INTO messages_contact (nom, email, sujet, message) 
                VALUES (:nom, :email, :sujet, :message)";
        
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':nom' => $nom,
            ':email' => $email,
            ':sujet' => $sujet,
            ':message' => $message
        ]);

        echo "<script>
                alert('Merci $nom, votre message a bien été envoyé !');
                window.location.href = 'contact.html';
              </script>";
        exit();
    }
} catch(PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}
?>