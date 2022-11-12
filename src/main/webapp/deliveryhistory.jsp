<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Scheduled Delivery</title>

    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <link rel="stylesheet" href="css/package.css" />
    <link rel="stylesheet" href="css/style.css" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body>
    <script src="js/package.js"></script>
    <!--header-->
    <header>
      <div class="header">
        <nav class="navBar">
          <h1 id="logo" style="color: white">ExpressGO</h1>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">plan a Journey</a></li>
            <li><a href="#">Status updates</a></li>
            <li><a href="#">Maps</a></li>
            <li><a href="#">Fares</a></li>
            <li><a href="#">Help & Contact</a></li>
            <li>
              <a href="#" id="logout"
                >LOG OUT <i class="fa-solid fa-right-from-bracket"></i
              ></a>
            </li>
          </ul>
        </nav>
      </div>
    </header>
    
 
    <!--package delivery scheduled-->
    <div class="cont">
      <h2 id="hname">Scheduled Delivery for shipping..</h2>
      <table class="pTable">
        <thead>
          <tr class="table-headers">
            <th>Sender's location</th>
            <th>Recever's location</th>
            <th>Reserver's Name</th>
            <th>Item Type</th>
            <th>Date</th>
            <th>Time</th>
            <th>Edit</th>
            <th>Delete</th>
          </tr>
        </thead>
        <tbody>
         <c:forEach var="del" items = "${delDetails}">
          <tr>
          
            <td>${del.id}</td>
            <td>${del.sAddress}</td>
            <td>${del.rName}</td>
            <td>${del.ItemType}</td>            
            <td>${del.Vehicle}</td>
            <td>${del.dateTime}</td> 
            <td><button id="editBtn">Edit</button></td>
            <td><button id="deleteBtn">Delete</button></td>
            
          </tr>
          
          </c:forEach> 
           
          <tr>
          	<td>vvvv</td>
            <td>vvvv</td>
            <td>vvv</td>
            <td>eee</td>            
            <td>ee</td>
            <td>eeee</td>
            <td><button id="editBtn">Edit</button></td>
            <td><button id="deleteBtn">Delete</button></td>
           </tr> 
          
          
          
        </tbody>
      </table>
    </div>

    <!--Footer-->
    <footer>
      <div class="row">
        <div class="col">
          <h1 id="logo" style="color: white">ExpressGO</h1> <br>
          <p>
            ExpressGO provides you with 24 hours service through our taxi network. We provide multiple services including Airport drop out & pick up, scheduled trips and one time trips. With our newly developed app, this will be super easy.
          </p>
        </div>
        <div class="col">
          <h3>Office</h3>
          <p>ITPL Road</p>
          <p>Whitefield, Bangalore</p>
          <p class="email-id">expressgo@gmail.com</p>
          <h4>+9412345678</h4>
        </div>
        <div class="col">
          <h3>Links</h3>
          <div class="cont">
            <ul>
              <li><a href="#">Home</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">About us</a></li>
              <li><a href="#">Features</a></li>
              <li><a href="#">Contacts</a></li>
            </ul>
          </div>
        </div>
        <div class="col">
          <h3>Newslatter</h3>
          <form class="fForm">
            <i class="fa-solid fa-envelope"></i>
            <input type="email" placeholder=" Enter email address.." required />
            <button type="submit">
              <i class="fa-solid fa-arrow-right"></i>
            </button>
          </form>
          <div class="social-icons">
            <i class="fa-brands fa-square-facebook"></i>
            <i class="fa-brands fa-square-instagram"></i>
            <i class="fa-brands fa-square-whatsapp"></i>
            <i class="fa-brands fa-square-pinterest"></i>
          </div>
        </div>
      </div>
      <hr />
      <p class="copyright">Group project Â© 2022 - All Rights Reserved</p>
    </footer>
  </body>
</html>
