<?php
// Database connection (Change credentials accordingly)
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "skyrun";

        $conn = new mysqli($servername, $username, $password, $dbname);
        // if($conn){
        //     echo "connected successfully";
        // }else{
        //     echo "connection failed";
        // }