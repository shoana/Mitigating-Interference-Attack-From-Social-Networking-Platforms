import pymysql

#Utilize MySQL to connect to the database and query the database, then return results

#Begin connection to database through MySQL
db = pymysql.connect("192.168.64.2","username","password", "fyp_test")
totalPolicies = 4; #change this in the future -> use a txt file for security policies
count = 0 #global count (to keep track of successful queries)

#Only for demo purposes - Display the security policy in plain english to the user (non-SQL)
def displaySecurityPolicy():
    print("Security Policy: ")
    print("Policy 1: Common Security Question: Hobby of a given person ")
    print("Policy 2: Common Security Question: Name of school of a person")
    print("Policy 3: Common Security Question: Birthdate of a person")
    print("Policy 4: IP Addess and Location and Name")
    print("---------------------------------------------------------------")

def executeSQL(sql):
    #prepare cursor object
    cursor = db.cursor()
    cursor.execute(sql)
    result = "";

    # Fetch all the rows in a list of lists.
    results = cursor.fetchall()

    for row in results:
       # Now print fetched result
       print (row)
       result += convertTuple(row) #convert to string for analysis

    #if the string isn't empty, there was a successful query
    if isNotBlank(result):
        print("Query has returned valid results.")
        addCounter()

#add to the counter
def addCounter():
     global count
     count = count + 1
     return count

#check if the string is not empty
def isNotBlank (myString):
    return bool(myString and myString.strip())

#convert tuple to string
def convertTuple(tup):
    str =  ''.join(tup)
    return str


#METRICS TO GO HERE -- Placeholder for now (Just returning the total percentage of successful queries)
def algorithm():
    tot = count/totalPolicies * 100
    print("---------------------------------------------------------------")
    print("RESULTS: ")
    print(str(tot) + ' ' +  '% of security policy queries have succeeded')


#Executing queries (hardcoded)
def executeSecurityPolicyQueries():
    count = 0
    print("Running Queries for Security Policy...")
    sql1 = "SELECT user_name, hobby from profile_info WHERE user_name='Shoana'"
    executeSQL(sql1)
    sql2 = "SELECT user_name, educational_institution from profile_info WHERE user_name='Sarah'"
    executeSQL(sql2)
    sql3 = "SELECT user_name, brithdate from profile_info WHERE user_name='Mounica'"
    executeSQL(sql3)
    sql4 = "SELECT login_IP, user_name, user_IP.account_activity_lat_long, user_IP.account_activity_city FROM login_info INNER JOIN user_IP ON login_info.login_IP=user_IP.IP_address GROUP BY login_IP"
    executeSQL(sql4);
    sql5 = "SELECT user_name, event_going, date_of_date, location_event FROM events_going INNER JOIN user_IP ON events_going.location_event=user_IP.account_activity_lat_long INNER JOIN login_info ON login_info.login_IP=user_IP.IP_address GROUP BY user_name, event_going, date_of_date ORDER BY event_going"
    executeSQL(sql5)


#main for testing/demo purposes
if __name__ == "__main__":
    displaySecurityPolicy()
    executeSecurityPolicyQueries()
    algorithm()


# disconnect from server
db.close()
