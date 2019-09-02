require 'cucumber'
require 'rspec'
require 'json'
require 'pry-byebug'
require 'rest-client'
require 'yaml'

configFile = YAML.load_file("./features/support/config.yml")

$URL = configFile["endpoint"]["url"]

$TOKEN= "84535c44-45bb-4352-8d3f-c4383baa9416"

$rota_documents = $URL + "documents?access_token=" + $TOKEN

$rota_signers = $URL + "signers?access_token=" + $TOKEN

$rota_lists = $URL + "lists?access_token=" + $TOKEN

$rota_templates = $URL + "templates/21d455eb-c257-4c0a-a662-f0992a237af9/documents?access_token=" + $TOKEN

