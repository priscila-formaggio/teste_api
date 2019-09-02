class Documento
    
    include RSpec::Matchers
    include RestClient

    $payload_documento_upload = File.read("./features/support/jsons/documento_upload.json")

    $payload_documento_modelo = File.read("./features/support/jsons/documento_modelo.json")

    
    
    def criar_documento_via_upload
        response = Helper.new.post($rota_documents, JSON.parse($payload_documento_upload))
    end

    def criar_documento_via_modelo
        response = Helper.new.post($rota_templates, JSON.parse($payload_documento_modelo))
    end

    def visualizar_documento
        documento = criar_documento_via_upload
        resposta = JSON.parse(documento.body)
        document_key = resposta['document']['key']
        puts document_key
        rota = $URL + "documents/" + document_key + "?access_token=" + $TOKEN
        binding.pry 
        response = Helper.new.get($rota_documents)
    end

    
    
     
end