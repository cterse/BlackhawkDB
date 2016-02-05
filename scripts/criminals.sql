<!--
 * Title:          <code> saveScript.jsp   </code> <BR> 
 * Description:    Handler to set content 
 * 
 * <BR> 
 * Date:           23 JAN 2002               <BR> 
 * <p> 
 * Company:        Oracle <BR> 
 * Copyright:      Copyright (c) 2002, 2003 
 *                 All rights reserved. 
 * 
 * @author  Marcus Pecher 
 * @version 1.0 
 * 
 * MODIFIED   (MM/DD/YY)
 *   asamuel   12/05/03 - softcoding save mime type
 *   agoggin   10/10/03 - Add support for 'hiding' input (bug 2905440)

-->

create table criminals
(
ssn integer,
criminal_id integer primary key,
crime_no integer,
sentence blob,
status blob,
arrest_details blob,
precinct_id integer,
pen_id integer

);


