require File.expand_path('../config/environment', __dir__)

require 'telegram/bot'

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    if !User.exists?(telegram_id: message.from.id)
      user = User.create(telegram_id: message.from.id, name: message.from.first_name)
    else 
      user = User.find_by(telegram_id: message.from.id)
    end

    case user.step
      when "start"
        user.bots.create(username: message.text)  
        user.step = "description"
        user.save
        bot.api.send_message(chat_id: message.chat.id, text: "Send me bot description")
      when "description"
        new_bot = user.bots.last
        new_bot.description = message.text
        new_bot.save
        bot.api.send_message(chat_id: message.chat.id, text: "Thank you. Bot is saved.")
        user.step = nil
        user.save  
    end  
        
    case message.text
      when "/show_last"
        job = Job.last
        bot.api.send_message(chat_id: message.chat.id, text: "The last available job is #{job.title}, #{job.salary}")  
        bot.api.send_photo(chat_id: message.chat.id, photo: "https://www.ginifab.com/yoga/img/butt_lifting_peach_hip_snakeskin_leggings_1.jpg")  
      when "/search"
        user.step = "search"
        user.save
        bot.api.send_message(chat_id: message.chat.id, text: "Send me your search request")
    end
  end  
end  
