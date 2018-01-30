# This is a bot designed to work with GreenBot https://github.com/green-bot/greenbot-core
# Simply npm install this bot in the greenbot directory to install.
#
require "awesome_print"
require "rest-client"
require "json"

# Extract parameters from the Bash environment
# Greenbot will set these before the bot is executed
greeting = ENV['GREETING']
watson_username = ENV['WATSON_USERNAME'] || ''
password = ENV['PASSWORD'] || ''
workspace_id = ENV['WORKSPACE_ID'] || ''
username = ENV['SRC'] || 'user1'
initial_msg = ENV['INITIAL_MSG'] || 'I need to talk to someone about my bill\n'

begin
  # Start the conversation service.
  url = "https://#{watson_username}:#{password}@gateway.watsonplatform.net/conversation/api"
  version="2017-02-03"
  endpoint = "#{url}/v1/workspaces/#{workspace_id}/message?version=#{version}"

  body = {
    input: {
      text: initial_msg.strip
    }
  }.to_json

  # Call the endpoint
  response = RestClient.post endpoint, body, content_type: :json, accept: :json
  
  # Process the output
  response_body = JSON.parse(response.body)
  context = response_body["context"]

  response_body["output"]["text"].each do |text|
    puts text+"\n"
    $stdout.flush
  end

  # Whisper to the agent the intent of the customer
  response_body["intents"].each do |i|
    confidenceScore = i['confidence'].to_f
    puts "{{whisper: customer intent: #{i['intent']}: #{confidenceScore.round(2)*100} % confidence}}"
    $stdout.flush
  
    # If the confidence is greater than 50%, tag the customer with the intent
    if confidenceScore > 0.5
      puts "{{tag: #{i['intent']}}}"
      $stdout.flush
    end
  end
  
  response_body["intents"].each do |i|
    puts "{{whisper: customer intent: #{i['intent']}: #{i['confidence'].to_f.round(2)*100} % confidence}}"
    $stdout.flush
  end


  # While watson doesn't return the string "botquit", keep forwarding the stdin
  # to it, express what is says back to stdout.

  unless context["system"]["branch_exited"]

    input_text = gets().strip
    body = {
      input: {
        text: input_text.strip
      },
      alternate_intents: true,
      context: context,
    }.to_json

    response = RestClient.post endpoint, body, content_type: :json, accept: :json
    response_body = JSON.parse(response.body)
    context = response_body["context"]
    response_body["output"]["text"].each do |text|
      puts text+"\n"
      $stdout.flush
    end
  end
  puts "{{whisper: Automation exited (#{context['system']['branch_exited_reason']}) }}" 
  $stdout.flush
end
