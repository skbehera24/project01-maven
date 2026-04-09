<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Food Ordering App</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f8f8f8;
            margin: 0;
        }
        header {
            background-color: #ff5733;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
        }
        .container {
            padding: 20px;
        }
        .food-card {
            background: white;
            padding: 15px;
            margin: 15px;
            display: inline-block;
            width: 250px;
            border-radius: 10px;
            box-shadow: 0px 2px 5px rgba(0,0,0,0.2);
            text-align: center;
        }
        .food-card img {
            width: 100%;
            border-radius: 10px;
        }
        .btn {
            background-color: #ff5733;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #e74c3c;
        }
    </style>
</head>
<body>

<header>
    🍴 Food Ordering App
</header>

<div class="container">

    <div class="food-card">
        <img src="https://via.placeholder.com/250x150" alt="Pizza">
        <h3>SUMIT-0</h3>
        <p>Delicious cheese pizza</p>
        <p><b>₹299</b></p>
        <button class="btn" onclick="order('Pizza')">Order Now</button>
    </div>

    <div class="food-card">
        <img src="https://via.placeholder.com/250x150" alt="Burger">
        <h3>SAMANTHA-0</h3>
        <p>Juicy chicken burger</p>
        <p><b>₹199</b></p>
        <button class="btn" onclick="order('Burger')">Order Now</button>
    </div>

    <div class="food-card">
        <img src="https://via.placeholder.com/250x150" alt="Pasta">
        <h3>GYANA-01</h3>
        <p>Creamy white sauce pasta</p>
        <p><b>₹249</b></p>
        <button class="btn" onclick="order('Pasta')">Order Now</button>
    </div>

</div>

<script>
    function order(item) {
        alert(item + " ordered successfully!");
    }
</script>

</body>
</html>
