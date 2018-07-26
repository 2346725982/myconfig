import random
import time

BASE = 10

NUM_OF_RAND_NUM = 4

rand_number_arr = random.sample(range(BASE, BASE + NUM_OF_RAND_NUM, 1), NUM_OF_RAND_NUM)

start_time = time.time()
for num in rand_number_arr:
    raw_input('Enter to continue:')
    print num
end_time = time.time()
elapsed_time = end_time - start_time

guess_arr = []
correct = 0
raw_input('Enter to continue:')
for num in rand_number_arr:
    while True:
        try:
            guess = int(raw_input('Guess the next number:'))
        except ValueError:
            print('Invalid input. Try again.')
        else:
            break
    correct += 1 if guess == num  else 0
    guess_arr.append(guess)

print 'Original array:', rand_number_arr
print 'Guess array:', guess_arr
print 'Score:', correct, '/', NUM_OF_RAND_NUM
print 'Time:', elapsed_time // 60 % 60, 'mins', "%.2f" % (elapsed_time % 60), 'secs'
