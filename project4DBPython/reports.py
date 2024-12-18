# reports 

from connectDB import execute_query


def format_date(date_value):
    """Format a datetime object into a readable string."""
    if date_value:
        return date_value.strftime("%Y-%m-%d")  # Format: YYYY-MM-DD
    return "N/A"

# 1
def report_one_table(connection):
    """Report 1: Display data from a single table (User table)."""
    print("\n--- Report 1: Users Information ---")
    query = "SELECT user_id, Username, Email, date_joined FROM User"

    rows = execute_query(connection, query) # From helper function to execute query
    
    print("{:<10} {:<20} {:<30} {:<15}".format("User ID", "Username", "Email", "Date Joined"))
    print("-" * 75)
    for row in rows:
        print("{:<10} {:<20} {:<30} {:<15}".format(row[0], row[1], row[2], format_date(row[3])))



# 2
def report_multiple_tables(connection):
    """Report 2: Display information from multiple tables (Album and Artist tables)."""
    print("\n--- Report 2: Albums and Artists Information ---")
    query = """
        SELECT a.album_title, ar.artist_stage_name, a.release_date
        FROM Album a
        JOIN Artist ar ON a.artist_id = ar.artist_id
        ORDER BY a.release_date DESC
    """

    rows = execute_query(connection, query)


    print("{:<25} {:<25} {:<15}".format("Album Title", "Artist Name", "Release Date"))
    print("-" * 65)
    for row in rows:
        print("{:<25} {:<25} {:<15}".format(row[0], row[1], format_date(row[2])))



# 3

def report_with_user_input(connection):
    """Report 3: Display albums based on user input (User inputs Artist Name)."""
    artist_name = input("\nEnter the artist's name to see their albums: ")
    print(f"\n--- Report 3: Albums by {artist_name} ---")
    query = """
        SELECT a.album_title, a.release_date
        FROM Album a
        JOIN Artist ar ON a.artist_id = ar.artist_id
        WHERE ar.artist_stage_name = %s
        ORDER BY a.release_date DESC
    """
    rows = execute_query(connection, query, (artist_name,))
    
    print("{:<25} {:<15}".format("Album Title", "Release Date"))
    print("-" * 40)
    for row in rows:
        print("{:<25} {:<15}".format(row[0], format_date( row[1])))