<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home</title>
    
    <link rel="stylesheet" href="css/home.css" />
    <link rel="stylesheet" href="css/header.css" />
    <link rel="stylesheet" href="css/footer.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    
  </head>

  <body>

    <!--Header-->
    <header>
      <div class="header">
        <nav class="navBar">
          <h1 id="logo">ExpressGO</h1>
          <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">plan a Journey</a></li>
            <li><a href="#">Status updates</a></li>
            <li><a href="#">Maps</a></li>
            <li><a href="#">Fares</a></li>
            <li><a href="#">Help & Contact</a></li>
            <li><a href="#">More</a></li>
          </ul>
        </nav>
      </div>
    </header>


    <!--home page-->

    <h2 id="hname">ExpressGO</h2>

    <div class="content">
      <aside class="a">
        <div class="box">
          <div class="boxer">
            <h2 id="asDriver">
                As Driver
            </h2>  
            <br>
            <img id="dimg" src="src/driver.png" alt="driver" > 
                <br><br>             
            <button class="btn" role="button">LOGIN</button>
                <br><br>
            <h3>Not have an account? <a href="http://">Sign Up</a></h3>            
          </div>
        </div>
        <br />
      </aside>
      <div class="">
        <div class="box passengers">         
            <h2 id="asPassengers">
                As Passengers
            </h2>
            <br>
            <img id="pimg" src="src/passenger.png" alt="passenger" >
                <br><br>
            <button class="btn" role="button">LOGIN</button>
                <br><br>
            <h3>Not have an account? <a href="http://">Sign Up</a></h3> 
          </div>
        </div>
        <br />
      </div>
    </div>




    <!--Footer-->
    <footer>
      <div class="row">
        <div class="col">
          <h1 id="logo">ExpressGO</h1>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam quo,
            modi facilis molestiae velit illo dolore eius repellendus delectus
            sunt consectetur veniam blanditiis, tenetur itaque quis debitis
            laboriosam laudantium harum?
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
