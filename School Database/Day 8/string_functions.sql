#8. CHAR_LENGTH
SELECT id, CHAR_LENGTH(fname) FROM students;
-- Definition: CHAR_LENGTH() returns the number of characters in a string.
-- Real use case: Validating input length — like checking a username or password meets a 
-- minimum/maximum character requirement before accepting it.

SELECT id, CHAR_LENGTH(fname) > 5 FROM students;
-- Definition: Combines CHAR_LENGTH() with a comparison — returns 1 (true) or 0 (false) 
-- for each row depending on whether the name's length is greater than 5.
-- Real use case: Quickly flagging which records meet a certain condition (e.g., "which 
-- student names are longer than 5 characters") without filtering rows out entirely.

SELECT id FROM students WHERE CHAR_LENGTH(fname) > 5;
-- Definition: Same length check, but used inside WHERE to actually filter and return 
-- only the rows matching the condition, instead of just showing true/false.
-- Real use case: Generating a report of only students whose first name exceeds 5 
-- characters — useful for things like UI display limits (e.g., name badges with 
-- limited space).

#9. INSERT()
SELECT INSERT('Hello Hy',6,0,' Abhinav');
-- Definition: INSERT(string, position, length, new_string) inserts new_string into the 
-- original string starting at position, replacing "length" characters (here length=0, 
-- so nothing is removed — it's a pure insertion).
-- Real use case: Programmatically inserting a word or tag into existing text at an exact 
-- position — like injecting a middle name into a full name string, or inserting a 
-- keyword into a template sentence.

#10. LEFT()
SELECT LEFT('ABHINAV',4);
-- Definition: LEFT(string, n) returns the first n characters from the left side of a string.
-- Real use case: Extracting a fixed-length prefix — like pulling the first 4 digits of a 
-- product code, or the area code from a phone number.

#11. RIGHT()
SELECT RIGHT('ABHINAV',4);
-- Definition: RIGHT(string, n) returns the last n characters from the right side of a string.
-- Real use case: Extracting a suffix — like getting the last 4 digits of a credit card 
-- or phone number for masked display (e.g., showing "****1234" for security).

#12. REPEAT()
SELECT REPEAT('ABHINAV ',5);
-- Definition: REPEAT(string, n) repeats a string n times and returns it as one combined string.
-- Real use case: Generating padding, separators, or placeholder text — like creating a 
-- row of dashes ("----------") for formatting reports, or generating repeated test data.

#13.TRIM()
SELECT TRIM('    HELLO ?    ');
-- Definition: TRIM() removes leading and trailing spaces from a string (spaces in the 
-- middle are untouched).
-- Real use case: Cleaning up user input — like when someone accidentally types extra 
-- spaces before/after their name or email in a form, TRIM ensures it's stored cleanly 
-- without messing up searches or comparisons later.