<?php
    // chama barra pesquisa
    echo $search;
?>

    <div class="client_table">
        <?php
            // chama tabela com dados
            echo $client_table;
        ?>
    </div>

<div class="modal" id="clientModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <form class="form-horizontal" id="form-editar">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Modal title</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" id="client_id_form">
                        <label for="client_id" class="col-lg-2 control-label"></label>
                        <div class="col-lg-10">
                            <input type="hidden" class="form-control" name="clientId" id="clientId" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="client_username" class="col-lg-2 control-label">Username</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" name="clientUsername" id="clientUsername" placeholder="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="client_email" class="col-lg-2 control-label">Email</label>
                        <div class="col-lg-10">
                            <input type="text" class="form-control" name="clientEmail" id="clientEmail" placeholder="">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                    <button type="button" class="btn btn-primary save-client" id="save-client" name="save-client">Submeter</button>
                </div>
            </form>
        </div>
    </div>
</div>