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
	<li><a href="#ref">References</a></li>
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

	<b>1. criminal</b><br>
	
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
	 			

	<b>2. criminal_info</b><br>

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


	<b>3. crime</b>

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
		    <th>NO</th>
		    <th>DESCRIPTION</th> 
		    <th>PUNISHMENT</th>
		    <th>TYPE</th>
		    <th>EXTRA</th>
	  	</tr>
	  	<tr>
	    	<td>IPC number of the crime</td>
	    	<td>Crime description</td>
	    	<td>Min-max punishment for the crime</td>
	    	<td>Pardonable / Non-pardonable</td>
	    	<td>Extra information</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td>NOT NULL</td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td></td>	 		
	 	</tr>
	</table>

	<b>4. precinct</b>

	<table>
		<tr>
			<TD>Description:</TD>
			<td>Information about the precincts</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>5</td>
		</tr>
	</table>

	<table>
	  	<tr>
		    <th>ID</th>
		    <th>HEAD</th> 
		    <th>LOCATION</th>
		    <th>NO_OF_CASES</th>
		    <th>STAFF_STRENGTH</th>
	  	</tr>
	  	<tr>
	    	<td>Simple ID</td>
	    	<td>Head of precinct</td>
	    	<td>Location of precinct</td>
	    	<td>Current number of open cases at the precinct</td>
	    	<td>Current staff strength at the precinct</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 		<td>NOT NULL</td>
	 		<td>NOT NULL</td>
	 	</tr>
	</table>

	<b>5. pen</b>

	<table>
		<tr>
			<TD>Description:</TD>
			<td>Information about the penetentiaries.</td>
		</tr>
		<tr>
			<td>No. of columns:</td>
			<td>7</td>
		</tr>
	</table>

	<table>
	  	<tr>
		    <th>ID</th>
		    <th>NAME</th> 
		    <th>LOCATION</th>
		    <th>WARDEN</th>
		    <th>CAPACITY</th>
		    <th>GRADE</th>
		    <th>NO_OF_PRISONERS</th>
		    
	  	</tr>
	  	<tr>
	    	<td>Simple ID.</td>
	    	<td>Name of penetentiary</td>
	    	<td>Location of penetentiary</td>
	    	<td>Name of warden</td>
	    	<td>Total capacity</td>
	    	<td>Grade</td>
	    	<td>Current number of prisoners</td>
	 	</tr>
	 	<tr>
	 		<td>PRIMARY KEY, AUTO INCREMENT</td>
	 		<td>NOT NULL</td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 		<td></td>
	 		<td>NOT NULL</td>
	 	</tr>
	</table>
		

------------------------------

<div id="howto"></div>
<h3>How To's:</h3>
<ol>
	<li><h4>Connect To Database Via the Command Line:</h4></li>
		1.	Go To c:\> in the cli.
		2.	Type "set oracle_sid=[database-name]".
		3.	Enter sqlplus.
		4.	Enter the username and password.
		5.	Confirm connection.

	<li><h4>Query to get database name in Oracle SQL:</h4></li>
		SELECT * FROM v$database or SELECT ora_database_name FROM dual
</ol>

------------------------------

<div id="ref"></div>
<h3>References:</h3>
<ol>
	<li><a target="_blank" href="https://docs.oracle.com/cd/B19306_01/nav/portal_3.htm">Oracle Database Online Documentation
10g Release 2 (10.2) Help Center</a></li>
	<li><a target="_blank" href="http://www.oracle.com/pls/xe102/homepage">Oracle Database Online Documentation
10g Release 2 (10.2)</a></li>
	<li><a target="_blank" href="http://www.techonthenet.com/oracle/index.php">Tech On The Net Oracle/PLSQL Tutorials</a></li>
	<li><a target="_blank" href="https://docs.oracle.com/cd/B25329_01/doc/appdev.102/b25108/xedev_sqlplus.htm">Oracle SQL Commmand Line Documentation</a></li>
	<li>
		YouTube Videos:
		<ol>
			<li><a target="_blank" href="https://www.youtube.com/watch?v=e_pGyzJrmqU">Distributed Databases - Transparency, Replication, Horizontal and Vertical Fragmentation, Allocation</a></li>
			<li><a target="_blank" href="https://www.youtube.com/watch?v=V7m2AKdASy8&list=PL723DDDD9219A5AF5">CS712 - Distributed Database Management Systems</a></li>
		</ol>
	</li>
</ol>
