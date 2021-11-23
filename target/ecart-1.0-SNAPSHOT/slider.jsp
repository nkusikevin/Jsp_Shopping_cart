<%-- 
    Document   : slider
    Created on : Nov 22, 2021, 4:59:52 PM
    Author     : UR ADMIN SYSTEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="">
 <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
      <li data-target="#carousel-example-generic" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="./assets/img/gf.jpg">
        <div class="carousel-caption d-none d-md-block" style=" margin-bottom: 3rem;color: whitesmoke; font-weight: bold ; font-size: 20px">
          <h5>Imandwa Collection</h5>
          <p>Imandwa celebrates fashion freedom of ancient generations.</p>
        </div>
      </div>
      <div class="item">
        <img src="./assets/img/mttt.jpg">
        <div class="carousel-caption d-none d-md-block" style=" margin-bottom: 3rem;color: black; font-weight: bold ; font-size: 20px">
          <h5>Inkingi Collection</h5>
          <p>The Inkingi Pillar, Collection captures the concept of a continuous journey.</p>
        </div>
      </div>
      <div class="item">
        <img src="./assets/img/motions.jpg">
        <div class="carousel-caption d-none d-md-block" style=" margin-bottom: 3rem; color: black; font-weight: bold ; font-size: 20px">
          <h5>Intsinzi Collection</h5>
          <p>Intsinzi means Victory, and the Collection was crafted as an ode and dedication to the men and women.</p>
        </div>
      </div>
      </div>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
