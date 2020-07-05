Quando('realizar a consulta do produto {string}') do |produto|
    find('input[name=Ntt]').set produto
    find('input[name=Ntt]').native.send_keys(:enter)
  end
  
  Quando('adicionar o item ao carrinho') do
    @item = 'Traversa Cabernet Sauvignon'
    expect(page).to have_content @item
    find(:id, 'button_cart-2400306').click
  end
  
  Então('a compra do produto é realizada') do
    find(:id, 'quantidadeAjax').click
  end

  