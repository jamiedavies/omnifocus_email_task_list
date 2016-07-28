------------------------------------------------------------------------------------
-- Omnifocus Daily Task Email 
------------------------------------------------------------------------------------
-- Script name: Email OmniFocus Tasks, Inbox and Flagged
-- Version 1.0
-- Written By: Jamie Davies  http://jamiedavies.co
-- 
-- Version History:
-- 	1.0 - Initial release [28th July 2016] 
--
-- Sends email outlining all tasks that as due or overdue on a particular day.
-- Can also send all Flagged tasks, all tasks in the Inbox and all tasks that are in a specific context. 
--
-- This script is based on some of the code from: 
-- > here: http://www.tuaw.com/2013/02/18/applescripting-omnifocus-send-completed-task-report-to-evernot/
-- > and here: https://brooksreview.net/2015/07/daily-emails/ 
--
------------------------------------------------------------------------------------

------------------------------------------
-- Script Settings [Change These] 
------------------------------------------

-- Where is the email being sent to ? 
property toAddress : "email@address.com"

-- Do you want to email all flagged tasks? (true / false) 
property isFlagged : true

-- Do you want to email all inbox tasks? (true / false)
property isInbox : true

-- Do you want to email all actions from a specific context? (true / false)
property isASAP : true
-- What context? 
property pContext : "@ASAP"

-- How many characters of any note should be presented?
property maxNoteChars : 250

------------------------------------------
-- Stop editing or the sky might fall in  
------------------------------------------


-- Calculate the task start and end dates
set theStartDate to current date
set hours of theStartDate to 0
set minutes of theStartDate to 0
set seconds of theStartDate to 0
set theEndDate to theStartDate + (23 * hours) + (59 * minutes) + 59
set theTimeStamp to (do shell script "date '+%Y-%m-%d'")

-- Set the email title 
set theSubject to "Omnifocus Tasks for " & theTimeStamp

-- Begin preparing the task list as HTML
set htmlHead to "
<html>
<head>
<style> 

	table a:link {
		color: #666;
		font-weight: bold;
		text-decoration:none;
	}
	table a:visited {
		color: #999999;
		font-weight:bold;
		text-decoration:none;
	}
	table a:active,
	table a:hover {
		color: #bd5a35;
		text-decoration:underline;
	}
	table {
		font-family:Arial, Helvetica, sans-serif;
		color:#666;
		font-size:12px;
		text-shadow: 1px 1px 0px #fff;
		background:#eaebec;
		border:#ccc 1px solid;
		width:95%; 
		-moz-border-radius:3px;
		-webkit-border-radius:3px;
		border-radius:3px;

		-moz-box-shadow: 0 1px 2px #d1d1d1;
		-webkit-box-shadow: 0 1px 2px #d1d1d1;
		box-shadow: 0 1px 2px #d1d1d1;
	}
	table th {
		padding:5px 5px 5px 5px;
		border-top:1px solid #fafafa;
		border-bottom:1px solid #e0e0e0;

		background: #ededed;
		background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#ebebeb));
		background: -moz-linear-gradient(top,  #ededed,  #ebebeb);
	}
	table th:first-child {
		text-align: left;
		padding-left:5px;
	}
	table tr:first-child th:first-child {
		-moz-border-radius-topleft:3px;
		-webkit-border-top-left-radius:3px;
		border-top-left-radius:3px;
	}
	table tr:first-child th:last-child {
		-moz-border-radius-topright:3px;
		-webkit-border-top-right-radius:3px;
		border-top-right-radius:3px;
	}
	table tr {
		text-align: center;
		padding-left:5px;
	}
	table td:first-child {
		text-align: left;
		padding-left:5px;
		border-left: 0;
	}
	table td {
		padding:5px;
		border-top: 1px solid #ffffff;
		border-bottom:1px solid #e0e0e0;
		border-left: 1px solid #e0e0e0;

		background: #fafafa;
		background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
		background: -moz-linear-gradient(top,  #fbfbfb,  #fafafa);
	}
	table tr.even td {
		background: #f6f6f6;
		background: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8), to(#f6f6f6));
		background: -moz-linear-gradient(top,  #f8f8f8,  #f6f6f6);
	}
	table tr:last-child td {
		border-bottom:0;
	}
	table tr:last-child td:first-child {
		-moz-border-radius-bottomleft:3px;
		-webkit-border-bottom-left-radius:3px;
		border-bottom-left-radius:3px;
	}
	table tr:last-child td:last-child {
		-moz-border-radius-bottomright:3px;
		-webkit-border-bottom-right-radius:3px;
		border-bottom-right-radius:3px;
	}
	table tr:hover td {
		background: #f2f2f2;
		background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
		background: -moz-linear-gradient(top,  #f2f2f2,  #f0f0f0);	
	}

</style></head><body>"

-- Needed to prevent errors 
set theProgressDetail to "<h2> &#128203; Projects</h2>"
set theInboxProgressDetail to ""
set theFlaggedProgressDetail to ""
set theASAPProgressDetail to ""


------------------------------------------
-- Get list of actions for email 
------------------------------------------

tell application "OmniFocus"
	
	tell front document
		
		------------------------------------------
		-- Include overdue and due today tasks 
		------------------------------------------
		-- Retrieve a list of projects modified within the specified scope
		set theModifiedProjects to every flattened project where its modification date is less than theEndDate
		
		-- Loop through any detected projects
		repeat with a from 1 to length of theModifiedProjects
			
			set theCurrentProject to item a of theModifiedProjects
			
			-- Retrieve any project tasks modified within the specified scope
			set theDueTasks to (every flattened task of theCurrentProject where its completed = false and due date is less than theEndDate)
			
			-- Loop through any detected tasks
			if theDueTasks is not equal to {} then
				
				-- Append the project name to the task list
				set theProgressDetail to theProgressDetail & "<h3>" & name of theCurrentProject & "</h3>" & return & "
				
				<tbody><table><!-- Table Header -->
				<thead>
					<tr>
					<th>Task</th>
					<th>Due Date</th>
					<th>&#10004;</th>
				</tr>
				</thead>
				<!-- Table Header -->
				<tbody>"
				
				repeat with b from 1 to length of theDueTasks
					
					set theCurrentTask to item b of theDueTasks
					-- Append the tasks's name to the task list
					if due date of theCurrentTask < theEndDate then set isOverdue to true
					
					if note of theCurrentTask as string is equal to "" then set theProgressDetail to theProgressDetail & "
					
						<tr>
							<td>" & name of theCurrentTask & "</td>
							<td>" & due date of theCurrentTask & "</td>
							<td></td>
						</tr>" & return
					
					-- Shrink the note down to prevent really long notes clogging up email
					set longNote to note of theCurrentTask as string
					if length of longNote is less than maxNoteChars then
						set taskNote to longNote
					else
						set taskNote to text 1 thru maxNoteChars of longNote
					end if
					
					if note of theCurrentTask as string is not equal to "" then set theProgressDetail to theProgressDetail & "
					
						<tr>
							<td>" & name of theCurrentTask & "</td>
							<td>" & due date of theCurrentTask & "</td>
							<td rowspan='2'></td>
						</tr>
					
						<tr>
							<td colspan='2'><small>" & taskNote & "</small></td>
						</tr>" & return
					
				end repeat
				set theProgressDetail to theProgressDetail & "</tbody></table>" & return
				
			end if
			
		end repeat
		
		
		------------------------------------------
		-- Include all flagged tasks 
		------------------------------------------
		
		if isFlagged then
			
			-- Include the OmniFocus Flagged
			set theFlaggedDetail to false
			set theFlaggedTasks to (every flattened task whose flagged is true and completed is false)
			
			-- Loop through any detected tasks
			if theFlaggedTasks is not equal to {} then
				
				-- Append the project name to the task list
				set theFlaggedProgressDetail to theFlaggedProgressDetail & "<h2>&#9873; Flagged</h2>
			
					<tbody><table><!-- Table Header -->
					<thead>
						<tr>
						<th>Task</th>
						<th>Due Date</th>
						<th>&#10004;</th>
					</tr>
					</thead>
					<!-- Table Header -->
					<tbody>"
				
				repeat with d from 1 to length of theFlaggedTasks
					
					-- Append the tasks's name to the task list
					set theFlaggedCurrentTask to item d of theFlaggedTasks
					
					if due date of theFlaggedCurrentTask is equal to missing value then
						set dueDate to "-"
					else
						set dueDate to due date of theFlaggedCurrentTask
					end if
					
					set theFlaggedProgressDetail to theFlaggedProgressDetail & "
				
						<tr>
							<td>" & name of theFlaggedCurrentTask & "</td>
							<td>" & dueDate & "</td>
							<td></td>
						</tr>" & return
					
				end repeat
				
				set theFlaggedProgressDetail to theFlaggedProgressDetail & "</tbody></table>" & return
				
			end if
			
		end if
		
		
		------------------------------------------
		-- Include all tasks in the inbox 
		------------------------------------------
		
		if isInbox then
			
			-- Include the OmniFocus inbox
			set theInboxCompletedTasks to (every inbox task where its completed = false)
			
			-- Loop through any detected tasks
			if theInboxCompletedTasks is not equal to {} then
				
				-- Append the project name to the task list
				set theInboxProgressDetail to theInboxProgressDetail & "<h2>&#128229; Inbox</h2>
				
					<tbody><table><!-- Table Header -->
					<thead>
						<tr>
						<th>Task</th>
						<th>Due Date</th>
						<th>&#10004;</th>
					</tr>
					</thead>
					<!-- Table Header -->
					<tbody>"
				
				repeat with d from 1 to length of theInboxCompletedTasks
					
					-- Append the tasks's name to the task list
					set theInboxCurrentTask to item d of theInboxCompletedTasks
					
					if due date of theInboxCurrentTask is equal to missing value then
						set dueDate to "-"
					else
						set dueDate to due date of theInboxCurrentTask
					end if
					
					set theInboxProgressDetail to theInboxProgressDetail & "
					
							<tr>
								<td>" & name of theInboxCurrentTask & "</td>
								<td>" & dueDate & "</td>
								<td></td>
							</tr>" & return
					
				end repeat
				
				set theInboxProgressDetail to theInboxProgressDetail & "</tbody></table>" & return
				
			end if
			
		end if
		
		
		------------------------------------------
		-- Include all @ASAP tasks 
		------------------------------------------
		
		if isASAP then
			
			set lstContext to flattened contexts where name is pContext
			if lstContext ≠ {} then
				set oContext to first item of lstContext
			else
				set oContext to make new context with properties {name:pContext}
			end if
			
			-- Include the OmniFocus inbox
			set theASAPTasks to (flattened tasks where its context is oContext and completed is false)
			
			-- Loop through any detected tasks
			if theASAPTasks is not equal to {} then
				
				-- Append the project name to the task list
				set theASAPProgressDetail to theASAPProgressDetail & "<h2>&#128336; ASAP</h2>
				
					<tbody><table><!-- Table Header -->
					<thead>
						<tr>
						<th>Task</th>
						<th>Due Date</th>
						<th>&#10004;</th>
					</tr>
					</thead>
					<!-- Table Header -->
					<tbody>"
				
				repeat with d from 1 to length of theASAPTasks
					
					-- Append the tasks's name to the task list
					set theASAPCurrentTask to item d of theASAPTasks
					
					if due date of theASAPCurrentTask is equal to missing value then
						set dueDate to "-"
					else
						set dueDate to due date of theASAPCurrentTask
					end if
					
					set theASAPProgressDetail to theASAPProgressDetail & "
					
							<tr>
								<td>" & name of theASAPCurrentTask & "</td>
								<td>" & dueDate & "</td>
								<td></td>
							</tr>" & return
					
				end repeat
				
				set theASAPProgressDetail to theASAPProgressDetail & "</tbody></table>" & return
				
			end if
			
		end if
		
	end tell
	
end tell

------------------------------------------
-- Compose the HTML email 
-- Here you can alter the order of the elements of the email 
-- htmlHead must go first
------------------------------------------
set theProgressDetail to htmlHead & theFlaggedProgressDetail & theASAPProgressDetail & theProgressDetail & theInboxProgressDetail & "</body></html>"


------------------------------------------
-- Send the HTML email via the CLI 
------------------------------------------
do shell script "echo " & quote & theProgressDetail & quote & " | mail -s \"$(echo \"" & theSubject & "
Content-Type: text/html\")\" " & toAddress
