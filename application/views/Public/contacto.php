<section id="contact">
    <div class="container">
      <img id="imgcontacto" src="http://www.alraed-global.com/wp-content/uploads/2018/05/Contact-us-banner.jpg" alt="contacto">
      <br>
      <br>
      <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-4 my-5">
            <div class="card border-0">
                <div class="card-body text-center">
                <i class="fa fa-phone fa-5x mb-3" aria-hidden="true"></i>
                <h4 class="text-uppercase mb-5">call us</h4>
                <p>+8801683615582,+8801750603409</p>
                </div>
            </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 my-5">
            <div class="card border-0">
                <div class="card-body text-center">
                <i class="fa fa-map-marker fa-5x mb-3" aria-hidden="true"></i>
                <h4 class="text-uppercase mb-5">office loaction</h4>
                <address>Suite 02, Level 12, Sahera Tropical Center </address>
                </div>
            </div>
            </div>
            <div class="col-sm-12 col-md-6 col-lg-4 my-5">
            <div class="card border-0">
                <div class="card-body text-center">
                <i class="fa fa-globe fa-5x mb-3" aria-hidden="true"></i>
                <h4 class="text-uppercase mb-5">email</h4>
                <p>http://al.a.noman1416@gmail.com</p>
                </div>
            </div>
            </div>
        </div>
    </div>
</section>

<BR>

<div class="container" id="formularioContacto">
    <div class="row">
        <?php echo form_open('contacto') ;?>
        <div class="row">
            <div class="col-md-6">
                
                <div class="form-group">
                    <label for="name">
                        Nome</label>
                    <div class="input-group">
                    <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                    </span>
                    <input type="text" name="nomeContacto" class="form-control" id="nome" placeholder="Digite o seu name" required="required" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="email">
                        Email</label>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                        </span>
                        <input type="email" name="emailContacto" class="form-control" id="email" placeholder="Coloque o seu email" required="required" />
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="subject">
                        Assunto</label>
                    <select id="subject" name="assuntoContacto" class="form-control" onchange="showfield(this.options[this.selectedIndex].value)" required="required">
                        <option disabled value="na" selected="">Escolha um assunto:</option>
                        <option value="Questões Gerais">Questões Gerais</option>
                        <option value="Reclamações">Reclamações</option>
                        <option value="Sugestões">Sugestões</option>
                        <option value="Suporte">Suporte</option>
                        <option value="Other">Outro</option>
                    </select>


                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="name">
                        Mensagem</label>
                    <textarea name="mensagemContacto" id="mensagem" class="form-control" rows="9" cols="25" required="required"
                        placeholder="Escreva a sua mensagem"></textarea>
                </div>
            </div>
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                    Enviar</button>
            </div>
        </div>
        <?php echo form_close() ;?>
        <?php 
            if ($this->session->flashdata('sucessoFormContacto') != null) {
                echo '<div class="alert alert-dismissible alert-success" id="sucessoForm">
                <button type="button" class="close" data-dismiss="alert">&times;</button>'.$this->session->flashdata('sucessoFormContacto').'</div>';
            } elseif ($this->session->flashdata('erroFormContacto') != null) {
                echo '<div class="alert alert-danger text-center msn-contacto" id="mensagem1">
                    <i class="fas fa-exclamation-circle text-danger"></i>
                    <strong>Erro!</strong>'.$this->session->flashdata('erroFormContacto').
                    '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>';
            }
        ?>
    </div>
</div>