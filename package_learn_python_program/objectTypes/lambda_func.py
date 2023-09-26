# lambda arguments: expression

num = lambda:True
print("The lambda num response is: ", num())

num = lambda a:a+5
print("the single arguments lambda sum is: ",num(10))

num = lambda a,b: a+b
print("the 2 arguments lambda sum is: ", num(20, 30))

def add_func(x,y):
    return x+y

print("the addition via function is: ", add_func(40,50))