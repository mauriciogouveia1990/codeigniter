<div class="container">
    <h1 class="text-center"> Pesquisa </h1>
    <form id="form-client">
        <div class="row">
            <div id="custom-search-input" class="col-sm-10 form-group">
                <div class="input-group">
                    <input type="text" name="client_search_input" class="search-query form-control client_search" placeholder="pesquise pelo nome ou nif do cliente..."/>
                    <span class="input-group-btn">
                        <button id="search-button" type="button" class="btn btn-primary">Pesquisar</button>
                    </span>
                </div>     
            </div>
            <div id="div-but_add" class="col-sm-2 form-group">
                <button id="but_add" type="button" class="btn btn-success pull-right but_add" data-toggle="modal" data-action="Novo" data-target="#clientModal">Adicionar</button>
            </div>
        </div>
    </form>
</div>