
100.times { Note.create(title: Faker::Lorem.question, body: Faker::Lorem.paragraph) }
