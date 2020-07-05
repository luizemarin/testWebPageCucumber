Dado('o acesso a página de login') do
    visit 'https://www.divvino.com.br'
    find(:id, 'loginAutoUser').click
end
  
Quando('efetuar o login com {string} e {string}') do |email, senha|
    find('input[name=user]').set email
    find('input[name=pass]').set senha
end
  
Então('o login na página deve ser efetuado') do
    click_button 'Entrar'
end