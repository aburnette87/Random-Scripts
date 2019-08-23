# Administrator accounts list
adminList = [
    {
        "username": "DaBigBoss",
        "password": "DaBest"
    },
    {
        "username": "root",
        "password": "toor"
    }
]

# Build your login functions below
##==============================##

# Function that asks for user's credentials
def getCreds():

    # Asks for username and password and returns both inputs as variables
    username = input("What is your username? ")
    password = input("What is your password? ")
    return {"username": username, "password": password}

# Function establishing adminList and userInfo as parameters
def checkLogin(adminList, userInfo):

    # Checks if userInfo credentials is contained inside adminList
    # If userInfo is contained inside adminList, returns loggedIn as True.
    if userInfo in adminList:
        loggedIn = True

    # If userInfo is not contained inside adminList, returns loggedIn as False
    else:
        loggedIn = False
    return loggedIn
        
# While loop that continues to ask for credential as long as userInfo is not contained inside adminList
# Prints '---------' after each call of checkLogin
while True:
    userInfo = getCreds()
    isAdmin = checkLogin(adminList, userInfo)
    print("--------- ")
    
    # If loggedIn returns True, then prints greetings
    if isAdmin:
        print("WELCOME PROFESSOR X ")
        break

    # If loggedIn returns False, then prints try again
    else:
        print("Incorrect log-in please try again ")