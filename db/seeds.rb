Author.destroy_all
Category.destroy_all
Book.destroy_all
User.destroy_all

rowling=Author.create(name: "JK Rowling")
murakami=Author.create(name: "Haruki Murakami")
tolkien=Author.create(name: "JRR Tolkien")
caro=Author.create(name: "Robert Caro")
fantasy=Category.create(name: "Fantasy")
history=Category.create(name: "Historical Non-fiction")
surreal=Category.create(name: "Magical Realism")
pb=Book.create(title: "The Power Broker", category: history, author: caro)
k=Book.create(title: "Kafka on the Shore", category: surreal, author: murakami)
iq=Book.create(title: "1Q84", category: surreal, author: murakami)
hp=Book.create(title: "Harry Potter and the Prisoner of Azkaban", category: fantasy, author: rowling)
lotr=Book.create(title: "The Fellowship of the Ring", category: fantasy, author: tolkien)
User.create(name: "James")
User.create(name: "Jeanne")
User.create(name: "Ada")
User.create(name: "Soren")