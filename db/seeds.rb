# User.create!(email: "ed@gmail.com", password: "kami3107", username: "itaru", introduce: "I am Itaru Tokuda web developer")
# User.create!(email: "papa@gmail.com", password: "kami3107", username: "papa", introduce: "I am Papa Tokuda")
# User.create!(email: "smith@gmail.com", password: "kami3107",  username: "smith", introduce: "I am Smith Smith web developer")
# User.create!(email: "mama@gmail.com", password: "kami3107",  username: "mama", introduce: "I am Mama Tokuda web developer")
# User.create!(email: "hana@gmail.com", password: "kami3107",  username: "hana", introduce: "I am Hana Tokuda web developer")
# User.create!(email: "brian@gmail.com", password: "kami3107",  username: "brian", introduce: "I am Brian Tokuda web developer")
# User.create!(email: "micheal@gmail.com", password: "kami3107",  username: "micheal", introduce: "I am micheal Tokuda web developer")
# User.create!(email: "stephan@gmail.com", password: "kami3107",  username: "stephan", introduce: "I am Stephan Tokuda web developer")
# User.create!(email: "chris@gmail.com", password: "kami3107",  username: "chris", introduce: "I am Chris Tokuda web developer")
# User.create!(email: "thai@gmail.com", password: "kami3107",  username: "thai", introduce: "I am Thai Tokuda web developer")
# User.create!(email: "ian@gmail.com", password: "kami3107",  username: "ian", introduce: "I am Ian Tokuda web developer")
# User.create!(email: "sam@gmail.com", password: "kami3107",  username: "sam", introduce: "I am Sam Tokuda web developer")
# User.create!(email: "tom@gmail.com", password: "kami3107",  username: "tom", introduce: "I am Tom web developer")

user = User.first
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user.id)
Caffe.create!(name: "caffe nimman caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user.id)
Caffe.create!(name: "caffe nimman caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user.id)

user2 = User.last
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user2.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user2.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user2.id)

user19 = User.find_by(id: 19)
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user19.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user19.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user19.id)

user17 = User.find_by(id: 17)
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user17.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user17.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user17.id)

user15 = User.find_by(id: 15)
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user15.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user15.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user15.id)

user20 = User.find_by(id: 20)
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user20.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user20.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user20.id)

user21 = User.find_by(id: 21)
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user21.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user21.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user21.id)

user22 = User.find_by(id: 22)
Caffe.create!(name: "caffe nimman", comment: "awesome caffe in Chiang mai", user_id: user22.id)
Caffe.create!(name: "caffe nimman", comment: "Perfect place for Digital Nomad", user_id: user22.id)
Caffe.create!(name: "caffe nimman", comment: "Fantastic place for Digital Nomad", user_id: user22.id)
puts "初期データの投入に成功しました！"
