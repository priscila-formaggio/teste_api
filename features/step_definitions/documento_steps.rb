  @@documento = Documento.new

Dado("que eu faça um post para criar um documento via upload") do
  @@response = @@documento.criar_documento_via_upload
  puts @@response
end

Dado("que eu faça um post para criar um documento") do
  @@response = @@documento.criar_documento_via_modelo
  puts @@response
end

Entao("API retorna status 201 com o documento criado") do 
  puts @@response.code
  expect(@@response.code).to eq 201
end


Dado("que eu faça um get para visualizar um documento") do
  @@response = @@documento.visualizar_documento
  puts @@response
end

Entao("API retorna status 200 com os detalhes do documento") do 
  expect(@@response.code).to eq 200
end

Dado("que eu faça um patch para configurar o autoclose de um documento para false") do
  @@response = @@documento.configurar_autoclose
  puts @@response
end

Entao("API retorna status 200 com a nova configuração") do 
  
end