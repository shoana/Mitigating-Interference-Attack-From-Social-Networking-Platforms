import pymysql

#MYSQL VERSION FOR DB CONNECTION

#Begin connection to database through MySQL - Database name "book" is dummy
db = pymysql.connect("192.168.64.2","username","password", "book")

def displaySecurityPolicy():
    print("Security Policy: ")
    print("Policy 1: ")
    print("Policy 2: ")
    print("Policy 3: ")
    print("Policy 4: ")
    print("Policy 5: ")
    print("Policy 6: ")
    print("Policy 7: ")
    print("Policy 8: ")
    print("Policy 9: ")
    print("Policy 10: ")

def executeSQL(sql):
    #prepare cursor object
    cursor = db.cursor()
    cursor.execute(sql)

    # Fetch all the rows in a list of lists.
    results = cursor.fetchall()

    #For analysis, need to concatenate this into a string
    for row in results:
       # Now print fetched result
       print (row)

def executeSecurityPolicyQueries():
    sql = "SELECT * FROM Authors WHERE AuthorID > {0}".format(0)
    executeSQL(sql)

#main for testing purposes
if __name__ == "__main__":
    displaySecurityPolicy()
    executeSecurityPolicyQueries()


# disconnect from server
db.close()
