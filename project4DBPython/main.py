from connectDB import connect_db
from reports import report_multiple_tables, report_one_table, report_with_user_input



def main():
    connection = connect_db()

    if connection:
        # report 1
        report_one_table(connection)

        # report 2
        report_multiple_tables(connection)

        # report 3
        report_with_user_input(connection)

        connection.close()


if __name__ == "__main__":
    main()