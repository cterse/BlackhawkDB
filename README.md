# BlackhawkDB
The official DDBMS repository.

Created in Oracle 10g Express Edition Database.

By Chinmay, Pratik and Rahul.

------------------------------

Let's follow a particular naming convention and working technique to ease the development process.

- Always save the important queries which are executed successfully.

- Follow the naming convention strictly 
  1.	A script.sql file containing code for creating a table should be named as [table-name]_table.sql
  2.	Table column names should always be named as [table-name]_[column_name]

- Always work on your own branch. Do not clutter the master branch.

- Perform Push/Pull daily, even when you're not writing any new code.

------------------------------

Database Structure:

- The database contains 5 tables:
1.	criminal
		Description:		Contains criminal statistics. 
		No. of Columns:		7
		Columns:			ID, SSN, CRIME_NO, SENTENCE, STATUS, ARRESTED_AT, ARREST_DETAILS, PEN_ID
		Column Details:		ID: 			(PRIMARY KEY, AUTO INCREMENT)
							SSN:			Social Security Number. Maps to CRIMINAL_INFO table. (FOREIGN KEY)
							CRIME_NO:		Number of crime committed. Maps to CRIME table (FOREIGN KEY, NOT NULL).
							SENTENCE:		Punishment announced to the criminal.
							ARRESTED_AT:	Id of precinct arrested at. Maps to PRECINCT table (FOREIGN KEY).
							ARREST_DETAILS:	Extra details about the arrest.
							PEN_ID:			Id of penetentiary the criminal is presently at. Maps to PEN table (FORIGN KEY).	 			

2.	criminal_info
		Description:		Contains criminal's personal data.
		No. of Columns:		9
		Columns:			SSN, NAME, DOB, AGE, SEX, NATIONALITY, CURRENT_ADDRESS, CONTACT_NO, REMARKS
		Coumn Details:		SSN:				Social Security Number. (PRIMARY KEY, AUTO INCREMENT) 
							NAME:				Name. (NOT NULL)
							DOB:				Date of Birth.
							AGE:				Age.
							SEX:				Gender. (NOT NULL)
							NATIONALITY:		Nationality.
							CURRENT_ADDRESS:	Current place of residence.
							CONTACT_NO:			Contact number.
							REMARKS:			Extra remarks about the criminal.

3.	crime
		Description:		Information about the crimes.
		No. of Columns:		5
		Column:				NO., DESCRIPTION, PUNISHMENT, TYPE, EXTRA
		Column Details:		NO:				IPC Crime number. (PRIMARY KEY, AUTO INCREMENT)
							DESCRIPTION:	Description of the crime. (NOT NULL)
							PUNISHMENT:		Min to max punishment. (NOT NULL)
							TYPE:			Pardonable or Non-pardonable.		
							EXTRA:			Extra details about the crime.

4.	precinct
		Description:		Information about the police stations.
		No. of Columns:		5
		Columns:			ID, HEAD, LOCATION, NO_OF_CASES, STAFF_STRENGTH
		Column Details:		ID:				(PPRIMARY KEY, AUTO INCREMENT)
							HEAD:			Head of the precinct.
							LOCATION:		Location of the precinct. (NOT NULL)
							NO_OF_CASES:	Present no. of open cases.
							STAFF_STRENGTH:	Present no. of working staff. (NOT NULL)

5.	pen
		Description:		Information about jails, correctional facilites and penetentiaries.
		No. of Columns:		7
		Columns:			ID, NAME, LOCATION, WARDEN, CAPACITY, GRADE, NO_OF_PRISONERS
		Column Details:		ID:					(PRIMARY KEY, AUTO INCREMENT)
							NAME:				Name of penetentiary. (NOT NULL)
							LOCATION:			Location. (NOT NULL)
							CAPACITY:			Total capacity. (NOT NULL)
							GRADE:				Grade of the prison.
							NO_OF_PRISONERS:	Current no. of prisoners. (NOT NULL)			


------------------------------

How To's:

-- Connect To Database Via the Command Line:

1.	Go To c:\> in the cli.
2.	Type "set oracle_sid=[database-name]".
3.	Enter the username and password.
4.	Confirm connection.

-- Query to get database name in Oracle SQL:

SELECT * FROM v$database
or
SELECT ora_database_name FROM dual
