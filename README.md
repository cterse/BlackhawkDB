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
	
	<table>
		<tr>
			<TD>Description:</TD>
			<td>Information about criminal whereabouts and arrest details.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>7</td>
		</tr>
	</table>

	<table>
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
	    	<td>Social Security Number. Maps to CRIMINAL_INFO table</td>
	    	<td>ID of the crime committed. Maps to CRIME table</td>
	    	<td>Punishement announced</td>
	    	<td>Current status</td>
	    	<td>ID of precinct arrested at. Maps to PRECINCT table</td>
	    	<td>ID of the penetentiary currently detained at. Maps to PEN table</td>
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

	<table>
		<tr>
			<TD>Description:</TD>
			<td>Personal information of the criminal.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>9</td>
		</tr>
	</table>

	<table>
	  	<tr>
		    <th>SSN</th>
		    <th>NAME</th> 
		    <th>DOB</th>
		    <th>AGE</th>
		    <th>SEX</th>
		    <th>NATIONALITY</th>
		    <th>CURRENT_ADDRESS</th>
		    <th>CONTACT_NO</th>
		    <th>REMARKS</th>
	  	</tr>
	  	<tr>
	    	<td>Social Security Number. Used as ID</td>
	    	<td>Full Name</td>
	    	<td>Date of birth</td>
	    	<td>Age in years</td>
	    	<td>Gender</td>
	    	<td>Nationality</td>
	    	<td>Cuurent address</td>
	    	<td>Contact Number(s)</td>
	    	<td>Remarks</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 	</tr>
	</table>


3.	crime

	<table>
		<tr>
			<TD>Description:</TD>
			<td>Personal information of the criminal.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>9</td>
		</tr>
	</table>

	<table>
	  	<tr>
		    <th>SSN</th>
		    <th>NAME</th> 
		    <th>DOB</th>
		    <th>AGE</th>
		    <th>SEX</th>
		    <th>NATIONALITY</th>
		    <th>CURRENT_ADDRESS</th>
		    <th>CONTACT_NO</th>
		    <th>REMARKS</th>
	  	</tr>
	  	<tr>
	    	<td>Social Security Number. Used as ID</td>
	    	<td>Full Name</td>
	    	<td>Date of birth</td>
	    	<td>Age in years</td>
	    	<td>Gender</td>
	    	<td>Nationality</td>
	    	<td>Cuurent address</td>
	    	<td>Contact Number(s)</td>
	    	<td>Remarks</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 	</tr>
	</table>


		Description:		Information about the crimes.
		No. of Columns:		5
		Column:				NO., DESCRIPTION, PUNISHMENT, TYPE, EXTRA
		Column Details:		NO:				IPC Crime number. (PRIMARY KEY, AUTO INCREMENT)
							DESCRIPTION:	Description of the crime. (NOT NULL)
							PUNISHMENT:		Min to max punishment. (NOT NULL)
							TYPE:			Pardonable or Non-pardonable.		
							EXTRA:			Extra details about the crime.

4.	precinct

	<table>
		<tr>
			<TD>Description:</TD>
			<td>Personal information of the criminal.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>9</td>
		</tr>
	</table>

	<table>
	  	<tr>
		    <th>SSN</th>
		    <th>NAME</th> 
		    <th>DOB</th>
		    <th>AGE</th>
		    <th>SEX</th>
		    <th>NATIONALITY</th>
		    <th>CURRENT_ADDRESS</th>
		    <th>CONTACT_NO</th>
		    <th>REMARKS</th>
	  	</tr>
	  	<tr>
	    	<td>Social Security Number. Used as ID</td>
	    	<td>Full Name</td>
	    	<td>Date of birth</td>
	    	<td>Age in years</td>
	    	<td>Gender</td>
	    	<td>Nationality</td>
	    	<td>Cuurent address</td>
	    	<td>Contact Number(s)</td>
	    	<td>Remarks</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 	</tr>
	</table>

		Description:		Information about the police stations.
		No. of Columns:		5
		Columns:			ID, HEAD, LOCATION, NO_OF_CASES, STAFF_STRENGTH
		Column Details:		ID:				(PPRIMARY KEY, AUTO INCREMENT)
							HEAD:			Head of the precinct.
							LOCATION:		Location of the precinct. (NOT NULL)
							NO_OF_CASES:	Present no. of open cases.
							STAFF_STRENGTH:	Present no. of working staff. (NOT NULL)

5.	pen

	<table>
		<tr>
			<TD>Description:</TD>
			<td>Personal information of the criminal.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>9</td>
		</tr>
	</table>

	<table>
	  	<tr>
		    <th>SSN</th>
		    <th>NAME</th> 
		    <th>DOB</th>
		    <th>AGE</th>
		    <th>SEX</th>
		    <th>NATIONALITY</th>
		    <th>CURRENT_ADDRESS</th>
		    <th>CONTACT_NO</th>
		    <th>REMARKS</th>
	  	</tr>
	  	<tr>
	    	<td>Social Security Number. Used as ID</td>
	    	<td>Full Name</td>
	    	<td>Date of birth</td>
	    	<td>Age in years</td>
	    	<td>Gender</td>
	    	<td>Nationality</td>
	    	<td>Cuurent address</td>
	    	<td>Contact Number(s)</td>
	    	<td>Remarks</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 		<td></td>
	 	</tr>
	</table>
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
<ol>
	<li><h4>Connect To Database Via the Command Line:</h4></li>
		1.	Go To c:\> in the cli.
		2.	Type "set oracle_sid=[database-name]".
		3.	Enter the username and password.
		4.	Confirm connection.

	<li><h4>Query to get database name in Oracle SQL:</h4></li>
		SELECT * FROM v$database or SELECT ora_database_name FROM dual
</ol>


