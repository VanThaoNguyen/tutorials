puts "==== Create Admins ===="
  Admin.destroy_all
  ActiveRecord::Base.connection.execute(
    "ALTER SEQUENCE admins_id_seq RESTART WITH 1"
  )

  Admin.create(email: 'admin@example.com', password: '123123123')
puts '==== End ===='