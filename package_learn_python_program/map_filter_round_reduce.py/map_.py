import logging

# map(func, *iterables)
# list(map(func, *iterables))

my_pets = ['alfred', 'tabitha', 'william', 'arla']

uppered_pets = []

for pet in my_pets:
    pet_ = pet.upper()
    uppered_pets.append(pet_)
print("the uppered pets are: ", uppered_pets)
logging.info("This is info of pets name with upper case letter.")
logging.warning("This is warning of pets name with upper case letter.")
logging.debug("This is debug of pets name with upper case letter.")
logging.error("This is error of pets name with upper case letter.")
logging.critical("This is critical of pets name with upper case letter.")

''' With map() functions, it's not only easier, but it's also much more flexible. I simply do this:'''
uppered_pets = list(map(str.capitalize,my_pets))
print("the capitalize data are: ", uppered_pets)


''' with round() functions, the number to round up and the number of decimal places to round the number up to. So, since the function requires two arguments, we need to pass in two iterables. '''
circles_areas = [3.56773, 5.57668, 4.00914, 56.24241, 9.01344, 32.00013]
results = list(map(round,circles_areas, range(1,7)))
print("the round functions values are: ", results)

'''The zip() function is a function that takes a number of iterables and then creates a tuple containing each of the elements in the iterables.'''
my_strings= ['a', 'b', 'c', 'd', 'e']
my_numbers = [1,2,3,4,5]
results = list(zip(my_strings,my_numbers))
print("the zip of 2 list are: ", results)

'''Using the lambda functions we will use the map functions.'''
my_strings= ['a', 'b', 'c', 'd', 'e']
my_numbers = [1,2,3,4]
results= list(map(lambda x,y: (y,x), my_strings, my_numbers))
print("the results for lambda functions are: ", results)