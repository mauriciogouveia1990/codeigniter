<?php
if ($this->session->flashdata('sucessoRegisto')!=null) { ?>
    <div class="alert alert-success text-center msn-contacto" id="mensagem">
        <i class="fas fa-check-circle  text-success"></i>
        <strong>Sucesso!</strong> 
        <?= $this->session->flashdata('sucessoRegisto')?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
<?php } ?>

<?php
if ($this->session->flashdata('sucessoModPass')!=null) { ?>
    <div class="alert alert-success text-center msn-contacto" id="mensagem">
        <i class="fas fa-check-circle  text-success"></i>
        <strong>Sucesso!</strong> 
        <?= $this->session->flashdata('sucessoModPass')?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    </div>
<?php } ?>

<section class="section-login">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 container-login ">
                <h2 class="text-center login-title text-white">Login</h2>
                <div class="login-square">
                    <?php echo form_open('User_c/login','class="form form-login"'); ?>
                        <div class="form-group form-group-input">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email"
                            value='<?php if($this->session->flashdata('erroEmail')) echo $this->session->flashdata('erroEmail')?>'>
                        </div>
                        <div class="form-group form-group-input">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                        <div class="checkbox text-center">
                            <label>
                                <input name="rememberme" type="checkbox">
                                Remember me
                            </label>
                        </div>
                        <div class="form-group text-center">
                            <label>
                                <a href="<?= base_url('resetPassword')?> " class=""> Esqueceu-se da palavra pass?</a>
                            </label>
                        </div>
                        <div class="form-group form-group-input">
                            <input type="submit" class="form-control btn btn-info btn-login btn-block" name="submitLogin" id="submitLogin" value="Efectuar Login">
                        </div>
                
                            <?php 

                                if($this->session->flashdata('erroLogin')!=null){
                                    echo "<p class='text-center text-danger erro-form-login'>".$this->session->flashdata('erroLogin')."</p>";
                                }
                            ?>
                
                    </form>

                    <div class="row">
                        <div class="form-group col-md-4">
                            <a class="back-login" href="<?=base_url('home');?>"><i class="fas fa-arrow-left "></i> Voltar</a>
                        </div> <!-- form-group// -->

                        <div class="form-group col-md-8">
                            <div class="border-top card-body text-center">Ainda nao tem conta? <a href="<?= base_url('registo')?>">Efectue já o seu registo!</a></div>
                        </div> <!-- form-group// -->
                    </div> <!-- row.// -->
                </div>
            </div>
   
        </div>
    </div>
</section>