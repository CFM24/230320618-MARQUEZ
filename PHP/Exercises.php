<!DOCTYPE html>
<html>
<head>
    <title>CC14 PHP Exercises</title>
</head>

<body>

<?php
echo "<h1>Exercise 1</h1>";

$a = 15;
$b = 7;

$sum = $a + $b;
$dif = $a - $b;
$prod = $a * $b;
$quot = $a / $b;

echo "<ul>";
echo "<li>Sum: " . $sum . "</li>";
echo "<li>Difference: " . $dif . "</li>";
echo "<li>Product: " . $prod . "</li>";
echo "<li>Quotient: " . number_format($quot, 2) . "</li>";
echo "</ul>";


echo "<h1>Exercise 2</h1>";

$num = 1;

if ($num % 2 == 0) {
    echo "$num is an even number.";
} else {
    echo "$num is an odd number.";
}

if ($num > 0) {
    echo "<br>$num is a positive number.";
} elseif ($num < 0) {
    echo "<br>$num is a negative number.";
} else {
    echo "<br>The number is zero.";
}


echo "<h1>Exercise 3</h1>";

for ($i = 1; $i <=100; $i++) {
    if ($i % 3 == 0 && $i % 5 == 0) {
        echo "FizzBuzz ";
    }   elseif ($i % 3 == 0) {
        echo "Fizz ";
    }   elseif ($i % 5 == 0) {
        echo "Buzz ";
    } else {
        echo "$i ";
    }
}

echo "<br><br>";


echo "Fibonacci Numbers (Even): ";
$first = 0;
$second = 1;
$count = 10;

for ($i = 0; $i < $count; $i++) {
    $next = $first + $second;
    $first = $second;
    $second = $next;

    if ($next % 2 == 0) {
        echo "$next ";
    }
}

echo "<h1>Exercise 4</h1>"; 
function greet($name) {
    return "Hello, $name!";
}

echo greet("John") . "<br>";

function square($num) {
    return $num * $num;
}

echo "Square of 4: " . square(4) . "<br>";

echo "<h1>Exercise 5</h1>";
?>

<form method="POST">
    <input type="text" name="textInput" placeholder="Enter text">
    <input type="submit" name="submit" value="Submit">
</form>

<?php
if (isset($_POST['submit'])) {
    $inputText = $_POST['textInput'];
    echo "<br>You entered: " . htmlspecialchars($inputText);
}
?>

</body>
</html>
