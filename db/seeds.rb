
100.times do 
  note = Note.create(title: Faker::Lorem.question, body: Faker::Lorem.paragraph) 

  100.times { Comment.create(note: note, name: Faker::Name.name, body: Faker::Lorem.paragraph) }
end
