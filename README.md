# sql-private-investigator
Solving crimes with SQL.
The murder in SQL City (https://mystery.knightlab.com/), with GitHub repo: (https://github.com/NUKnightLab/sql-mysteries) and cases from SQL Police Department (https://sqlpd.com/).

## Part 1. SQL Murder Mystery
### Case 1.0.1.: The Murderer
Initial information (the what, the when and the where):\
A crime has taken place and the detective needs your help. The detective gave you the crime scene report, but you somehow lost it. You vaguely remember that the crime was a **​murder​** that occurred sometime on ​**Jan.15, 2018**​ and that it took place in ​**SQL City​**. Start by retrieving the corresponding crime scene report from the police department’s database.\

#### Murder reports:
-20180215	murder	REDACTED REDACTED REDACTED	SQL City\
-20180215	murder	Someone killed the guard! He took an arrow to the knee!	SQL City\
-**20180115**	murder	Security footage shows that there were **2 witnesses**. The first witness lives at the **last house on "Northwestern Dr"**. The second witness, named **Annabel, lives somewhere on "Franklin Ave"**.	SQL City\
The murder report in SQL City that corresponds to the initially given date leads to 2 witnesses with the descriptions shown above.\

#### The output of the second query (made in 2 parts) leads us to the witnesses:
**id**   //   	**name**            // 	license_id //   address_number //	address_street_name     //	ssn\
**16371** //	**Annabel Miller** //	490173  //	    103              //	Franklin Ave            //	318771143\
**14887** //	**Morty Schapiro** //	118009  //	    4919               //	Northwestern Dr      //	111564949\
This gave us the full names and id (id in table 'person' is person_id in table 'interview'), from where we can query their testimonies in table 'interview'.\

#### Testimonies of the witnesses:
**person_id**	transcript\
**14887**	"I heard a gunshot and then saw a man run out. He had a **"Get Fit Now Gym" bag**. The membership number on the bag started with **"48Z"**. Only gold members have those bags. The man got into a car with a plate that included **"H42W"**."\
**16371**	"I saw the murder happen, and I recognized the killer from my **gym** when I was working out **last week on January the 9th**."\

#### Indentifying the murderer:
Based on the gym membership id numbers we get their personal id-s, which in table 'person' give us all their personal information: names, address streets and drivers license id-s. \
id	    name	         license_id	address_number	**address_street_name**	    ssn\
28819	**Joe Germuska**	173289	111	        **Fisk Rd**	                    138909730\
67318	**Jeremy Bowers**	423327	530	       **Washington Pl, Apt 3A**    871539279\

#### Solving the murder:
When we query for license id in 'drivers_license' table, the only result is a person with license_id: **423327**, which corresponds to the murderer of the case: **Jeremy Bowers**. That is also confirmed by the information **"plate_number": 0H42W2** comming back to the table 'interview', where Morty Shapiro testified that the car of the murderer's plate included **"H42W"**.
 
### Case 1.0.2.: The Mastermind.

## Part 2. SQL Police Department
### Case 2.0.1.:





