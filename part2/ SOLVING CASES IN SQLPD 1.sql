/* 1. Mission Brief: A mailing list of an illegal service was sent to the SQLPD hot-line. Please submit all entries join dates, email addresses and family names' details.
*/
SELECT Joined, EmailAddress, FamilyName
FROM mailing_list;

/* 2. Mission Brief: A hacked site members' details have surfaced on a darknet forum. Please submit all members' details. */
SELECT * 
FROM members;

/* 3. Mission Brief: White hat hacker has sent SQLPD exposed subscribers' details of a shady site connected to various persons of interest. Please submit all subscribers mailing addresses, hashed passwords and subscription dates' details. */
SELECT MailingAddress, HashedPassword, SubscriptionDate
FROM subscribers;

/* 4. Mission Brief: A hacked site members' details have surfaced on a darknet forum. Please submit all members usernames and mailing addresses' details.*/
SELECT Username, MailingAddress
FROM members;



