-- Case 1.
SELECT Joined, EmailAddress, FamilyName
FROM mailing_list;

-- Case 2. 
SELECT * 
FROM members;

-- Case 3. 
SELECT MailingAddress, HashedPassword, SubscriptionDate
FROM subscribers;

-- Case 4. 
SELECT Username, MailingAddress
FROM members;

-- Case 5. 
SELECT *
FROM users 
ORDER BY FamilyName ASC;

-- Case 6.
SELECT *
FROM members
ORDER BY NumberOfComments DESC;

-- Case 7.
SELECT DISTINCT Name, SubscribedSince
FROM subscribers 
ORDER BY SubscribedSince DESC;

-- Case 8.
SELECT NumberOfKids, FamilyName
FROM mailing_list
ORDER BY NumberOfKids ASC,  FamilyName ASC;

-- Case 9.
SELECT *
FROM subscribers
ORDER BY Comments ASC, Name DESC
LIMIT 3;

-- Case 10.
SELECT DISTINCT NumberOfDownloads, FamilyName, LastAccess
FROM users
ORDER BY FamilyName ASC, LastAccess DESC
LIMIT 3;


