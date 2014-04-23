Last login: Tue Apr 22 09:35:31 on ttys000
rebeccastrong ~
$ pry
[1] pry(main)> person = Object.new
#<Object:0x007f97ab9ba4c0>
[2] pry(main)> def person.name
[2] pry(main)*   "Andrew"
[2] pry(main)* end
nil
[3] pry(main)> "Hellow world".upcase
"HELLOW WORLD"
[4] pry(main)> "Hello world".send :upcase
"HELLO WORLD"
[5] pry(main)> 6. + 7
13
[6] pry(main)> 6.send :class
Fixnum < Integer
[7] pry(main)> person.send :name
"Andrew"
[8] pry(main)> person.name
"Andrew"
[9] pry(main)> 6.+ 7
13
[10] pry(main)> person.send :name
"Andrew"
[11] pry(main)> 6. send :+, 7
13
[12] pry(main)> def person.greet somebody
[12] pry(main)*   "Oh HAI #{somebody}, I AM A LOLCAT"
[12] pry(main)* end
nil
[13] pry(main)> person.greet "Nessa"
"Oh HAI Nessa, I AM A LOLCAT"
[14] pry(main)> person.send :greet, "Heidi"
"Oh HAI Heidi, I AM A LOLCAT"
[15] pry(main)> person
#<Object:0x007f97ab9ba4c0>
[16] pry(main)> person.methods(false)
[
    [0] greet(somebody) #<Object:0x007f97ab9ba4c0>
    [1]  name()         #<Object:0x007f97ab9ba4c0>
]
[17] pry(main)> def corey.name
[17] pry(main)*   "Corey"
[17] pry(main)* end
NameError: undefined local variable or method `corey' for main:Object
from (pry):21:in `__pry__'
[18] pry(main)> Person = Class.new do
[18] pry(main)*   def initialize name
[18] pry(main)*     @name = name
[18] pry(main)*   end
[18] pry(main)* end
Person < Object
[19] pry(main)> Person.new "Aziz"
#<Person:0x007f97abbc2768 @name="Aziz">
[20] pry(main)> aziz.send :name
NameError: undefined local variable or method `aziz' for main:Object
from (pry):30:in `__pry__'
[21] pry(main)> def aziz.name
[21] pry(main)*   @name
[21] pry(main)* end
NameError: undefined local variable or method `aziz' for main:Object
from (pry):31:in `__pry__'
[22] pry(main)> kristen = Person.new "Kristen"
#<Person:0x007f97abab4c90 @name="Kristen">
[23] pry(main)> kristen.send :name
NoMethodError: undefined method `name' for #<Person:0x007f97abab4c90 @name="Kristen">
from (pry):35:in `__pry__'
[24] pry(main)> class Person
[24] pry(main)*   def name
[24] pry(main)*     @name
[24] pry(main)*   end
[24] pry(main)* end
nil
[25] pry(main)> kristen.send :name
"Kristen"
[26] pry(main)> show-source Person

From: (pry) @ line 24:
Class name: Person
Number of lines: 17

Person = Class.new do
  def initialize name
    @name = name
  end
end
Person.new "Aziz"
aziz.send :name
def aziz.name
  @name
end
kristen = Person.new "Kristen"
kristen.send :name
class Person
  def name
    @name
  end
end
[27] pry(main)> kristen.send :name
"Kristen"
[28] pry(main)> Andrew
NameError: uninitialized constant Andrew
from (pry):43:in `__pry__'
[29] pry(main)> Andrew = 1
1
[30] pry(main)> Andrew
1
[31] pry(main)> Andrew = [1, "Beard", "talk loud", "monkeys", "music", high tenor", "tall"]
SyntaxError: unexpected tIDENTIFIER, expecting $end
...s", "music", high tenor", "tall"]
...                               ^
[31] pry(main)> Andrew = [1, "Beard", "talk loud", "monkeys", "music", high tenor", "tall"]
SyntaxError: unexpected tIDENTIFIER, expecting $end
...s", "music", high tenor", "tall"]
...                               ^
[31] pry(main)> Andrew = [1, "Beard", "talk loud", "monkeys", "music", "high tenor", "tall"]
(pry):46: warning: already initialized constant Andrew
[
    [0] 1,
    [1] "Beard",
    [2] "talk loud",
    [3] "monkeys",
    [4] "music",
    [5] "high tenor",
    [6] "tall"
]
[32] pry(main)> Aldric = [3, "Beard, "Martial Arts", "Accenet", "t-shirt", "just met me"]
SyntaxError: unexpected tCONSTANT, expecting $end
...Beard, "Martial Arts", "Accenet", "t-shirt", "just met me"]
...                               ^
[32] pry(main)> Aldric = [3, "Beard", "Martial Arts", "Accent", "t-shirt", "just me me"]
[
    [0] 3,
    [1] "Beard",
    [2] "Martial Arts",
    [3] "Accent",
    [4] "t-shirt",
    [5] "just me me"
]
[33] pry(main)> Andrew = {
[33] pry(main)*   position: "instructor"
[33] pry(main)*   name: "Andrew"
SyntaxError: unexpected tIDENTIFIER, expecting '}'
  name: "Andrew"
      ^
[33] pry(main)> class Person
[33] pry(main)*   def initialize name, position
[33] pry(main)*     @name = name
[33] pry(main)*     @position = position
[33] pry(main)*   end
[33] pry(main)* end
nil
[34] pry(main)> heidi = Person.new "Heidi", "Student"
#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">
[35] pry(main)> heidi.send :position
NoMethodError: undefined method `position' for #<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">
from (pry):55:in `__pry__'
[36] pry(main)> Proto = Class.new do
[36] pry(main)*   def initialize
[36] pry(main)*     @students = []
[36] pry(main)*   end
[36] pry(main)* end
Proto < Object
[37] pry(main)> class Proto
[37] pry(main)*   def add_student person
[37] pry(main)*     @students.<< person
[37] pry(main)*   end
[37] pry(main)* end
nil
[38] pry(main)> proto = Proto.new
#<Proto:0x007f97abb9eef8 @students=[]>
[39] pry(main)> proto.send :add_student, heidi
[
    [0] #<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">
]
[40] pry(main)> proto.students
NoMethodError: undefined method `students' for #<Proto:0x007f97abb9eef8>
from (pry):68:in `__pry__'
[41] pry(main)> proto
#<Proto:0x007f97abb9eef8 @students=[#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">]>
[42] pry(main)> heidi
#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">
[43] pry(main)> proto
#<Proto:0x007f97abb9eef8 @students=[#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">]>
[44] pry(main)> heidi
#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">
[45] pry(main)> proto
#<Proto:0x007f97abb9eef8 @students=[#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">]>
[46] pry(main)> computer = Object.new
#<Object:0x007f97ab908c48>
[47] pry(main)> proto
#<Proto:0x007f97abb9eef8 @students=[#<Person:0x007f97ab9dc188 @name="Heidi", @position="Student">]>
[48] pry(main)> proto.class
Proto < Object
[49] pry(main)> 6.class
Fixnum < Integer
[50] pry(main)> Integer.class
Class < Module
[51] pry(main)> Object
Object < BasicObject
[52] pry(main)> class X
[52] pry(main)*   def messaage1
[52] pry(main)*     "This was message 1"
[52] pry(main)*   end
[52] pry(main)*   def message1
[52] pry(main)*     "This was message 1"
[52] pry(main)*   end
[52] pry(main)*   def message2
[52] pry(main)*     "This was message 2"
[52] pry(main)*   end
[52] pry(main)*   def set_a_number
[52] pry(main)*     @x = rand
[52] pry(main)*   end
[52] pry(main)*   def show_x
[52] pry(main)*     @x
[52] pry(main)*   end
[52] pry(main)* end
nil
[53] pry(main)> a = X.new
#<X:0x007f97ab877dd8>
[54] pry(main)> a.send message1
NameError: undefined local variable or method `message1' for main:Object
from (pry):98:in `__pry__'
[55] pry(main)> class MorningRoutine
[55] pry(main)*   def step_1
[55] pry(main)*     "Lift"
[55] pry(main)*   end
[55] pry(main)*   def step_2
[55] pry(main)*     "Lower"
[55] pry(main)*   end
[55] pry(main)*   def step_3
[55] pry(main)*     step_1
[55] pry(main)*   end
[55] pry(main)*   def step_4
[55] pry(main)*     step_2
[55] pry(main)*   end
[55] pry(main)*   def step_5
[55] pry(main)*     "Great! Now the other eyelid."
[55] pry(main)*   end
[55] pry(main)* end
nil
[56] pry(main)> steps = [:step_1, :step_2, :step_3, :step_4, :step_5]
[
    [0] :step_1,
    [1] :step_2,
    [2] :step_3,
    [3] :step_4,
    [4] :step_5
]
[57] pry(main)> routine = MorningRoutine.new
#<MorningRoutine:0x007f97abac0040>
[58] pry(main)> steps.each do |step
SyntaxError: unexpected '\n', expecting '|'
[58] pry(main)> steps.each do |step|
[58] pry(main)*   puts routine.send(step)
[58] pry(main)* end
Lift
Lower
Lift
Lower
Great! Now the other eyelid.
[
    [0] :step_1,
    [1] :step_2,
    [2] :step_3,
    [3] :step_4,
    [4] :step_5
]
[59] pry(main)>
