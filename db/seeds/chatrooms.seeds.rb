puts "==== Create Chatrooms ===="
Chatroom.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE chatrooms_id_seq RESTART WITH 1"
)

Chatroom.create([
                {
                  name: 'North', description: nil, slug: 'north'
                },

                {
                  name: 'Education', description: nil, slug: 'education'
                },

                {
                  name: 'Sport', description: nil, slug: 'sport'
                }
                ])
puts "==== End ===="