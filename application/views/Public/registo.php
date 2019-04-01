<?php
if ($this->session->flashdata('erros')!=null) { ?>
    <div class="alert alert-danger text-center msn-contacto" id="mensagem">
		<i class="fas fa-exclamation-circle text-danger"></i>
        <strong>Erro!</strong> 
        <?= $this->session->flashdata('erros')?>
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
<?php } ?>

<?php
if ($this->session->flashdata('captcha')!=null) { ?>
    <div class="alert alert-danger text-center msn-contacto" id="mensagem1">
	<i class="fas fa-exclamation-circle text-danger"></i>
        <strong>Erro!</strong> 
        <?= $this->session->flashdata('captcha')?>
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
<?php } ?>


<div class="text-center" style="padding:50px 0">
	<div>
    <h2>Registo</h2>
    <p>Por favor insira os seus dados.</p>
    </div>
	<div class="register-form">
        <?php echo form_open('User_c/registo') ;?>
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">

					<div class="form-group form-group-input">
						<label for="reg_username">Username</label>
						<input type="text" class="form-control" id="username" name="username" value="<?php echo set_value('username'); ?>" placeholder="Username" >
					</div>

                    <div class="form-group form-group-input">
						<label for="reg_email">Email</label>
						<input type="email" class="form-control" id="email" name="email" value="<?php echo set_value('email'); ?>" placeholder="Email" >
					</div>

					<div class="form-group form-group-input">
						<label for="reg_password">Password</label>
						<input type="password" class="form-control" id="password" name="password" value="<?php echo set_value('password'); ?>" placeholder="Password" >

					</div>
					<div class="form-group form-group-input">
						<label for="reg_password_confirm">Confirmação da Password</label>
						<input type="password" class="form-control" id="password_confirm" name="password_confirm" value="<?php echo set_value('password_confirm'); ?>"
							placeholder="Confirme a password" >

					</div>
					<div class="form login-group-checkbox">
						<input type="checkbox" class="" id="reg_agree" name="reg_agree" value="1">
						<label for="reg_agree">Aceite os  <a href="#">termos e condições</a></label>
                    </div>
                    <BR>
				</div>
 				<div class="g-recaptcha" data-sitekey="6LdOt5AUAAAAAK20_UC56v2G2kHoWU8QU3zvSHx9"></div> <!-- captcha google -->
				<button type="submit" name="btnRegisto" id="btnRegisto" class="btn btn-success btn-sm botaoRegisto">Submeter</button>
			</div>
			<div class="etc-login-form">
				<p>Já possui uma conta? <a href="<?php echo base_url("login") ?>">Faça Login</a></p>
			</div>
		</form>
	</div>
</div>

<script src='https://www.google.com/recaptcha/api.js'></script>
<script>$('#mensagem').delay(5000).fadeOut('slow');</script>
<script>$('#mensagem1').delay(5000).fadeOut('slow');</script>