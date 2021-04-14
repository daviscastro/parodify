Dado("que acesso a página login") do
    visit "http://parodify.qaninja.com.br"
    click_on "login"
end

Quando("submeto minhas credenciais com: {string} e {string}") do |email, password|
    find('#user_email').set email
    find('#user_password').set password
    click_on "log in"
end    

Então("devo ver a mensagem de erro: {string}") do |expect_message|
    message = find(".message .message-body")
    expect(message.text).to eql expect_message
end