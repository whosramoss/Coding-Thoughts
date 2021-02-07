<?php

class AgregacaoCarrinho {

    private $Cliente;
    private $Produtos;
    private $Total;

    function __construct(AssociacaoCliente $Cliente) {
        $this->Cliente = $Cliente;
        $this->Produtos = array();
    }

    public function Add(AgregacaoProduto $Produto) {
        $this->Produtos[$Produto->getProduto()] = $Produto;
        $this->Total += $Produto->getValor();
        $this->VerCarrinho($Produto, 'adicionou');
    }

    public function Remove(AgregacaoProduto $Produto) {
        unset($this->Produtos[$Produto->getProduto()]);
        $this->Total -= $Produto->getValor();
        $this->VerCarrinho($Produto, 'removeu');
    }

    public function VerCarrinho(AgregacaoProduto $Produto, $Action) {
        echo "Você {$Action} um {$Produto->getNome()} em seu carrinho. Valor R$ {$this->Total}<hr>";
    }

}
