require "awesome_print"
require 'watson/conversation'

watson_username = ENV['WATSON_USERNAME'] || ''
password = ENV['PASSWORD'] || ''
workspace_id = ENV['WORKSPACE_ID'] || ''
username = ENV['SRC']
initial_msg = ENV['INITIAL_MSG']

manage = Watson::Conversation::ManageDialog.new(
  username: watson_username,
  password: password,
  workspace_id: workspace_id,
  storage: 'hash'  
)

input_text = initial_msg.strip

while input_text != "botquit"
   response = manage.talk(username, input_text)
   output_text  = JSON.parse response
   puts output_text["output"][0]
   input_text = gets().strip
end
