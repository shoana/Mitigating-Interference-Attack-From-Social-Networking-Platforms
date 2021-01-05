import pymysql

############### CONFIGURE THIS ###################
# Open database connection
db = pymysql.connect("localhost","testuser","mypassword","book")
##################################################

# prepare a cursor object using cursor() method
cursor = db.cursor()

# Prepare SQL query to READ a record into the database.
sql = "SELECT * FROM Authors \
WHERE AuthorID > {0}".format(0)

# Execute the SQL command
cursor.execute(sql)

# Fetch all the rows in a list of lists.
results = cursor.fetchall()
for row in results:
   id = row[0]
   name = row[1]
   email = row[2]
   # Now print fetched result
   print ("id = {0}, name = {1}, email = {1}".format(id,name,email))

# disconnect from server
db.close()
