# Learn_python

## 1. **List** (with ```[]```)

```
list_name = [item_1, item_2]
```
### 1.1 List of strings
```py
zoo_animals = ["pangolin", "cassowary", "sloth", 'panda'];
# One animal is missing!

if len(zoo_animals) > 3:
  print "The first animal at the zoo is the " + zoo_animals[0]
  print "The second animal at the zoo is the " + zoo_animals[1]
  print "The third animal at the zoo is the " + zoo_animals[2]
  print "The fourth animal at the zoo is the " + zoo_animals[3]
```
### 1.2 List of numbers
```py  
numbers = [5, 6, 7, 8]

print "Adding the numbers at indices 0 and 2..."
print numbers[0] + numbers[2]
print "Adding the numbers at indices 1 and 3..."
# Your code here!
print numbers[1] + numbers[3]
```
### 1.3 Change the elements in a list
```py
zoo_animals = ["pangolin", "cassowary", "sloth", "tiger"]
# Last night our zoo's sloth brutally attacked
# the poor tiger and ate it whole.

# The ferocious sloth has been replaced by a friendly hyena.
zoo_animals[2] = "hyena"

# What shall fill the void left by our dear departed tiger?
# Your code here!
zoo_animals[3] = "rabit"

```
### 1.4 Add element in the end```list.append()``` & List length ```len()```
Model
```py
letters = ['a', 'b', 'c']
letters.append('d')
print len(letters)
print letters
```
Example
```py
suitcase = []
suitcase.append("sunglasses")

# Your code here!
suitcase.append('bathing suit')
suitcase.append('A')
suitcase.append('B')

list_length = len(suitcase) # Set this to the length of suitcase

print "There are %d items in the suitcase." % (list_length)
print suitcase
```
A **placeholder** in the text is used in this example. ```'%d' % (variable)```
```%d``` is a placeholder for a number
```%s``` is a placeholder for a string

### 1.5 List and string slicing with ```[]```
List slicing
```py
letters = ['a', 'b', 'c', 'd', 'e']
slice = letters[1:3]
print slice
print letters
```
String slicing
```py
my_list[:2]
# Grabs the first two items
my_list[3:]
# Grabs the fourth through last items
```
### 1.6 Find the item index number (order number starting with 0)```list.index(item)``` and insert item by index number ```list.insert(index, item)```
```py
animals = ["ant", "bat", "cat"]
print animals.index("bat")
animals.insert(1, "dog")
print animals
```
### 1.7 ```for``` loops and sort by alphabetical or numerical order ```.sort()```
```py
my_list = [1,9,3,8,5,7]

for number in my_list:
  print 2*number# Your code here
```
Sort by alphabetical order
```py
animals = ["cat", "ant", "bat"]
animals.sort()

for animal in animals:
  print animal
```
Sort by numerical order
```py
start_list = [5, 3, 1, 2, 4]
square_list = []

for number in start_list:
  square_list.append(number ** 2)    
square_list.sort() # Your code here!
print square_list  
```
### 1.8 Remove items from the list ```.remove(item)```
```py
beatles = ["john","paul","george","ringo","stuart"]
beatles.remove("stuart")
print beatles
```
returns
```py
 ["john","paul","george","ringo"]
```
## 2. **Dictionary** with ***key : value*** pairs (with ```{}```)
### 2.1 Find values with keys
```py
d = {'key1' : 1, 'key2' : 2, 'key3' : 3}
```
```py
print d['key1']
```
returns
```py
1
```
Example
```py
# Assigning a dictionary with three key-value pairs to residents:
residents = {'Puffin' : 104, 'Sloth' : 105, 'Burmese Python' : 106}
print residents['Puffin'] # Prints Puffin's room number
print residents['Sloth']
print residents['Burmese Python']# Your code here!
```
### 2.2 Add new pairs and measure length with ```len()```

```py
dict_name[new_key] = new_value

menu['Spam'] = 2.50
```
Example
```py
menu = {} # Empty dictionary
menu['Chicken Alfredo'] = 14.50 # Adding new key-value pair
print menu['Chicken Alfredo']

menu['rice'] = 32
menu['beef'] = 22
menu['cookies'] = 21# Your code here: Add some dish-price pairs to menu!


print "There are " + str(len(menu)) + " items on the menu."
print menu
```
**Attention:** Use ```str()``` to change numbers to strings

### 2.3 Delete pair and Change values
```py
del dict_name[key_name]
dict_name[key] = new_value
```
Examples
```py
# key - animal_name : value - location
zoo_animals = { 'Unicorn' : 'Cotton Candy House',
'Sloth' : 'Rainforest Exhibit',
'Bengal Tiger' : 'Jungle House',
'Atlantic Puffin' : 'Arctic Exhibit',
'Rockhopper Penguin' : 'Arctic Exhibit'}
# A dictionary (or list) declaration may break across multiple lines

# Removing the 'Unicorn' entry. (Unicorns are incredibly expensive.)
del zoo_animals['Unicorn']
del zoo_animals['Sloth']
del zoo_animals['Bengal Tiger']
# Your code here!

zoo_animals['Rockhopper Penguin'] = 'Cute'


print zoo_animals
```
### 2.4 Dictionary holds many types of values
```py
my_dict = {
  "fish": ["c", "a", "r", "p"],
  "cash": -4483,
  "luck": "good"
}
print my_dict["fish"][0]
```
```py
inventory = {
  'gold' : 500,
  'pouch' : ['flint', 'twine', 'gemstone'], # Assigned a new list to 'pouch' key
  'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']
}

# Adding a key 'burlap bag' and assigning a list to it
inventory['burlap bag'] = ['apple', 'small ruby', 'three-toed sloth']

# Sorting the list found under the key 'pouch'
inventory['pouch'].sort()

# Your code
inventory['pocket'] = ['seashell', 'strange berry', 'lint']
inventory['backpack'].sort()
inventory['backpack'].remove('dagger')
inventory['gold'] = 550
```
