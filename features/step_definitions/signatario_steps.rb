    @@signatario = Signatario.new
Dado("que eu faça um post para adicionar um signatario a um documento") do
    50.times do
        @@response = @@signatario.adicionar_signatario_documento
        puts @@response
    end
end
  
Entao("API retorna status 201 com o vinculo do signatario ao documento") do 
    50.times do
        puts @@response.code
        expect(@@response.code).to eq 201
    end
end


Dado("que eu faça um post para criar um signatario") do
    @@response = @@signatario.criar_signatario
    puts @@response
end
  
Entao("API retorna status 201 com o signatario criado") do 
    puts @@response.code
    expect(@@response.code).to eq 201
end