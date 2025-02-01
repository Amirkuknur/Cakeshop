<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Welcome to Our Cake Shop</title>
   <style>
       body {
           font-family: Arial, sans-serif;
           background-color: #f5f5f5;
           margin: 0;
           padding: 0;
       }

       section {
           text-align: center;
           margin-top: 50px;
       }

       h1 {
           color: #333;
           font-size: 2.5em;
           margin-bottom: 20px;
       }

       p {
           color: #666;
           font-size: 1.2em;
           margin-bottom: 40px;
       }

       nav {
           display: flex;
           justify-content: center;
           align-items: center;
           flex-wrap: wrap;
       }

       nav a {
           color: #fff;
           background-color: #FF5733;
           text-decoration: none;
           padding: 10px 20px;
           border-radius: 5px;
           margin: 10px;
           transition: background-color 0.3s;
           font-size: 1.2em;
       }

       nav a:hover {
           background-color: #e94e2e;
       }

       #paymentSubcategories {
           list-style-type: none;
           margin: 0;
           padding: 0;
       }

       #paymentSubcategories li {
           margin-bottom: 10px;
       }

       #paymentSubcategories li a {
           color: #333;
           text-decoration: none;
           font-size: 1em;
       }

       #paymentSubcategories li a:hover {
           text-decoration: underline;
       }
   </style>
</head>

<body>

   <section>
       <h1>Welcome, ${sessionScope.username}!</h1>
       <p>Enjoy delicious cakes from our shop. Explore our offerings below:</p>

       <nav>
           <a href="RegistrationDetaisl.jsp">Users Details</a>
           
           <a href="ContactDetails.jsp">Contact Us</a>
           <a href="Oder&payment.jsp">Order&Payment</a>
           
       </nav>

       
   </section>

   <script>
       function toggleSubcategories() {
           var subcategories = document.getElementById('paymentSubcategories');
           if (subcategories.style.display === 'none') {
               subcategories.style.display = 'block';
           } else {
               subcategories.style.display = 'none';
           }
       }
   </script>

</body>

</html>
