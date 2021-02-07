<!DOCTYPE html>
<html>
<head>
    <?php
        $sqrt = sqrt($_GET["value"]);
        $name = isset($_GET["name"])?$_GET["name"]:"[uninformed]";
        $birthDay = isset($_GET["birthDay"])?$_GET["birthDay"]:0;
        $age = date("Y") - $birthDay;
        $txt = isset($_GET["txt"])?$_GET["txt"]:"My Text";
        $size = isset($_GET["size"])?$_GET["size"]:"12pt";
        $color = isset($_GET["color"])?$_GET["color"]:"#000000"
    ?>
  <link rel="stylesheet" href="style.css"/>
  <meta charset="UTF-8"/>
  <title>Course</title>
  <style>
    span.texto {
        font-size: <?php echo $size; ?>;
        color: <?php echo $color; ?>;
    }
  </style>
</head>
<body>
<div>
    <?php
        $f = number_format($sqrt, 2);
        echo "<span class='texto'>$txt and $name have $age old and Square Root is $f</span>";
    ?>
</div>
</body>
</html>
 