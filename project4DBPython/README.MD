The program generates the following reports:

Report 1: Lists all registered users, including their ID, username, email, and the date they joined.

Fetches data from the User table.
Displays the following columns:
User ID
Username
Email
Date Joined

Report 2: Shows all albums along with their associated artists and release dates.

Fetches data from the Album and Artist tables using a JOIN.
Displays the following columns:
Album Title
Artist Name
Release Date


Report 3: Lets you input an artist's name and displays their albums along with release dates.

Asks the user to input an artist's name.
Fetches albums by that artist from the database using the Album and Artist tables.
Displays the following columns:
Album Title
Release Date

---------------------------------------------------------------------------------------------------------------------------------------------------

HOW TO RUN: 

1. Ensure python is downloaded into your machine 
    `https://www.python.org/downloads/`
    1.1: Ensure you are using a good IDE, I use Vs code or Visual Studio Code to run this project: `https://code.visualstudio.com`

2. Install required lib through cmd: 
    `pip install mysql-connector-python`

3. Open `connectDB.py` file and ensure that this information is set up on your mysql workbench (You may have to create the database connection with the provided credentials from this file)

    3.1: Create the schema and tables with copying the script from `scripts.sql` under `mysqlScripts` 
    3.2: In another query file, copy the script from `exampleDataScript.sql` file. This is mock data.

4. ensure the connection is ready on mysql workbench

5. Open the file `main.py`

6. Open a new terminal (e.g Visual Studio Code: Terminal/New Terminal) 


7. In the terminal Run the command: `python main.py`, and observe the terminal


Should look something like the screenshot in this folder with this dataset: 
