<?php
require '../config.php';

if($_POST['type']==1) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $con_password = $_POST['con_password'];
    $email = $_POST['email'];

// Now we check if the data was submitted, isset() function will check if the data exists.
    if (!isset($username, $password, $email)) {
        // Could not get the data that should have been sent.
        exit('Please complete the registration form!');
    }
// Make sure the submitted registration values are not empty.
    if (empty($username) || empty($password) || empty($email)) {
        // One or more values are empty.
        exit('Please complete the registration form');
    }
// We need to check if the account with that username exists.
    if ($stmt = $con->prepare('SELECT id, password FROM accounts WHERE username = ?')) {
        // Bind parameters (s = string, i = int, b = blob, etc), hash the password using the PHP password_hash function.
        $stmt->bind_param('s', $username);
        $stmt->execute();
        $stmt->store_result();
        // Store the result so we can check if the account exists in the database.
        if ($stmt->num_rows > 0) {
            // Username already exists
            echo json_encode(array("statusCode"=>201));
        } else {
            if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                echo json_encode(array("statusCode"=>202));
                exit;
            }

            if (preg_match('/^[a-zA-Z0-9]+$/', $username) == 0) {
                echo json_encode(array("statusCode"=>203));
                exit;
            }

            if (strlen($password) != strlen($con_password)) {
                echo json_encode(array("statusCode"=>204));
                exit;
            }

            if (strlen($password) < 5) {
                echo json_encode(array("statusCode"=>205));
                exit;
            }
            if ($stmt = $con->prepare('INSERT INTO accounts (username, password, email) VALUES (?, ?, ?)')) {
                // We do not want to expose passwords in our database, so hash the password and use password_verify when a user logs in.
                $passwordHash = password_hash($password, PASSWORD_DEFAULT);
                $stmt->bind_param('sss', $username, $passwordHash, $email);
                $stmt->execute();
                echo json_encode(array("statusCode"=>200));
            } else {
                // Something is wrong with the sql statement, check to make sure accounts table exists with all 3 fields.
                echo json_encode(array("statusCode"=>999));
            }
        }
        $stmt->close();
    } else {
        // Something is wrong with the sql statement, check to make sure accounts table exists with all 3 fields.
        echo json_encode(array("statusCode"=>999));
    }
    $con->close();
}
?>