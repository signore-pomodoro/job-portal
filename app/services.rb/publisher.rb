class Publisher
  def self.publish(exchange, message = {})
    #grab the fanout exchange
    event = channel.fanout("jobs.#{exchange}")
    #publish the message
    event.publish(message.to_json)
  end  

    #creates channel for an exchange 
    def self.channel
      @channel ||= connection.create_channel
    end  

    #creates new object with type 'Bunny' to establish connection
    def self.connection
      @connection ||= Bunny.new.tap do |connect|
        connect.start
    end  
  end  
end  
