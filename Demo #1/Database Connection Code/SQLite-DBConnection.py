import sqlite3

#create a connection & cursor object
conn = sqlite3.connect('example.db')
c = conn.cursor()

# Execute a query
c.execute('SELECT * FROM')

# Save (commit) the changes
conn.commit()

# Close the connection
conn.close()
