import time
from numpy import sqrt

lower = 1 #1000000005721 #input("Lower Bound ")
upper = 10**7 #1000000005721 #input("Upper Bound ")


#print("Prime numbers between",lower,"and",upper,"are:")

primes = []

in_time = time.time()

for num in range(lower,upper + 1):
# prime numbers are greater than 1
    if num > 1:
        for i in range(2,int(sqrt(num))+1):
            if (num % i) == 0:
                break
        else:
            #print(num)
            primes.append(num)



tot_time = time.time() - in_time
print(len(primes))
print(tot_time)

### On i5-8265u 8 gb ram
## 664579
## 132.73288249969482