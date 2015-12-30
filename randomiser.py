# From http://codepad.org/C8hvzTuf
# Blog post: http://slatestarcodex.com/2015/12/24/how-bad-are-things/


import random
exclusive = 0

def bad(thing_name, chance):
    x = random.random()
    if x < chance:
    	print (thing_name)
    	if thing_name in ("The person is in prison", "The person is on probation", "The person is in a nursing home", "The person is unemployed"):
        	exclusive = 1		
        
bad("The person is in prison", 0.01)
bad("The person experienced domestic abuse this year", 0.01)
bad("The person was sexually abused as a child", 0.1)
bad("The person was physically abused as a child", 0.2)
bad("The person has been raped", 0.09)
bad("The person has chronic pain", 0.2)
bad("The person is clinically depressed", 0.07)
bad("The person is cognitively disabled", 0.02)
bad("The person has schizophrenia", 0.01)
bad("The person has dementia", 0.02)
bad("The person is wheelchair-bound", 0.01)
bad("The person is an alcoholic", 0.07)
bad("The person is a heroin addict", 0.005)

if exclusive == 0:
	bad("The person is on food stamps", 0.20)
if exclusive == 0:
    bad("The person is unemployed", 0.05)
if exclusive == 0:
    bad("The person is on disability", 0.03)
if exclusive == 0:
	bad("The person is on probation", 0.02)
if exclusive == 0:
    bad("The person is in a nursing home", 0.01)