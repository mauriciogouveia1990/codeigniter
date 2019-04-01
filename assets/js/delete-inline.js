(function( $ ) {
    /** ******  removableToggle  *********************** **/
    /**
     * Example for usage
     * <button type="button" class="btn btn-sm btn-primary js-btn-delete-file" data-id="1">
     *     <i class="fa fa-trash-o">
     *     </i>
     * </button>
     * <script type="text/javascript">
     *  $('.js-btn-delete-file').removableToggle(
     *             'url.com/delete/id=',
     *             {
     *                 success: function(){
     *                     alert('success!');
     *                 },
     *
     *                 error: function(){
     *                     alert('error!');
     *                 }
     *             }
     *     );
     * Plugin jQuery para tratar os botões toggle de eliminar itens na administração.
     * @param  string url     URL do pedido ajax pode ser absoluto ou relativo exemplo ( 'paymentmethods/')
     * @param  objeto options Opções do objeto Ajax
     * @return objeto         O objeto jQuery
     */
    $.fn.removableToggle = function(url, options) {
        this.each(function(){
            var deleteBtn = $(this);
            var settings = $.extend({
                type: 'POST',
                url: url,
                data: 'id='+$(this).data('id'),
                cache: false,
                success: function(result) {
                    //default doesn't do anything
                }
            }, options);

            /**
             * Sets delete button to default state
             * @param
             */
           function setDefault(element){
                element.removeClass("btn-danger").addClass("btn-primary").find("i").removeClass('fa-remove').addClass('fa-trash-o');
                element.prev().toggle();
           }

            /**
             * Sets delete button to dlg state
             * @param
             */
            function setDlgMode(element){
                element.removeClass("btn-primary").addClass("btn-danger").find("i").addClass('fa-remove').removeClass('fa-trash-o');
                element.prev().toggle();
           }

            $(this).on('click', function(e) {
                e.preventDefault();
                 if ($(this).hasClass( "btn-primary" ) ) {
                    setDlgMode( $(this));
                } else{
                    setDefault( $(this));
                }
            });
            //Check for the size class of btn
            var currentClass = (typeof $(this).attr('data-btn-size') !== "undefined") ?$(this).data('btn-size'):"btn-sm";
            $botaoConfirmar = $('<button type="button" class="btn btn-success '+currentClass+'"><i class="fa fa-check"></i></button>')
                .hide()
                .on('click', function(e) {
                    e.preventDefault();
                    $.ajax(settings);
                    setDefault(deleteBtn);
                    $(this).hide();
                });
            $(this).before($botaoConfirmar);
        });
        return this;
    }
    /** ******  /removableToggle  *********************** **/
}(jQuery));
