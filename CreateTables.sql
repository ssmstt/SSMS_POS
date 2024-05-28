create database SSMS;
use SSMS;

CREATE TABLE FSP(
	FSPID INT PRIMARY KEY,
    FSP_Name VARCHAR(255) NOT NULL
);

CREATE TABLE Mess(
	Mess_ID VARCHAR(3) PRIMARY KEY, -- current mess names KG, RPA, VKB, CVR, MB, ML, RB, SR
    Mess_Name VARCHAR(300) NOT NULL,
    FSP_ID INT, 
    FOREIGN KEY(FSP_ID) REFERENCES FSP(FSPID)
);

CREATE TABLE Hostel(
	Hostel_Code varchar(3) PRIMARY KEY, -- matches the Hostel codes from the student databse we receive from SWD(KR for krishna, ML for Malviya)
    Hostel_Name varchar(30) NOT NULL, 
    MessID VARCHAR(3),
    FOREIGN KEY(MessID) REFERENCES Mess(Mess_ID)
);