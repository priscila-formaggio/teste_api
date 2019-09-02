class Signatario

    include RSpec::Matchers
    include RestClient

    @@payload_signatario_documento = File.read("./features/support/jsons/signatario_documento.json")
    @@payload_signatario = File.read("./features/support/jsons/signatario.json")

    def criar_signatario
        documento = Helper.new.post($rota_signers, JSON.parse(@@payload_signatario))
    end

    def adicionar_signatario_documento
        documento = Helper.new.post($rota_documents, JSON.parse($payload_documento_upload))
        resposta = JSON.parse(documento.body)
        document_key = resposta['document']['key']
        puts document_key
        payload_signatario = @@payload_signatario_documento.gsub("#DOCUMENTO", document_key)
        signatario = Helper.new.post($rota_lists, JSON.parse(payload_signatario))
    end

end