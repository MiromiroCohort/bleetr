users = User.create([
  {
    name: "Sally"
  },{
    name: "Alice"
  },{
    name: "Bobby"
  }
])

Bleet.create([
  {
    content: "I'm hungry, you wana eat grass?",
    user: users[0]
  },{
    content: "Farmer's coming, look wooly",
    user: users[0]
  },{
    content: "There's a bug in the trough",
    user: users[1]
  },{
    content: "Baaaaaaaaa",
    user: users[2]
  }
])