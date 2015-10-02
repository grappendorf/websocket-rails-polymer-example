WebsocketRails::EventMap.describe do

  subscribe :join, 'chat#join'
  subscribe :publish, 'chat#publish'

end
