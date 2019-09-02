#language: pt
Funcionalidade: Assinatura

@documento
Cenario: Criar documento via Upload
    Dado que eu faça um post para criar um documento via upload
    Entao API retorna status 201 com o documento criado

@documento
Cenario: Criar documento via Modelos
    Dado que eu faça um post para criar um documento
    Entao API retorna status 201 com o documento criado

@documento
Cenario: Visualizar documento
    Dado que eu faça um get para visualizar um documento
    Entao API retorna status 200 com os detalhes do documento

@todo
Cenario: Configurar auto_close do documento para false
    Dado que eu faça um patch para configurar o autoclose de um documento para false
    Entao API retorna status 200 com a nova configuração 

@todo
Cenario: Configurar auto_close do documento para true
    Dado que eu faça um patch para configurar o autoclose de um documento para true
    Entao API retorna status 200 com a nova configuração 

@todo
Cenario: Configurar deadline do documento 
    Dado que eu faça um patch para configurar o deadline do documento
    Entao API retorna status 200 com a nova configuração 

@signatario
Cenario: Criar signatário 
    Dado que eu faça um post para criar um signatario 
    Entao API retorna status 201 com o signatario criado

@signatario
Cenario: Adicionar signatário a documento
    Dado que eu faça um post para adicionar um signatario a um documento
    Entao API retorna status 201 com o vinculo do signatario ao documento
