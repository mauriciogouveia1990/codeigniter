<section class="section-resetPass">
    <div class="container containerResetPass">
        <?php echo form_open('validaToken','id="formRegisto"'); ?>
            <div class="form-login">
            <h2 class="form-signin-heading text-center">Modificar Password</h2><br>
            <div class="form-group">
                    <label for="passwordRegisto">Password: <span class="text-danger"> *</span></label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fas fa-lock"></i></div>
                        <input class="form-control checkLogin" type="password" placeholder="Password" 
                         name="passwordConf" id="passwordRegisto">
                    </div>
                </div>
                <div class="form-group">
                    <label for="confirmPasswordRegisto">Confirm Password: <span class="text-danger"> *</span></label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fas fa-lock"></i></div>
                        <input class="form-control checkLogin" type="password" placeholder="Password" 
                         name="confirmPasswordRegisto" id="confirmPasswordRegisto">
                    </div>
                    <p id="confirmPw" class="text-danger text-center"></p>
                </div>
                
                <input type="hidden" name="tokenValue" value="<?= $token['value']?>">
                <input type="hidden" name="userId" value="<?= $token['utilizador_id']?>">
                <input type="hidden" id="url" value="<?= base_url()?>">
                <input type="submit" class="btn btn-primary btn-lg btn-block" name="submitModPassword" value="Modificar Password" id="submit">
            </div>
        </form> 
    </div>
</section>