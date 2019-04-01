    /**
     * function to set message when delete or edit table
     * 
     * @param {*} heading 
     * @param {*} text 
     * @param {*} icon 
     */
    function mensagem( heading, text, icon ){

        $.toast({ 
            heading : heading,
            text : text,
            icon : icon,
            position : 'top-center',
          })
    }

    /**
     * function to search input in database and present in table
     */
    function searchClient(){

        $.ajax({
            type:'Post',
            url: base_url + 'searchClient',
            data: $('#form-client').serialize(),
            success: function (response) {
                $('.client_table').html(response);
            }
        });
    }

$(document).ready(function(){

    /**
     * function to make request 500ms after user stop writting
     */
    var timeout = null;

    $('.client_search').keyup(function() {
        clearTimeout(timeout);
    
        timeout = setTimeout(function() {
    
            searchClient();
            
        }, 500);
    });

    /**
     * recall search when search button pressed
     */
    $(document).on('click', '#search-button', function(){
        searchClient();
    });


    /**
     *  function to edit client
     */
    $(document).on('click', '#edit-client', function(){

        $.ajax({
            type:'Post',
            url: base_url + 'receiveClientChangedData',
            data: $('#form-editar').serialize(),
            success: function (response) {
                var a = JSON.parse(response);
                if(a.success==true){
                    mensagem("Sucesso","Cliente editado com sucesso","success");
                    searchClient();
                }else{
                    mensagem("Erro",a.message,"error");
                }
            }
        });
    })

    /**
     *  function to add client
     */
    $(document).on('click', '#add-client', function(){

        $.ajax({
            type:'Post',
            url: base_url + 'addClient',
            data: $('#form-editar').serialize(),
            success: function (response) {
                var a = JSON.parse(response);
                if(a.success==true){
                    mensagem("Sucesso","Cliente adicionado com sucesso","success");
                    searchClient();
                }else{
                    mensagem("Erro",a.message,"error");
                }
            }
        });
    })
    
    /**
     * function to hide edit button when click delete
     */
    $('.js-btn-delete-file').on('click', function() {
        $(this).parent('td').children('button').first().toggle();
     });


    /**
     *  function to remove table cells
     */
    $('.js-btn-delete-file').removableToggle('deleteClient',
    {
        success: function(response){
            var a = JSON.parse(response);
            if(a.success==true){
                mensagem("Sucesso","Registo apagado com sucesso","success");
            }else{
                mensagem("Erro",a.message,"error");
            }
            setTimeout(function() {
                location.reload();
            }, 1500);           
        },

        error: function(){
            alert('error!');
        }
    });

    /**
     *  function call modal and send data
     */
    $('#clientModal').on('show.bs.modal', function(event) {
        var button          = $(event.relatedTarget);
        var action          = button.data('action');
        var clientId        = button.data('client-id');
        var clientUsername  = button.data('client-username');
        var clientEmail       = button.data('client-email');
        var modal           = $(this);
        if (action == "Novo"){
            modal.find('.modal-title').text(action + ' cliente ');
            modal.find('button[name="save-client"]').attr("id","add-client");
            $( "div" ).remove( "#client_id_form" );
        }
        else if (action == "Editar"){
            modal.find('.modal-title').text(action + ' cliente ' + clientUsername);
            modal.find('button[name="save-client"]').attr("id","edit-client");
        }
        modal.find('input[name="clientId"]').val(clientId);
        modal.find('input[name="clientUsername"]').val(clientUsername);
        modal.find('input[name="clientEmail"]').val(clientEmail);
    });
});