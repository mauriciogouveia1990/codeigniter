<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-logo" href="<?php echo base_url("home") ?>"> <img id="logo" alt="brand" src="<?php echo base_url("") ?>"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="<?php echo base_url("home") ?>">Home</a></li>
        <li><a href="<?php echo base_url("sobre") ?>">Sobre</a></li>
        <li><a href="<?php echo base_url("frota") ?>">Frota</a></li>
        <li><a href="<?php echo base_url("contacto") ?>">Contacto</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right" id="menu-login">         
      <?php
        if ($this->session->userdata('sessao_utilizador') !== null) { ?>       <!-- se o utilizador tiver login feito -->
          <li class=""><a id="welcomeuser" href="#">Welcome <?=$this->session->userdata('sessao_utilizador')['username']?></a></li>
          <a href='<?php echo base_url("logout") ?>'>Logout?</a>
      <?php
        } else { ?>
        <li class=""><a id="navbartitulos" href="<?php echo base_url("login") ?>"> Login</a> </li>
      <?php 
        } ?>
      </ul>
    </div> <!-- /.navbar-collapse -->
  </div> <!-- /.container-fluid -->
</nav>