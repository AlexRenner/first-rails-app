5.times{ Category.create(name: Faker::Superhero.name) }

20.times{ Article.create(title: Faker::Hipster.words.join(' '), description: Faker::Hipster.paragraph(rand(3)+1), email: Faker::Internet.email, price: (rand(600)+100), category_id: (rand(5)+1)) }
