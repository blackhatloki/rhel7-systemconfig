create database ServerInv; 
CREATE TABLE IF NOT EXISTS ServerTable (
     serverID INT UNSIGNED NOT NULL AUTO_INCREMENT,
     siteCode CHAR()       NOT NULL DEFAULT '',    
     countryCode CHAR(3)   NOT NULL DEFAULT '',
	 regionCode  CHAR(3)   NOT NULL DEFAULT '',
	 datacenter  VARCHAR(30)   NOT NULL DEFAULT '',
	 floor       INT UNSIGNED  NOT NULL DEFAULT 1,
	 cage        VARCHAR(10)   NOT NULL DEFAULT '',
	 cabinet     VARCHAR(10)   NOT NULL DEFAULT '',
	 rackunit    VARCHAR(10)   NOT NULL DEFAULT '',
	 serverName  VARCHAR(30)   NOT NULL DEFAULT '',
	 serverOS    VARCHAR(20)   NOT NULL DEFAULT '',
	 serverENV   VARCHAR(3)    NOT NULL DEFAULT '',    
	 serverRelease  VARCHAR(20)   NOT NULL DEFAULT '',
	 serverHardware VARCHAR(20)   NOT NULL DEFAULT '',
	 serverMgmt     VARCHAR(20)   NOT NULL DEFAULT '',
	 serverSerial   VARCHAR(20)   NOT NULL DEFAULT '',
	 serverAssettag VARCHAR(20)   NOT NULL DEFAULT '',
	 serverVendor   VARCHAR(20)   NOT NULL DEFAULT '',
	 serverMemory   VARCHAR(20)   NOT NULL DEFAULT '',
	 serverCPU      VARCHAR(20)   NOT NULL DEFAULT '',
	 serverSAN      VARCHAR(1)    NOT NULL DEFAULT '',
	 serverNAS      VARCHAR(1)    NOT NULL DEFAULT '',
	 serverBackup   VARCHAR(1)    NOT NULL DEFAULT '',  
	 supportgroup   VARCHAR(20)   NOT NULL DEFAULT '',
	 businessunit   VARCHAR(20)   NOT NULL DEFAULT '',
	 serviceDate    VARCHAR(20)   NOT NULL DEFAULT '',
	 decomDate VARCHAR(20)   NOT NULL DEFAULT '',
     PRIMARY KEY (serverID)
     );
	 
	 
create database BrocadeSanInv; 
CREATE TABLE IF NOT EXISTS BrocadeTable (
     brocadeID INT UNSIGNED NOT NULL AUTO_INCREMENT,
     siteCode CHAR()       NOT NULL DEFAULT '',    
     countryCode CHAR(3)   NOT NULL DEFAULT '',
	 regionCode  CHAR(3)   NOT NULL DEFAULT '',
	 datacenter  VARCHAR(30)   NOT NULL DEFAULT '',
	 floor       INT UNSIGNED  NOT NULL DEFAULT 1,
	 cage        VARCHAR(10)   NOT NULL DEFAULT '',
	 cabinet     VARCHAR(10)   NOT NULL DEFAULT '',
	 brocadeName  VARCHAR(30)   NOT NULL DEFAULT '',
	 brocadeOS    VARCHAR(20)   NOT NULL DEFAULT '',
	 brocadeHardware VARCHAR(20)   NOT NULL DEFAULT '',
	 brocadeMgmt     VARCHAR(20)   NOT NULL DEFAULT '',
	 brocadeSerial   VARCHAR(20)   NOT NULL DEFAULT '',
	 brocadeAssettag VARCHAR(20)   NOT NULL DEFAULT '',
	 totalports      INT UNSIGNED  NOT NULL DEFAULT 1,  
     freeports       INT UNSIGNED  NOT NULL DEFAULT 1, 	 
	 supportgroup   VARCHAR(20)   NOT NULL DEFAULT '',
	 serviceDate    VARCHAR(20)   NOT NULL DEFAULT '',
	 decomDate VARCHAR(20)   NOT NULL DEFAULT '',
     PRIMARY KEY (brocadeID)
     );
	 
	 
create database StorageInv; 	 
CREATE TABLE IF NOT EXISTS StorageTable (
     storageID INT UNSIGNED NOT NULL AUTO_INCREMENT,
     siteCode CHAR()       NOT NULL DEFAULT '',    
     countryCode CHAR(3)   NOT NULL DEFAULT '',
	 regionCode  CHAR(3)   NOT NULL DEFAULT '',
	 datacenter  VARCHAR(30)   NOT NULL DEFAULT '',
	 floor       INT UNSIGNED  NOT NULL DEFAULT 1,
	 cage        VARCHAR(10)   NOT NULL DEFAULT '',
	 cabinet     VARCHAR(10)   NOT NULL DEFAULT '',
	 storageName  VARCHAR(30)   NOT NULL DEFAULT '',
	 storageOS    VARCHAR(20)   NOT NULL DEFAULT '',
	 storageHardware VARCHAR(20)   NOT NULL DEFAULT '',
	 storageMgmt     VARCHAR(20)   NOT NULL DEFAULT '',
	 storageMgmtSerial  VARCHAR(20)   NOT NULL DEFAULT '',
	 storageSerial   VARCHAR(20)   NOT NULL DEFAULT '',
	 storageAssettag VARCHAR(20)   NOT NULL DEFAULT '',
	 totalports      INT UNSIGNED  NOT NULL DEFAULT 1,  
     freeports       INT UNSIGNED  NOT NULL DEFAULT 1, 	 
	 supportgroup   VARCHAR(20)   NOT NULL DEFAULT '',
	 serviceDate    VARCHAR(20)   NOT NULL DEFAULT '',
	 decomDate VARCHAR(20)   NOT NULL DEFAULT '',
     PRIMARY KEY (storageID)
     ); 
	 
	 
create database NetworkInv; 	                       
CREATE TABLE IF NOT EXISTS NetworkTable (
     networkID INT UNSIGNED NOT NULL AUTO_INCREMENT,
     siteCode CHAR()       NOT NULL DEFAULT '',    
     countryCode CHAR(3)   NOT NULL DEFAULT '',
	 regionCode  CHAR(3)   NOT NULL DEFAULT '',
	 datacenter  VARCHAR(30)   NOT NULL DEFAULT '',
	 floor       INT UNSIGNED  NOT NULL DEFAULT 1,
	 cage        VARCHAR(10)   NOT NULL DEFAULT '',
	 cabinet     VARCHAR(10)   NOT NULL DEFAULT '',
	 networkName  VARCHAR(30)   NOT NULL DEFAULT '',
	 networkOS    VARCHAR(20)   NOT NULL DEFAULT '',
	 networkHardware VARCHAR(20)   NOT NULL DEFAULT '',
	 networkMgmt     VARCHAR(20)   NOT NULL DEFAULT '',
	 networkMgmtSerial VARCHAR(20)   NOT NULL DEFAULT '',
	 networkSerial   VARCHAR(20)   NOT NULL DEFAULT '',
	 networkAssettag VARCHAR(20)   NOT NULL DEFAULT '',
	 totalports      INT UNSIGNED  NOT NULL DEFAULT 1,  
     freeports       INT UNSIGNED  NOT NULL DEFAULT 1, 	 
	 supportgroup   VARCHAR(20)   NOT NULL DEFAULT '',
	 serviceDate    VARCHAR(20)   NOT NULL DEFAULT '',
	 decomDate VARCHAR(20)   NOT NULL DEFAULT '',
     PRIMARY KEY (networkID)
     ); 
	 
create database NetworkCCInv; 
CREATE TABLE IF NOT EXISTS NetworkCCTable (
     networkCCID INT UNSIGNED NOT NULL AUTO_INCREMENT,
     siteCode       CHAR(3)       NOT NULL DEFAULT '',    
     countryCode    CHAR(3)   NOT NULL DEFAULT '',
	 regionCode     CHAR(3)   NOT NULL DEFAULT '',
	 datacenter     VARCHAR(30)   NOT NULL DEFAULT '',
	 networkCCtag   VARCHAR(30)   NOT NULL DEFAULT '',
	 linkspeed      VARCHAR(20)   NOT NULL DEFAULT '',
	 fibremode      VARCHAR(20)   NOT NULL DEFAULT '',
	 srcDemark      VARCHAR(20)   NOT NULL DEFAULT '',
	 srcCage        VARCHAR(10)   NOT NULL DEFAULT '',
	 srcCabinet     VARCHAR(20)   NOT NULL DEFAULT '',
	 srcFloor       INT UNSIGNED  NOT NULL DEFAULT 1,
	 srcNameSwitch  VARCHAR(20)   NOT NULL DEFAULT '',
	 srcPort        INT UNSIGNED  NOT NULL DEFAULT 1,
	 dstDemark      VARCHAR(20)   NOT NULL DEFAULT '',
	 dstCabinet     VARCHAR(20)   NOT NULL DEFAULT '',
	 dstFloor       INT UNSIGNED  NOT NULL DEFAULT 1,
	 dstNameSwitch  VARCHAR(20)   NOT NULL DEFAULT '',
	 dstPort        INT UNSIGNED  NOT NULL DEFAULT 1,
	 serviceDate    VARCHAR(20)   NOT NULL DEFAULT '',
	 decomDate VARCHAR(20)   NOT NULL DEFAULT '',
     PRIMARY KEY (networkCCID)
     ); 	 
