require File.expand_path('../config/environment', __dir__)

require 'telegram/bot'

token = "5159159213:AAFFtZdjyXzZ3d6uNSDGT_kneD6pdcKpFqY"

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when "/show"
      @job = Job.last 
      bot.api.send_message(chat_id: message.chat.id, text: "Самая свежая вакансия: #{@job.title}, #{@job.salary}, #{@job.currency}") 
    when "/search"
      bot.api.send_message(chat_id: message.chat.id, text: "Send me your search request")

    end       
  end  
end  
