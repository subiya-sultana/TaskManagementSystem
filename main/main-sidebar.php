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
    <section class="sidebar">
        <div class="top">
            <div class="sidebar-title">
                <i class="fa fa-solid fa-angle-down"></i>
                <h3>Shortcuts</h3>
            </div>
            <ul>
                <li id="alltasks" <?php if ($currentPage=="All tasks") echo 'class="active"';?>>
                    <a href="http://localhost/CLGproject/main/main-page.php?page=All tasks">
                        <i class="fa fa-solid fa-inbox"></i>
                        <span>All Tasks</span>
                    </a>
                </li>
                <li name="today" id="today" <?php if ($currentPage=="Today tasks") echo 'class="active"';?>>
                    <a href="http://localhost/CLGproject/main/main-page.php?page=Today tasks">
                        <i class="fa fa-solid fa-clock-o"></i>
                        <span>Today</span>
                    </a>
                </li>
                <li id="overdue" <?php if ($currentPage=="Overdue tasks") echo 'class="active"';?>>
                    <a href="http://localhost/CLGproject/main/main-page.php?page=Overdue tasks">
                        <i class="fa fa-solid fa-exclamation-triangle"></i>
                        <span>Overdue</span>
                    </a>
                </li>
                <li id="upcoming" <?php if ($currentPage=="Upcoming tasks") echo 'class="active"';?>>
                    <a href="http://localhost/CLGproject/main/main-page.php?page=Upcoming tasks">
                        <i class="fa fa-solid fa-calendar"></i>
                        <span>Upcoming</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="bottom">
            <div class="sidebar-title">
                <i class="fa fa-solid fa-angle-down"></i>
                <h3>Lists</h3>
            </div>
            <ul>
                <li>
                    <i class="fa fa-solid fa-ellipsis-h"></i>
                    <span>Personal</span>
                </li>
                <li>
                    <i class="fa fa-solid fa-ellipsis-h"></i>
                    <span>Work</span>
                </li>
                <li>
                    <i class="fa fa-solid fa-ellipsis-h"></i>
                    <span>Education</span>
                </li>
                <li>
                    <i class="fa fa-solid fa-ellipsis-h"></i>
                    <span>Grocery</span>
                </li>
                <li>
                    <i class="fa fa-solid fa-ellipsis-h"></i>
                    <span>Shopping</span>
                </li>
            </ul>
        </div>
    </section>
</body>

</html>