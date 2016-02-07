# BlackhawkDB
The official DDBMS repository.

Created in Oracle 10g Express Edition Database.

By Chinmay, Pratik and Rahul.

------------------------------

<h3>Index</h3>

<ol>
<li><a href="#conventions">Conventions</a></li>
<li><a href="#structure">Database Structure</a></li>
<li><a href="#howto">How To's</a></li>
</ol>

------------------------------

<div id="conventions"></div>
<h3>Conventions:</h3>

Let's follow some simple naming conventions and working techniques to ease the development process.
<ol>
<li>Always save the important queries which are executed successfully.</li>

<li>Follow the naming convention strictly 
	<ol>
		<li>A script.sql file containing code for creating a table should be named as [table-name]_table.sql</li>
  		<li>Table column names should always be named as [table-name]_[column_name]</li>
	</ol>
</li>

<li>Always work on your own branch. Do not clutter the master branch.</li>

<li>Perform Push/Pull daily, even when you're not writing any new code.</li>
</ol>

------------------------------

<div id="structure"></div>
<h3>Database Structure:</h3>

- The database contains 5 tables:

1.	<b>criminal</b><br>
	
	<table border="0">
		<tr>
			<TD>Description:</TD>
			<td>Information about criminal whereabouts and arrest details.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>7</td>
		</tr>
	</table>

<table style="width:100%">
  	<tr>
	    <th>ID</th>
	    <th>SSN</th> 
	    <th>CRIME_NO</th>
	    <th>SENTENCE</th>
	    <th>STATUS</th>
	    <th>ARRESTED_AT</th>
	    <th>PEN_ID</th>
  	</tr>
  	<tr>
    	<td>Simple ID</td>
    	<td>Social Security Number</td>
    	<td>ID of the crime committed</td>
    	<td>Punishement announced</td>
    	<td>Current status</td>
    	<td>ID of precinct arrested at.</td>
    	<td>ID of the penetentiary currently detained at</td>
 	</tr>
 	<tr>
 		<td>PRIMARY KEY, AUTO INCREMENT</td>
 		<td>FOREIGN KEY, NOT NULL</td>
 		<td>FOREIGN KEY, NOT NULL</td>
 		<td></td>
 		<td></td>
 		<td>FOREIGN KEY</td>
 		<td>FOREIGN KEY</td>
 	</tr>
</table>
	 			

2.	<b>criminal_info</b><br>
	&nbsp;&nbsp;&nbsp;&nbsp;Description:		Contains criminal's personal data.<br>
	&nbsp;&nbsp;&nbsp;&nbsp;No. of Columns:		9<br>
		Columns:			SSN, NAME, DOB, AGE, SEX, NATIONALITY, CURRENT_ADDRESS, CONTACT_NO, REMARKS<br>
		Coumn Details:		SSN:				Social Security Number. (PRIMARY KEY, AUTO INCREMENT)<br> 
							NAME:				Name. (NOT NULL)<br>
							DOB:				Date of Birth.<br>
							AGE:				Age.<br>
							SEX:				Gender. (NOT NULL)<br>
							NATIONALITY:		Nationality.<br>
							CURRENT_ADDRESS:	Current place of residence.<br>
							CONTACT_NO:			Contact number.<br>
							REMARKS:			Extra remarks about the criminal.<br>

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

<div id="howto"></div>
<h3>How To's:</h3>

<h4>Connect To Database Via the Command Line:</h4>

1.	Go To c:\> in the cli.
2.	Type "set oracle_sid=[database-name]".
3.	Enter the username and password.
4.	Confirm connection.

<h4>Query to get database name in Oracle SQL:</h4>
SELECT * FROM v$database or SELECT ora_database_name FROM dual

