#language : pt
@startup
Funcionalidade: Efetuar compra de produto na pagina

Cenario: Usuário deve ser autorizado
Dado o acesso a página de login
Quando efetuar o login com "test@automation.com.br" e "123456"
Então o login na página deve ser efetuado

Cenario: Realizar a compra de um produto
Dado o acesso a página de login
E efetuar o login com "test@automation.com.br" e "123456"
Quando realizar a consulta do produto "Cabernet"
E adicionar o item ao carrinho
Então a compra do produto é realizada