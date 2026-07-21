#LIKE KEYWORD
SELECT * FROM students WHERE fname LIKE "A%";
-- Definition: LIKE searches for a pattern match instead of an exact match. % is a 
-- wildcard meaning "any number of characters (including zero)." Here, "A%" matches 
-- any name starting with A.
-- Real use case: A search box in an app where a user types "A" and the app shows 
-- suggestions for all names starting with A — like autocomplete search.
SELECT * FROM students WHERE fname LIKE "%v";
-- Definition: "%v" matches any name ending with the letter v.
-- Real use case: Useful for pattern-based reports — e.g., finding all names that 
-- follow a certain naming convention or ending, though less common in real search UIs 
-- than "starts with."
SELECT * FROM students WHERE fname LIKE "%av%";
-- Definition: "%av%" matches any name that contains "av" anywhere in it — beginning, 
-- middle, or end.
-- Real use case: A flexible search feature — like a search bar where typing any part 
-- of a name (not just the start) still finds matching results, similar to how many 
-- apps let you search contacts by any substring.
SELECT * FROM students WHERE fname LIKE "____";
-- Definition: The underscore (_) is a wildcard for exactly one character. Four 
-- underscores means "match any name that is exactly 4 characters long."
-- Real use case: Validating or filtering data by exact length — like finding all 
-- product codes or usernames that are exactly a fixed number of characters.
SELECT * FROM students WHERE fname LIKE "S____";
-- Definition: Combines a fixed letter with wildcards — "S" followed by exactly 4 more 
-- characters, meaning names that are 5 characters total and start with S.
-- Real use case: More precise pattern searches — like finding all 5-letter names 
-- starting with a specific letter, useful in data validation or targeted lookups.
SELECT * FROM students WHERE id LIKE "%3%";
-- Definition: LIKE also works on numbers (MySQL treats them as text for this 
-- comparison) — "%3%" matches any id containing the digit 3 anywhere.
-- Real use case: Searching for IDs, phone numbers, or codes that contain a specific 
-- digit — like finding all account numbers that include "3" for auditing purposes.
SELECT * FROM students WHERE id LIKE "1_";
-- Definition: Matches ids that are exactly 2 characters long and start with 1 (e.g., 
-- 10-19).
-- Real use case: Finding all records within a specific numeric range that share a 
-- common starting digit — like filtering all IDs in the "10s" range.


#LIMIT KEYWORD 
SELECT * FROM students LIMIT 5; #print first 5 recoards
-- Definition: LIMIT restricts how many rows the query returns — here, only the 
-- first 5 rows.
-- Real use case: Pagination — showing only the first 5 results on a webpage instead 
-- of loading the entire table at once, which keeps apps fast and responsive.
SELECT * FROM students LIMIT 3,3; #Skip first 3 recoards then print next 3 
-- Definition: LIMIT offset, count skips the first "offset" rows, then returns the 
-- next "count" rows — here, skip 3, then show the next 3.
-- Real use case: Classic pagination logic — like showing "page 2" of results (records 
-- 4-6) after page 1 already showed records 1-3.
SELECT * FROM students ORDER BY id DESC LIMIT 10 ,5;
-- Definition: Combines ORDER BY and LIMIT — sorts by id descending first, then skips 
-- 10 rows and returns the next 5.
-- Real use case: Fetching a specific "page" of the most recently added records — like 
-- showing entries 11-15 of the newest students in an admin dashboard.
SELECT * FROM students ORDER  BY class DESC LIMIT 1;
-- Definition: Sorts by class descending, then LIMIT 1 returns only the single top row 
-- — effectively finding the highest class value.
-- Real use case: Quickly finding "the student in the highest class" without writing a 
-- separate MAX() query — useful for leaderboard-style or ranking features.
SELECT * FROM students ORDER BY age DESC LIMIT 2;
-- Definition: Sorts by age descending, then returns only the top 2 rows.
-- Real use case: Finding the "2 oldest students" in the records — common pattern for 
-- showing top-N results, like "top 2 highest scorers" or "top 2 oldest employees."