# 2. Loops
## 2.1 ```for``` loop
for loop in lists
```py
a = ["List", "of", "some", "sort"]
for x in a:
  # Do something for every x

for item in [1, 3, 21]:
  print item
```
for loop in dictionary
```py
# A simple dictionary
d = {"foo" : "bar"}

for key in d:
  print d[key]  # prints "bar"
```
```py
webster = {
  "Aardvark" : "A star of a popular children's cartoon show.",
  "Baa" : "The sound a goat makes.",
  "Carpet": "Goes on the floor.",
  "Dab": "A small amount."
  }

# Add your code below!
for key in webster:
  print webster[key]
```
The results from Dictionary loop are unordered.
## 2.2 ```Loop``` and ```if```
```py
numbers = [1, 3, 4, 7]
for number in numbers:
  if number > 6:
    print number
print "We printed 7."
```
Example
```py
a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
for x in a:
  if x % 2 == 0:
    print x
```
# 3. Functions
## 3.1 Lists, loops and functions
```py
def count_small(numbers):
  total = 0
  for n in numbers:
    if n < 10:
      total = total + 1
  return total

lotto = [4, 8, 15, 16, 23, 42]
small = count_small(lotto)
print small
```
Example
```py
# Write your function below!
def fizz_count(x):
  count = 0
  for item in x:
    if item == "fizz":
      count = count + 1
  return count
```
## 3.2 String, loops and functions
```py
for letter in "Codecademy":
  print letter

# Empty lines to make the output pretty
word = "Programming is fun!"

for letter in word:
  # Only print out the letter i
  if letter == "i":
    print letter
```
# 4. Example
## 4.1 for loops in Dictionary
```py
prices = {"banana": 4,"apple": 2,"orange": 1.5,"pear": 3}

stock = {"banana": 6, "apple": 0, "orange": 32, "pear": 15}

for food in prices:
  print food
  print "price: %s" % prices[food]
  print "stock: %s" % stock[food]

total = 0
for food in prices:
  total += prices[food] * stock[food]
print total
```
## 4.2 Calculate total price of a list with a function
```py
shopping_list = ["banana", "orange", "apple"]

stock = {
  "banana": 6,
  "apple": 0,
  "orange": 32,
  "pear": 15
}

prices = {
  "banana": 4,
  "apple": 2,
  "orange": 1.5,
  "pear": 3
}

# Write your code below!
def compute_bill(food):
  total = 0
  for item in food:
    if stock[item] > 0: # only when stock is larger than zero
      total = total + prices[item] # calculate total price
      stock[item] = stock[item] - 1 # decrease the total stock by 1
  return total
  ```
