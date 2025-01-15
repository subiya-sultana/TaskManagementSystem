<?php 
    //connecting to database
    // $servername = 'localhost';
    // $username = 'root';
    // $password = '';
    // $database = 'taskmanagementsystem';
    // $conn = mysqli_connect($servername, $username, $password, $database) or die('sorry we failed to connect database'. mysqli_connect_error());

    
    
    //connecting to database
    $host = 'dpg-cu3rgfhopnds738o07g0-a';
    $username = 'root';
    $password = '5grnWoHqmvN7YNcNU1xvINLtAFht8AYY';
    $dbname = 'taskmanagementsystem_24a8';
    $port = '5432'; 

    try {
        // Create a new PDO instance for PostgreSQL connection
        $conn = new PDO("pgsql:host=$host;port=$port;dbname=$dbname", $username, $password);

        // Set the PDO error mode to exception
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        echo "Connection to PostgreSQL database successful.";
    } catch (PDOException $e) {
        // Handle connection errors
        die("Sorry, we failed to connect to the database: " . $e->getMessage());
    }



?>



