20.times do |i|
  User.create(name: "User #{i}")
end

100.times do |i|
  user = User.limit(1).offset(rand(1..20)).first
  DigestReference.create(user: user)
end
