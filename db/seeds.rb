# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all

u1 = User.create(username: "Joel")

Post.create(title: "mad depressing", post_text: "Last Words in a Suicide note: I feel certain that I'm going mad again. I feel we can't go thru another of those terrible times. And I shan't recover this time. I begin to hear voices.", user_id: u1.id)
Post.create(title: "Talenti", post_text: "Middle age snuffs out more talent than even wars or sudden death does.", user_id: u1.id)
Post.create(title: "Deep. much wow", post_text: "In human intercourse the tragedy begins, not when there is a misunderstanding about words, but when silence is not understood.", user_id: u1.id)
Post.create(title: "Cuz I'm Stupid", post_text: "I had nothing to offer anybody except my own confusion.", user_id: u1.id)
Post.create(title: "inspirational. just So amazing *sarcasm", post_text: "It is one of the most beautiful compensations of this life that no man can sincerely try to help another without helping himself.", user_id: u1.id)
Post.create(title: "OMG so funny?! 😒", post_text: "Why did the bee get married? He found his honey!", user_id: u1.id)