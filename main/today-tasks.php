<?php 
    // starting session if it is not started
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
    // connecting to database
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
    <section id="content-today" class="content">
        <div class="head">
            <div class="heading">
                <span>Today</span>
                <small></small>
            </div>
            <div class="sort">
                <i class="fa fa-solid fa-sort-amount-desc"></i>
                <small>Sort By</small>
            </div>
        </div>
        <div class="tasks">
            <?php
                $sql1 = "SELECT * FROM `tasks` WHERE `user-id` = '{$_SESSION['id']}' ";
                $result1 = mysqli_query($conn, $sql1) or die('query unsucessful');
                if(mysqli_num_rows($result1) > 0){    
                    while($row = mysqli_fetch_assoc($result1)){
                        // print_r($row['Sno']);
            ?>
            <div class="single-task">
                <div class="todo">
                    <div class="checkbox">
                        <i class="fa fa-solid fa-circle-thin"></i>
                    </div>
                    <div class="text">
                        <input type="text" hidden value="<?php echo $row['Sno'];?>">
                        <span class="task-name"><?php echo $row['task-name'];?></span>
                        <p class="task-desc"><?php echo $row['task-desc'];?></p>
                        <small style="color: #bbb;"><?php echo '<i style="font-size:16px;" class=" fa fa-solid fa-calendar-o"></i>'.$row['timestamp'];?></small>                        
                    </div>
                </div>
                <div class="icons">
                    <i attr-id="<?php echo $row['Sno'] ?>" class="fa fa-solid fa-edit"></i> 
                    <i attr-id="<?php echo $row['Sno'] ?>" class="fa fa-solid fa-trash"></i>
                </div>        
            </div>
            <?php 
                } }
            ?>
            <!-- Add task modal -->
            <div class="addtask">
                <form class="add-task" action="function.php" method="post">
                    <div class="add-task-head">
                        <i class="fa fa-light fa-plus"></i>
                        <span>Add Task</span>
                    </div>
                    <div class="add-task-body">
                        <input type="text" name="Sno" hidden>
                        <input type="text" placeholder="Task Name" name="task-name" >
                        <textarea name="task-desc" id="" cols="30" rows="3" placeholder="Task Description"></textarea>
                        <div class="buttons">
                            <div class="left-buttons">
                                <button type="reset" id="one" name="cancelbtn" ><i class=" fa fa-solid fa-calendar-o"></i> Today</button>
                                <button type="reset" id="one" name="cancelbtn">Priority</button>
                            </div>
                            <div class="right-buttons">
                                <button type="reset" id="one" name="cancelbtn" >cancel</button>
                                <button class="addBtn" id="two" name="add-task" >Add Task</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <!-- Delete task Modal -->
            <div id="deleteModal" class="modal">
                <div class="modal-content">
                    <div class="modal-header">
                        <span class="modalClose">&times;</span>
                        <h2>Delete Task?</h2>
                    </div>
                    <form action="function.php" method="post">
                        <input type="hidden" name="task-id" id="delId" value="">
                        <div class="modal-body">
                            <p>Are you sure you want to delete this task?</p>           
                        </div>
                        <div class="modal-footer">
                            <div class="buttons">
                                <button name="reset" class="modalClose" type="button" id="one">cancel</button>
                                <button name="del-task" type="submit" id="two"> Yes! </button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
            <!-- Edit task Modal -->
            <div id="editModal" class="modal">
                <div class="modal-content">
                    <div class="modal-header">
                        <span class="modalClose">&times;</span>
                        <h2>Edit Task</h2>
                    </div>
                    <form action="function.php" method="post">
                        <div class="modal-body">
                            <input type="hidden" name="task-id" id="editId" value="">
                            <input type="text" id="editName" name="new-task-name" placeholder="Task Name" value="">
                            <textarea id="editDesc" name="new-task-desc" cols="30" rows="3" placeholder="Task Description"></textarea>
                        </div>
                        <div class="modal-footer">
                            <div class="buttons">
                                <button name="reset" id="one" class="modalClose" type="button">cancel</button>
                                <button name="edit-task" id="two">Edit Task</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
<?php 
if ( isset($_GET['success']) && $_GET['success'] == 1 )
{
     echo '<p style="color:red">Success</p>';
}
?>
    </section>
    <!-- js file -->
    <!-- <script src="main-page.js"></script> -->
</body>
</html>
<?php 
    mysqli_close($conn); 
?>