require "awesome_print"
require "artemis/bot"

Artemis::Bot.configure do |config|
    config.username = "9f0f9eef-e08f-4801-a451-4959f39f3684"
    config.password = "pCGya3YlRMaw"
    config.base_uri = "https://gateway.watsonplatform.net/conversation/api"
  end

workspace_id =  "6e75b003-3f06-4d55-b7ac-f3c4cf8501ae"

input_text = gets()
puts "Input text is " + input_text

message_request = Artemis::Bot::MessageRequest.new
message_request.input.text = input_text
message_request.alternate_intents = true

response = Artemis::Bot::Conversator.message(workspace_id, message_request)
puts response.output.text
ap response

# assign the context from the previous response
message_request.context = response.context
message_request.input.text = "1232312312"

# send the message through the Conversator
response = Artemis::Bot::Conversator.message(workspace_id, message_request)
puts response.output.text
