#  As per Mathematics, Fibonacci numbers or series are 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 …

class fibonaccinumbers ():
    def __init__(self, the_range):
        self.whileloop_range_is = the_range
        print("the whileloop_range_is: ", self.whileloop_range_is)

        self.forloop_range_is = the_range
        print("the forloop_range_is: ", self.forloop_range_is)

    def func_whileloop_fibo(self):
        firstnumber = 0
        secondnumber = 1
        i= 0
        while(i<=self.whileloop_range_is):
            if(i<1):
                next=i
            else:
                next = firstnumber + secondnumber
                print("The func_whileloop_fibo next number of fibonacci numbers is: ", next)
                firstnumber = secondnumber
                print("The func_whileloop_fibo firstnumber of fibonacci numbers is: ", firstnumber)
                secondnumber = next
                print("The func_whileloop_fibo secondnumber of fibonacci numbers is: ", secondnumber)
            print("the func_whileloop_fibo final next number is: ", next)
            i=i+1

    def func_forloop_fibo(self):
        firstnumber = 0
        secondnumber = 1
        for i in range(0, self.forloop_range_is):
            if(i<1):
                next = i
            else:
                next = firstnumber + secondnumber
                print("The func_forloop_fibo next number of fibonacci numbers is: ", next)
                firstnumber = secondnumber
                print("The func_forloop_fibo firstnumber of fibonacci numbers is: ", firstnumber)
                secondnumber = next
                print("The func_forloop_fibo secondnumber of fibonacci numbers is: ", secondnumber)
            print("the func_forloop_fibo final next number is: ", next)

numbers = int(input("The while loop range number is: "))
obj_fibonaccinumbers= fibonaccinumbers(numbers)
obj_fibonaccinumbers.func_whileloop_fibo()
obj_fibonaccinumbers.func_forloop_fibo()