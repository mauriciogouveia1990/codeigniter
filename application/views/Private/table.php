<div class="container">
    <table class="table table-striped table-hover" id="client_table">
        <thead>
            <tr>
                <th scope="col">Username</th>
                <th scope="col">Email</th>
                <th scope="col">Ações</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($client as $row) { ?>
                <tr>
                    <td data-id="<?= $row->id ?>" data-field="username"><?=$row->username?></td>
                    <td data-id="<?= $row->id ?>" data-field="email"><?=$row->email?></td>
                    <td data-id="<?= $row->id ?>">
                        <button type="button" class="btn btn-sm btn-secondary js-btn-edit-file" 
                            data-toggle="modal" data-target="#clientModal" data-action="Editar" data-client-id="<?php echo $row->id ?>"
                            data-client-username="<?php echo $row->username ?>" data-client-email="<?php echo $row->email ?>">
                                <i class="fas fa-pen-square" aria-hidden="true"></i>
                        </button>
                        <button type="button" class="btn btn-sm btn-primary js-btn-delete-file" data-id="<?= $row->id ?>">
                            <i class="fas fa-trash"></i>
                        </button>
                    </td>
                </tr>
            <?php } ?>
        </tbody>
    </table>
</div>
