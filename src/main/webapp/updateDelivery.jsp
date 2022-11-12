<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta charset="ISO-8859-1">    
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Package</title>

    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <link rel="stylesheet" href="css/package.css">
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
            <li> <a href="#" id="logout">LOG OUT <i class="fa-solid fa-right-from-bracket"></i></a></li>
          </ul>
        </nav>
      </div>
    </header>

    <!--package-->
    <div class="main">
      <!-- package Form -->
      <section class="sign-in">
        <div class="container">
          <div class="signin-content">
            <div class="signin-image">
              <figure>
                <img src="src/pSender.jpg" alt="Package sender image" />
              </figure>
            </div>

            <div class="signin-form">
              <h2 class="form-title">
                Update Delivery 
              </h2>
              
              
              <!-- form -->
              
              <%              
              String id = request.getParameter("id");
              String sAddress = request.getParameter("sAddress");
              String rName = request.getParameter("rName");
              String rAddress = request.getParameter("rAddress");
              String itemType = request.getParameter("itemType");
              String vehicle = request.getParameter("vehicle");
              String dateTime = request.getParameter("dateTime");       
              
              %>               
              
              <form method="post" action="update" >
                <div class="form-group">
                  <label for="from"
                    ><i class="fa-sharp fa-solid fa-location-pin"></i></i
                  ></label>
                  <input
                    type="text"
                    name="from"
                    id="from"
                    placeholder="Sender's Address.. "
                    values = "<%=sAddress %>"

                  />
                </div>
                <div class="form-group">
                  <label for="to"><i class="fa-sharp fa-solid fa-file-signature"></i></label>
                  <input
                    type="text"
                    name="name"
                    id="name"
                    placeholder="Reserver's Name.."
                    values = "<%=rName %>"
                  />
                </div>   
                <div class="form-group">
                  <label for="to"><i class="fa-solid fa-location-dot"></i></label>
                  <input
                    type="text"
                    name="to"
                    id="to"
                    placeholder="Reserver's Address.."
                     values = "<%=rAddress %>"
                  />
                </div>               
                <div class="form-group form-button">
                  <label for="item"><i class="fa-solid fa-box-open"></i></label>
                  <input type="text" name="item" placeholder="Item Type..."  values = "<%=itemType %>">
                </div>
                <div class="form-group form-button">
                  
                  Select Vehicle : 
                  <select name="vehicle" id="vehicle"  >
 					<option values = "<%=vehicle %>"></option>
                    <option value="bike">Bike</option>
                    <option value="car">Car</option>
                    <option value="van">Van</option>
                    <option value="lorry">Lorry</option>
                  </select>
                  <i class="fa-solid fa-caret-down"></i>
                  
                </div>
               <div class="form-group form-button">
                  <input type="datetime-local" name="datetime" values = "<%=dateTime %>">
                </div>
               
                <div class="form-group form-button">
                  <button type="submit" class="subBtn" role="button">Update</button>
                </div>
              </form>             
            </div>
          </div>
        </div>
      </section>
    </div>

    <!--Footer-->
    <footer>
      <div class="row">
        <div class="col">
            <h1 id="logo" style="color: white">ExpressGO</h1>
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
      <p class="copyright">Group project © 2022 - All Rights Reserved</p>
    </footer>
  </body>
</html>
