<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0" />
  <title>Notas - Take-A-Note!</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection" />
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection" />
</head>

<body>
<%@ page import="java.util.*,br.edu.insper.*" %>
  <nav>
    <div class="nav-wrapper light-blue accent-3 z-depth-2">
      <a href="#" class="brand-logo hide-on-med-and-down" style="margin-left:3%">Take-a-Note!</a>
      <a href="#" class="brand-logo hide-on-large-only">Take-a-Note!</a>
      <ul id="nav-mobile" class="right hide-on-med-and-down">
        <li>
          <a href="login" >Login</a>
        </li>
        <li>
          <a >Sign Up</a>
        </li>
      </ul>
    </div>

  </nav>


  <div class="section  blue-grey lighten-4">

    <!--   Icon Section   -->
    
    <div class="row">
      
      <div class="col l2  grey lighten-5 z-depth-1 hide-on-med-and-down" style="margin-top:-1%; padding-bottom:100%;" >
        <div class="row">
          <div class="col s12 ">
              <div class="row" style="margin-bottom:-10px">
                  <div class="input-field col s12">
                    <input type="text" id="autocomplete-input" class="autocomplete">
                    <label for="autocomplete-input"><i class="fa fa-search" style="margin-right:5px;"></i> Pesquisar</label>
                  </div>
              </div>
          </div>
        </div>
        <p id="tags" class="light-blue-text" style="margin-left:2%; margin-bottom:6%;">Tags</p>
        <div class="collection " >
          <a href="#!" class="collection-item grey-text">
            <i class="material-icons light-blue-text" style="margin-right: 5%">check_box_outline_blank</i>
            <font size="4px" style="vertical-align: top;">Trabalho</font>
          </a>
          <a href="#!" class="collection-item grey-text">
            <i class="material-icons light-blue-text" style="margin-right: 5%">check_box_outline_blank</i>
            <font size="4px" style="vertical-align: top;">Escola</font>
          </a>
          <a href="#!" class="collection-item grey-text">
            <i class="material-icons light-blue-text" style="margin-right: 5%">check_box_outline_blank</i>
            <font size="4px" style="vertical-align: top;">Férias</font>
          </a>
          <a href="#!" class="collection-item grey-text">
            <i class="material-icons light-blue-text" style="margin-right: 5%">check_box_outline_blank</i>
            <font size="4px" style="vertical-align: top;">Lazer</font>
          </a>
          <a href="#!" class="collection-item grey-text">
            <i class="material-icons light-blue-text" style="margin-right: 5%">check_box_outline_blank</i>
            <font size="4px" style="vertical-align: top;">Jogos</font>
          </a>

        </div>

      </div>

      <div class="col s12 l10">
        <div class="row">
          <div class="card col s12 l8 offset-l2 z-depth-2 hide-on-small-only">
             <form class="col s12">
       <div class="row">
           <div class="input-field col s11">
               <input id="name" type="text" class="validate">
               <label for="name">Name</label>
           </div>
           <div class="input-field col s1">
               <button class="btn-floating blue waves-effect waves-light" type="submit" name="action"><i class="material-icons">add</i>
               </button>
           </div>
       </div>
   </form>
          </div>
          <div class="card col s12 l8 offset-l2 z-depth-2 hide-on-med-and-up" style="margin-top:-3%">
              <div class="input-field col s11">
                <i class="material-icons prefix grey-text text-darken-1">search</i>
                <input id="newNote" placeholder="Pesquisa" type="text" class="validate">
              </div>
            </div>
        </div>
        <%  DAO dao = new DAO();
        List<Notas> notas = dao.getListaNotas();
        for (Notas nota : notas ) { %>
        <div class="col s6 l3">
          <div class="card-panel yellow lighten-3 z-depth-2" style="min-height:200px;">
          <h5><%=nota.getTitulo()%></h5>
            <span class="text"> <%=nota.getContent()%>
            </span>
          </div>
        </div>
        
       <% } 
        %>
        
        
      </div>
      
  


    </div>
    <div class="fixed-action-btn  toolbar hide-on-med-and-up">
        <a class="btn-floating btn-large light-blue accent-3">
          <i class="large material-icons">menu</i>
        </a>
        <ul>
          <li><a class="btn-floating light-blue accent-3"><i class="fa fa-tags"></i> </a></li>
          <li><a class="btn-floating light-blue accent-3"><i class="fa fa-plus-circle"></i></a></li>
        </ul>
      </div>
            
    <br>
    <br>
  </div>
  <!--
  <footer class="page-footer indigo lighten-1">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of college students working on this project like it's our full time job. Any amount would help support and continue development on this project and is greatly appreciated.</p>


        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Settings</h5>
          <ul>
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <li><a class="white-text" href="#!">Link 1</a></li>
            <li><a class="white-text" href="#!">Link 2</a></li>
            <li><a class="white-text" href="#!">Link 3</a></li>
            <li><a class="white-text" href="#!">Link 4</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">
      Made by <a class="orange-text text-lighten-3" href="http://materializecss.com">Materialize</a>
      </div>
    </div>
  </footer>
-->

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

</body>

</html>