--DELETES

delete from MEMBERSPORTSENTITY;
delete from MEMBERRELATIVESENTITY;
delete from MEMBERADDRESSESENTITY;
delete from CHAMPIONSHIPSTADIUMSENTITY;
delete from CHAMPIONSHIPSECONDARYREFEREESENTITY;
delete from CHAMPIONSHIPREFEREESENTITY;
delete from CHAMPIONSHIPRECORDSENTITY;
delete from CHAMPIONSHIPPRIZEENTITY;
delete from STADIUMENTITY;
delete from SPORTENTITY;
delete from RECORDENTITY;
delete from PRIZEENTITY;
delete from REFEREEENTITY;
delete from MEMBERENTITY;
delete from MEASUREUNITENTITY;
delete from COUNTRYENTITY;
delete from CITYENTITY;
delete from CHAMPIONSHIPENTITY;
delete from ADDRESSENTITY;

--ADDRESSENTITY

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (1, 'Graceland', 10, '580');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (2, 'Glendale', 9, '32');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (3, 'Center', 8, '96643');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (4, 'Schmedeman', 6, '5125');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (5, 'Swallow', 7, '665');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (6, 'Maryland', 4, '9626');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (7, 'Merchant', 5, '1731');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (8, 'Spaight', 2, '6639');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (9, 'Cottonwood', 3, '1279');

insert into ADDRESSENTITY (ID, AVENEU, CITYID, STREET) values (10, 'Loomis', 1, '60');


--CHAMPIONSHIPENTITY





insert into CHAMPIONSHIPENTITY (ID, ENDDATE, NAME, STARTDATE) values (1, '2014-03-14 16:55:58', 'Champions', '2013-08-23 09:49:44');

insert into CHAMPIONSHIPENTITY (ID, ENDDATE, NAME, STARTDATE) values (2, '2014-08-02 03:37:12', 'NBA', '2014-08-04 21:59:07');

insert into CHAMPIONSHIPENTITY (ID, ENDDATE, NAME, STARTDATE) values (3, '2014-04-27 07:32:23', 'ATP', '2013-09-09 09:40:41');

insert into CHAMPIONSHIPENTITY (ID, ENDDATE, NAME, STARTDATE) values (4, '2014-04-05 06:49:49', 'OpenUP', '2013-12-03 21:07:59');

insert into CHAMPIONSHIPENTITY (ID, ENDDATE, NAME, STARTDATE) values (5, '2013-10-16 11:27:51', 'Olimpycs', '2014-01-11 19:41:42');





--CITYENTITY

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (1, 1, 'San Mateo', 3798);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (2, 1, 'Imperial', 22836);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (3, 2, 'La Mirada', 29394);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (4, 2, 'California City', 29666);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (5, 3, 'South San Francisco', 32431);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (6, 3, 'Yuba City', 25413);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (7, 4, 'Lodi', 29778);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (8, 4, 'Monrovia', 43019);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (9, 5, 'Vista', 29819);

insert into CITYENTITY (ID, COUNTRYID, NAME, POPULATION) values (10, 5, 'Riverbank', 35735);


--COUNTRYENTITY

insert into COUNTRYENTITY (ID, NAME, POPULATION) values (1, 'Equatorial Guinea', 24381.43);

insert into COUNTRYENTITY (ID, NAME, POPULATION) values (2, 'Vatican City State (Holy See)', 30099.47);

insert into COUNTRYENTITY (ID, NAME, POPULATION) values (3, 'Palestinian Territory, Occupied', 42446.55);

insert into COUNTRYENTITY (ID, NAME, POPULATION) values (4, 'Congo, Republic of', 44817.97);

insert into COUNTRYENTITY (ID, NAME, POPULATION) values (5, 'Gibraltar', 41068.12);

--DOCUMENTTYPEENTITY


insert into DOCUMENTTYPEENTITY (ID, LENGTH, NAME) values (1, 16, 'American ID');

insert into DOCUMENTTYPEENTITY (ID, LENGTH, NAME) values (2, 25, 'Passport');

insert into DOCUMENTTYPEENTITY (ID, LENGTH, NAME) values (3, 16, 'Euro ID');


--MEASUREUNITENTITY



insert into MEASUREUNITENTITY (ID, DESCRIPTION, NAME) values (1, 'Vestibulum sed magna at nunc commodo placerat.', 'CM');

insert into MEASUREUNITENTITY (ID, DESCRIPTION, NAME) values (2, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque.', 'DM');

insert into MEASUREUNITENTITY (ID, DESCRIPTION, NAME) values (3, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'M');

insert into MEASUREUNITENTITY (ID, DESCRIPTION, NAME) values (4, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet.', 'KM');

insert into MEASUREUNITENTITY (ID, DESCRIPTION, NAME) values (5, 'Aliquam erat volutpat. In congue. Etiam justo.', 'BBD');



--MEMBERENTITY


insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (1, '1926-02-08 22:41:08', '280-02-4256', 1, 0, 'Helen', 'Greene', 'Helen Greene', 10);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (2, '1922-12-10 14:55:51', '575-84-5622', 2, 0, 'Norma', 'Myers', 'Norma Myers', 9);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (3, '1971-11-18 10:37:47', '904-87-4408', 1, 0, 'Louise', 'Wright', 'Louise Wright', 8);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (4, '1967-01-26 10:12:11', '111-98-8934', 3, 1, 'Michelle', 'Hughes', 'Michelle Hughes', 7);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (5, '1928-12-02 10:30:15', '921-07-6074', 2, 1, 'Lori', 'Ray', 'Lori Ray', 6);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (6, '1956-04-28 04:53:25', '413-57-0543', 3, 0, 'Michelle', 'Peterson', 'Michelle Peterson', 5);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (7, '1927-02-23 14:07:44', '287-55-8282', 2, 1, 'Catherine', 'Wagner', 'Catherine Wagner', 4);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (8, '1987-05-15 17:18:16', '564-61-8349', 2, 1, 'Denise', 'Gibson', 'Denise Gibson',3);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (9, '1914-06-27 00:59:51', '856-60-6034', 2, 1, 'Roger', 'Sanders', 'Roger Sanders', 2);

insert into MEMBERENTITY (ID, BIRTHDATE, DOCNUMBER, DOCUMENTTYPEID, ENABLE, FIRSTNAME, LASTNAME, NAME, PARTNERID) values (10, '1962-09-01 19:12:27', '996-08-3334', 2, 0, 'Janice', 'Gutierrez', 'Janice Gutierrez', 1);

--REFEREEENTITY


insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (1, 6, '1915-03-28 16:55:49', '747-57-2364', 1, 'Melissa', 'Reyes', 'Melissa Reyes');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (2, 6, '1914-11-30 18:49:39', '782-03-1907', 1, 'Jessica', 'Barnes', 'Jessica Barnes');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (3, 4, '1973-03-04 02:42:15', '627-19-1386', 1, 'Jack', 'Bowman', 'Jack Bowman');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (4, 8, '1951-08-22 14:51:17', '699-76-2162', 1, 'Christopher', 'White', 'Christopher White');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (5, 2, '1941-12-23 01:11:54', '289-61-6128', 0, 'Victor', 'Rice', 'Victor Rice');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (6, 10, '1988-07-09 14:45:13', '101-85-1117', 0, 'Craig', 'Mccoy', 'Craig Mccoy');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (7, 7, '1969-08-19 16:57:28', '392-25-1137', 0, 'Philip', 'Mitchell', 'Philip Mitchel');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (8, 6, '1932-03-20 02:37:28', '200-23-2454', 0, 'Lawrence', 'Moreno', 'Lawrence Moreno');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (9, 6, '1945-06-21 09:30:36', '664-23-5683', 1, 'Donald', 'Harper', 'Donald Harper');

insert into REFEREEENTITY (ID, AGEOFEXPIRIENCE, BIRTHDATE, DOCNUMBER, ENABLE, FIRSTNAME, LASTNAME, NAME) values (10, 3, '1979-05-17 02:33:58', '268-57-6344', 0, 'Tina', 'Hudson', 'Tina Hudson');


--PRIZEENTITY

insert into PRIZEENTITY (ID, NAME) values (1, 'Gold');

insert into PRIZEENTITY (ID, NAME) values (2, 'Silver');

insert into PRIZEENTITY (ID, NAME) values (3, 'Brooze');

insert into PRIZEENTITY (ID, NAME) values (4, 'Crimson');

insert into PRIZEENTITY (ID, NAME) values (5, 'Orange');


--RECORDENTITY


insert into RECORDENTITY (ID, MEASUREUNITID, NAME, RECORD) values (1, 1, 'Quebec', 34);

insert into RECORDENTITY (ID, MEASUREUNITID, NAME, RECORD) values (2, 2, 'Nova Scotia', 97);

insert into RECORDENTITY (ID, MEASUREUNITID, NAME, RECORD) values (3, 3, 'Saskatchewan', 54);

insert into RECORDENTITY (ID, MEASUREUNITID, NAME, RECORD) values (4, 3, 'Nunavut', 27);

insert into RECORDENTITY (ID, MEASUREUNITID, NAME, RECORD) values (5, 3, 'Nova Scotia', 51);

--SPORTENTITY


insert into SPORTENTITY (ID, MAXAGE, MINAGE, NAME) values (1, 18, 31, 'Soccer');

insert into SPORTENTITY (ID, MAXAGE, MINAGE, NAME) values (2, 23, 35, 'Basketball');

insert into SPORTENTITY (ID, MAXAGE, MINAGE, NAME) values (3, 22, 32, 'Golf');

insert into SPORTENTITY (ID, MAXAGE, MINAGE, NAME) values (4, 24, 47, 'Tennis');

insert into SPORTENTITY (ID, MAXAGE, MINAGE, NAME) values (5, 20, 46, 'Volleyball');

--STADIUMENTITY

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (1, 705, 1, 'Nova Scotia');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (2, 924, 2, 'Saskatchewan');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (3, 190, 3, 'British Columbia');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (4, 379, 4, 'Yukon');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (5, 834, 5, 'New Brunswick');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (6, 610, 6, 'Nova Scotia');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (7, 816, 7, 'Manitoba');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (8, 947, 8, 'British Columbia');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (9, 766, 9, 'Nunavut');

insert into STADIUMENTITY (ID, CAPACITY, CITYID, NAME) values (10, 122, 10, 'Ontario');

--CHAMPIOSHIPPRIZEENTITY


insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (1, 1);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (2, 2);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (3, 3);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (4, 3);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (5, 1);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (1, 2);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (2, 4);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (3, 5);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (4, 5);

insert into CHAMPIONSHIPPRIZEENTITY (CHAMPIONSHIPID, PRIZEID) values (5, 5);


--CHAMPIOSHIPRECORDSENTITY


insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (1, 3);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (2, 3);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (3, 3);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (4, 1);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (5, 1);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (1, 2);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (2, 2);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (3, 4);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (4, 5);

insert into CHAMPIONSHIPRECORDSENTITY (CHAMPIONSHIPID, RECORDSID) values (5, 4);



--CHAMPIONSHIPREFEREESENTITY


insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (1, 1);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (1, 2);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (1, 3);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (1, 4);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (2, 5);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (3, 1);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (3, 2);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (3, 3);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (2, 4);

insert into CHAMPIONSHIPREFEREESENTITY (REFEREESID, CHAMPIONSHIPID) values (5, 5);


--CHAMPIONSHIPSECONDARYREFEREESENTITY


insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (1, 1);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (1, 2);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (2, 3);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (4, 4);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (4, 5);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (4, 1);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (4, 2);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (3, 3);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (3, 4);

insert into CHAMPIONSHIPSECONDARYREFEREESENTITY (SECONDARYREFEREESID, CHAMPIONSHIPID) values (5, 5);


--CHAMPIONSHIPSTADIUMSENTITY


insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (1, 1);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (2, 2);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (3, 3);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (4, 4);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (5, 5);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (1, 6);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (2, 7);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (3, 8);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (4, 9);

insert into CHAMPIONSHIPSTADIUMSENTITY (CHAMPIONSHIPID, STADIUMSID) values (5, 10);


--MEMBERADDRESSESENTITY


insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (1, 1);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (2, 2);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (3, 3);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (4, 4);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (5, 5);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (6, 6);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (7, 7);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (8, 8);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (9, 9);

insert into MEMBERADDRESSESENTITY (MEMBERID, ADDRESSESID) values (10, 10);

--MEMBERRELATIVESENTITY


insert into MEMBERRELATIVESENTITY (RELATIVESID, MEMBERID) values (1, 1);

insert into MEMBERRELATIVESENTITY (RELATIVESID, MEMBERID) values (4, 5);

insert into MEMBERRELATIVESENTITY (RELATIVESID, MEMBERID) values (3, 2);

insert into MEMBERRELATIVESENTITY (RELATIVESID, MEMBERID) values (10, 9);

insert into MEMBERRELATIVESENTITY (RELATIVESID, MEMBERID) values (8, 7);


--MEMBERSPORTSENTITY


insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (1, 1);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (1, 2);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (1, 3);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (2, 4);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (4, 5);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (4, 6);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (5, 7);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (3, 8);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (3, 9);

insert into MEMBERSPORTSENTITY (SPORTSID, MEMBERID) values (2, 10);
