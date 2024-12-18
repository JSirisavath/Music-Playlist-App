import mysql.connector
from mysql.connector import Error


# Connect Database

def connect_db():

    try: 
        # Usually put these credentials into a env file for production code, but this is fine since it will not be on my github or published publically 
        # Ensure this information is correct in your own mysql workbench set up 
        connection = mysql.connector.connect(
            host = 'localhost',
            user='root',
            port=3306,
            password='ics311',
            database='funmusicplaylistapp_2' )
        

        if connection.is_connected():
            print('Db connected successfully')
        return connection


    except Error as e:
        print(f"Error: {e}")
        return None
    


# execute query and return the results helper function

def execute_query(connection, query, params=None):
    try:
        cursor = connection.cursor()

        if params:
            cursor.execute(query,params)
        else:
            cursor.execute(query)

        return cursor.fetchall()
    
    except Exception as e:
        print(f"Error executing query: {e}")

        return []
