# This is a bot designed to work with GreenBot https://github.com/green-bot/greenbot-core
# Simply npm install this bot in the greenbot directory to install.
#
require "awesome_print"
require "rest-client"
require "json"

# Extract parameters from the Bash environment
# Greenbot will set these before the bot is executed
greeting = ENV['GREETING'] || 'Thank you for texting us! How can we help you?'
watson_username = ENV['WATSON_USERNAME'] || ''
password = ENV['PASSWORD'] || ''
workspace_id = ENV['WORKSPACE_ID'] || ''
username = ENV['SRC'] || 'user1'
initial_msg = ENV['INITIAL_MSG'] || 'hello'

begin
  # Start the conversation service.
  url = "https://#{watson_username}:#{password}@gateway.watsonplatform.net/conversation/api"
  version="2017-02-03"
  endpoint = "#{url}/v1/workspaces/#{workspace_id}/message?version=#{version}"

  puts greeting
  # The first message should be sent to the conversation service.
  input_text = gets.strip

  body = {
    input: {
      text: input_text
    }
  }.to_json

  # Call the endpoint
  response = RestClient.post endpoint, body, content_type: :json, accept: :json

  # Process the output
  response_body = JSON.parse(response.body)
  context = response_body["context"]

  response_body["output"]["text"].each do |text|
    puts text
  end

  # While watson doesn't return "botquit", keep forwarding the stdin
  # to it, express what is says back to stdout.

  unless context["system"]["branch_exited"]

    input_text = gets().strip
    body = {
      input: {
        text: input_text
      },
      alternate_intents: true,
      context: context,
    }.to_json

    response = RestClient.post endpoint, body, content_type: :json, accept: :json
    response_body = JSON.parse(response.body)
    context = response_body["context"]
    response_body["output"]["text"].each do |text|
      puts text
    end
  end
end
