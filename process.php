<?php
$host = 'localhost';
$dbname = 'fieldzone_db';
$username = 'root'; 
$password = '';     

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
        $nom_complet = htmlspecialchars($_POST['nom_complet']);
        $telephone = htmlspecialchars($_POST['telephone']);
        $stade = $_POST['stade'];
        $date_reservation = !empty($_POST['date_reservation']) ? $_POST['date_reservation'] : NULL;
        $heure_reservation = $_POST['heure_reservation'];
        
        $qte_maillot = (int)$_POST['qte_maillot'];
        $qte_hoodie_f = (int)$_POST['qte_hoodie_f'];
        $qte_hoodie_h = (int)$_POST['qte_hoodie_h'];
        $qte_dumbbell = (int)$_POST['qte_dumbbell'];
        $qte_station = (int)$_POST['qte_station'];
        
        $abonnement_club = $_POST['abonnement_club'];
        $total_prix = (float)$_POST['total_prix'];
        




        $checkSql = "SELECT COUNT(*) FROM commandes 
             WHERE stade = :stade 
             AND date_reservation = :date_r 
             AND heure_reservation = :heure_r";

        $checkStmt = $pdo->prepare($checkSql);
        $checkStmt->execute([
            ':stade' => $stade,
            ':date_r' => $date_reservation,
            ':heure_r' => $heure_reservation
        ]);

        $deja_reserve = $checkStmt->fetchColumn();

        if ($deja_reserve > 0 && $stade !== 'aucun') {
            // 2. Si le créneau est pris, on arrête tout et on affiche un message
            echo "<script>
                    alert('Désolé, ce créneau est déjà réservé pour ce stade. Veuillez choisir une autre heure.');
                    window.history.back();
                </script>";
            exit();
        }






        
        $sql = "INSERT INTO commandes (
                    nom_complet, telephone, stade, date_reservation, heure_reservation, 
                    qte_maillot, qte_hoodie_f, qte_hoodie_h, qte_dumbbell, qte_station, 
                    abonnement_club, total_prix
                ) VALUES (
                    :nom_complet, :telephone, :stade, :date_reservation, :heure_reservation, 
                    :qte_maillot, :qte_hoodie_f, :qte_hoodie_h, :qte_dumbbell, :qte_station, 
                    :abonnement_club, :total_prix
                )";
        
        $stmt = $pdo->prepare($sql);
        $stmt->execute([
            ':nom_complet' => $nom_complet,
            ':telephone' => $telephone,
            ':stade' => $stade,
            ':date_reservation' => $date_reservation,
            ':heure_reservation' => $heure_reservation,
            ':qte_maillot' => $qte_maillot,
            ':qte_hoodie_f' => $qte_hoodie_f,
            ':qte_hoodie_h' => $qte_hoodie_h,
            ':qte_dumbbell' => $qte_dumbbell,
            ':qte_station' => $qte_station,
            ':abonnement_club' => $abonnement_club,
            ':total_prix' => $total_prix
        ]);

        echo "<script>
                alert('Commande validée avec succès! Merci $nom_complet.');
                window.location.href = 'index.html';
              </script>";
        exit();
    }
} catch(PDOException $e) {
    echo "Erreur : " . $e->getMessage();
}
?>