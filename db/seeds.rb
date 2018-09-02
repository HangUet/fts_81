5.times do |n|
  name = "Supervisor #{n}"
  email = "supervisor-#{n+1}@gmail.com"
  password = "123456"
  role = 1
  User.create!(name: name,
             email: email,
             address: "141 xuan thuy, cau giay, ha noi",
             phone: "02548652",
             password: password,
             role: role)
end

5.times do |n|
  name  = Faker::Name.name
  email = "trainee-#{n+1}@gmail.com"
  password = "123456"
  role = 0
  User.create!(name:  name,
               email: email,
               address: "#{n+2} xuan thuy, cau giay, ha noi",
               phone: "02548652",
               password: password,
               role: role)
end
