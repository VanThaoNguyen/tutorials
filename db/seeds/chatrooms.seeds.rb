puts "==== Create Chatrooms ===="
Chatroom.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE chatrooms_id_seq RESTART WITH 1"
)

Chatroom.create(name: 'North', description: nil, slug: 'north')
puts "==== End ===="