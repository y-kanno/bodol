# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[ { name: 'ワンナイト人狼', description: '1ターンでおわる人狼'},
  { name: 'coup', description: '最後の一人が生き残るまで騙し合い'},
  { name: 'パンデミック', description: '皆で協力してうウイルスから世界を救おう'}
].each do |boardgame_attr|
  boardgame = Boardgame.create(boardgame_attr)
end

[ { email: 'y_kanno@bodol.net', password: 'bodolnet', username: 'kanno' }
].each do |user_attr|
  user = User.new(user_attr)
  user.skip_confirmation!
  user.save!
end
