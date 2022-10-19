<?php 
    // Connecting to database
    require_once '../config.php';

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <!-- css file -->
    <link rel="stylesheet" href="main-page.css">
    <!-- favicon -->
    <link rel="icon" type="image/png" href="" sizes="96x96">
    <!-- font aewsome cdn -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- jquery cdn -->
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
</head>

<body>
    <nav>
        <div class="left-icons">
            <i class="icons fa fa-solid fa-bars"></i>
            <i class="icons fa fa-solid fa-home"></i>
            <i class="icons fa fa-solid fa-user"></i>
            <!-- userInfo Modal -->
            <div id="userInfoModal" class="modal userInfoModal">
                <div class="modal-content">
                    <form action="function.php" method="post">
                        <div class="modal-header">
                            <label for="one"> <span class="modalClose">&times;</span></label>
                            <h2>Account</h2>
                        </div>
                        <div class="modal-body">
                            <?php
                            // taking users data in row variable
                            $sql = "SELECT * FROM `users` WHERE `id` = '{$_SESSION['id']}' ";
                            $result = mysqli_query($conn, $sql) or die('query unsucessful');
                            $row = mysqli_fetch_assoc($result);
                            // print_r($row);
                            ?>
                            <h4>Logout</h4>
                            <p>Are you sure you want to logout? after logging out you will need to logIn again to the server to re-authenticate.</p>
                            <button name="logout"> Logout </button>
                            <hr>
                            <h4>Delete Account</h4>
                            <p>Deleting your account is permanent. All your data will be wiped out immediately and you won't be able to get it back.</p>
                            <button name="delAccount" class="delAccount" type="button"> Delete Account </button>
                            <hr>
                            <h4>Update info</h4>
                            <input type="hidden" name="id" value="<?php echo $row['id'];?>">
                            <label for="">Username</label>
                            <input type="text" name="new-username" value="<?php echo $row['username'];?>">
                            <label for="">Email</label>
                            <input type="text" name="new-email" value="<?php echo $row['email'];?>">
                            <!-- php code for updating account -->
                            <?php     
                                if (isset($_GET['err']) && $_GET['err'] == 'empty-values' ){
                                    echo '<p style="color:red;">Username or email cannot be empty. No updates done.</p>';
                                    echo "<script>$('#userInfoModal').css('display', 'block');</script>";
                                } 
                                elseif (isset($_GET['err']) && $_GET['err'] == 'email-taken' ){
                                    echo '<p style="color:red;">This email is already taken. No updates done.</p>';
                                    echo "<script>$('#userInfoModal').css('display', 'block');</script>";
                                } 
                                elseif (isset($_GET['updated']) && $_GET['updated'] == 1 ){
                                    echo '<p style="color:red;">Updates done.</p>';
                                    echo "<script>$('#userInfoModal').css('display', 'block');</script>";
                                }
                                else{
                                    echo '<p style="color:red;"></p>';
                                    echo "<script>$('#userInfoModal').css('display', 'none');</script>";
                                }
                            ?>
                        </div>
                        <div class="modal-footer">
                            <hr>
                            <div class="buttons">
                                <button name="cancel-updateAcc" id="one"> cancel </button>
                                <button name="confirm-updateAcc" type="submit" id="two"> Update! </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- Delete Account Modal -->
            <div id="deleteAccountModal" class="modal userInfoModal">
                <div class="modal-content">
                    <div class="modal-header">
                        <span class="modalClose">&times;</span>
                        <h2><i id="return" class="fa fa-solid fa-arrow-left"></i> Delete Account?</h2>
                    </div>
                    <form action="" method="post" target="_top">
                        <input type="hidden" name="user_id" value="">
                        <div class="modal-body">
                            <h4>Are you sure u want to delete your account?</h4>
                            <p>Deleting your account is permanent. All your data will be wiped out immediately and you won't be able to get it back.</p>
                            <hr>
                            <h4>You need to add email and password to delete account!</h4>
                            <label for="">Email Account</label>
                            <input type="text" name="email" value="">
                            <label for="">OrganizeU Password</label>
                            <input type="password" name="password" value="">
                            <p>Deleting your account requires your current email and password as confirmation.</p>
                            <!-- php code for deleting account -->
                            <?php 
                                $user_email = $user_password = '';
                                $err = '';
                                if (isset($_POST['confirm-delete'])){
                                    $user_email = trim($_POST['email']);
                                    $user_password = trim($_POST['password']);
                                    if(empty(trim($_POST['email'])) || empty(trim($_POST['password']))){
                                        $err = 'Please enter email + password and try again.';
                                        echo '<p style="color:red;">'. $err .'</p>';
                                    }
                                    else if($_POST['email'] == $_SESSION['email'] && password_verify($_POST['password'], $_SESSION['password'])){
                                        $err = "";
                                        $sql3 = "DELETE FROM `users` WHERE `email` = '{$_SESSION['email']}' ";
                                        $result3 = mysqli_query($conn, $sql3) or die('query unsucessful');
                                        $_SESSION = array();
                                        session_destroy();
                                        echo "<script type='text/javascript'>window.top.location='http://localhost/CLGproject/register.php';</script>"; 
                                        exit;
                                    }
                                    else{
                                        $err = 'You entered an incorrect email or password. Please confirm and try again.';
                                        echo '<p style="color:red;">'. $err .'</p>';
                                    }
                                    if ($err) {
                                    echo "<script>$('#deleteAccountModal').css('display', 'block');</script>";
                                    }
                                }
                            ?>
                        </div>
                        <div class="modal-footer">
                            <hr>
                            <div class="buttons">
                                <button name="cancel-delete" type="submit" id="one"> cancel </button>
                                <button name="confirm-delete" type="submit" id="two">Del Acc</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="left-icons">
            <span class="searchbar">
                <i id="search-icon" class="icons fa fa-solid fa-search"></i>
                <input type="text" placeholder="Search">
                <i id="close-icon" class="icons fa fa-solid fa-close"></i>
            </span>
        </div>
    </nav>
</body>
</html>
