<?php 
    // starting session
    session_start();
    //connecting to database 
    require_once '../config.php';

    // calling functions
    if(isset($_POST['add-task'])){
        addTask($conn);
    }
    if(isset($_GET['act'])){
        $id = $_GET['id'];
        editGetData($conn, $id);
    }
    if(isset($_POST['edit-task'])){
        editTask($conn);
    }  
    if(isset($_POST['del-task'])){
        deleteTask($conn);
    } 
    if(isset($_POST['confirm-updateAcc']) || (isset($_POST['cancel-updateAcc'])) ){
        updateUserInfo($conn);
    }     
    if(isset($_POST['logout'])){
        logout();
    } 

    // defining functions
    function addTask($conn) {
        if(isset($_POST['add-task'])){

        $Sno = $_POST['Sno'];
        $taskName = $_POST['task-name'];
        $taskDesc = $_POST['task-desc'];
  
        $sql = "INSERT INTO `tasks`( `task-name`, `task-desc`,`user-id`) VALUES ('{$taskName}','{$taskDesc}','{$_SESSION['id']}')";
        $result = mysqli_query($conn, $sql) or die('query unsuccessful');
    
        header("location: http://localhost/CLGproject/main/main-page.php");
        mysqli_close($conn);
        }
    }
    function editGetData($conn, $id){
        $sql2 = "SELECT * FROM `tasks` WHERE Sno ='{$id}'";
        $result2 = mysqli_query($conn, $sql2) or die('query unsucessful');
        while($row = mysqli_fetch_assoc($result2)){
            $test[] = $row; 
            echo json_encode($test);
        }
    }
    function editTask($conn) {
        if(isset($_POST['edit-task'])){

            $Sno = $_POST['task-id'];
            $newTaskName = $_POST['new-task-name'];
            $newTaskDesc = $_POST['new-task-desc'];
            
            $sql= "UPDATE `tasks` SET `task-name`= '{$newTaskName}',`task-desc`='{$newTaskDesc}' WHERE Sno = {$Sno}";
            $result = mysqli_query($conn, $sql) or die(' query unsucessful'); 
        
            header("location: http://localhost/CLGproject/main/main-page.php");
            mysqli_close($conn);
        }
    }
    function deleteTask($conn) {
        if(isset($_POST['del-task'])){
            
            $Sno = $_POST['task-id'];

            $sql1 = "DELETE FROM `tasks` WHERE Sno = {$Sno}";
            $result1 = mysqli_query($conn, $sql1) or die('query unsucessful');  
            header("location: http://localhost/CLGproject/main/main-page.php?success=1");
            mysqli_close($conn);  
        }
    }
    function updateUserInfo($conn) {
        if (isset($_POST['confirm-updateAcc'])){
            echo "<script>$('#userInfoModal').css('display', 'block');</script>";

            $id = $_POST['id'];
            $new_username = $_POST['new-username'];
            $new_email = $_POST['new-email'];

            if(empty(trim($_POST['new-username'])) || empty(trim($_POST['new-email']))){
                header("location: http://localhost/CLGproject/main/main-page.php?err=empty-values");
            }
            else{
                mysqli_query($conn,"start transaction;");
                $sql1 = "UPDATE `users` SET `email` = '{$new_email}', `username` = '{$new_username}' WHERE `id` = '{$id}' ";
                $result1 = mysqli_query($conn, $sql1) or die('query unsucessful');
                $check_email = mysqli_query($conn, "SELECT email FROM users where email = '$new_email' ");
                if(mysqli_num_rows($check_email) > 1){
                    mysqli_query($conn,"rollback;");
                    header("location: http://localhost/CLGproject/main/main-page.php?err=email-taken");
                }
                else{
                    mysqli_query($conn,"commit;");
                    header("location: http://localhost/CLGproject/main/main-page.php?updated=1");
                }
            }
        }
        if(isset($_POST['cancel-updateAcc'])){
            echo 'herrrrrrr';
            header("location: http://localhost/CLGproject/main/main-page.php");
        }
    }
    function logout(){
        if(isset($_POST['logout'])){
            session_start();
            $_SESSION = array();
            session_destroy();
            header("location: ../login.php");
        } 
    }


?>