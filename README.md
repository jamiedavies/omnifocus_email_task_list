# omnifocus_email_task_list v1
Script to email a list of due and outstanding tasks as well as those that are flagged and in the inbox.

Change the settings at the top of the script to alter what tasks are sent in the email 


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


Set up the script to run at regular intervals - I suggest daily. 

Enjoy the daily reminders of what tasks you have to complete or process. 
