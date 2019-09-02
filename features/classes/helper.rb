class Helper
    include RSpec::Matchers
    include RestClient

    def post(url, body) 
        begin
            puts 'CHAMANDO API'
            RestClient::Request.new({
                method: :post,
                url: url,
                payload: body.to_json,
                headers: { :accept => :json, content_type: :json }
            }).execute do |response|
                return response
            end
        rescue Exception => e
            puts 'Deu erro'
            puts e.inspect
        end
    end

    def get(url)
        begin
            puts 'CHAMANDO API'
            RestClient::Request.new({
                method: :get,
                url: url,
              }).execute do |response|
                return response
        end
        rescue Exception => e
            puts 'Deu erro'
            puts e.inspect
        end
    end

    
   
end