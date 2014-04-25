
$shelter = Shelter.new("HappiTails", "10 East 21st Street")

$shelter.clients["Rudy"] = Client.new("Rudy", 23, 0)
$shelter.clients["Jordan"] = Client.new("Jordan", 50, 4)
$shelter.clients["Charles"] = Client.new("Charles", 34, 3)
$shelter.clients["Lilly"] = Client.new("Lilly", 22, 0)
$shelter.clients["Lisa"] = Client.new("Lisa", 30, 2)
$shelter.clients["Marissa"] = Client.new("Marissa", 45, 5)
$shelter.clients["Doris"] = Client.new("Doris", 38, 1)


$shelter.animals["Anselm"] = Animal.new("Anselm", 4, "Cat")
$shelter.animals["Anselm"].toys << "String" << "Mice" << "Ball"
$shelter.animals["Doyle"] = Animal.new("Doyle", 1, "Dog")
$shelter.animals["Doyle"].toys << "Ball" << "Bone"
$shelter.animals["Plato"] = Animal.new("Plato", 2, "Dog")
$shelter.animals["Plato"].toys << "Socks" << "Rubber Duckie"
$shelter.animals["Aristotle"] = Animal.new("Aristotle", 6, "Cat")
$shelter.animals["Aristotle"].toys << "Yarn" << "Mice"
$shelter.animals["Beverly"] = Animal.new("Beverly", 1, "Parrot")
$shelter.animals["Beverly"].toys << "Mirrors"
$shelter.animals["Maria"] = Animal.new("Maria", 3, "Cat")
$shelter.animals["Maria"].toys << "Rubber Fish" << "Tennis Ball"
$shelter.animals["Barbara"] = Animal.new("Barbara", 5, "Cat")
$shelter.animals["Barbara"].toys << "Mice" << "Rope" << "Squeaky Toy"

