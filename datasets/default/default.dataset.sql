BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"AccountNumber" VARCHAR(255), 
	"AccountSource" VARCHAR(255), 
	"AnnualRevenue" VARCHAR(255), 
	"BillingCity" VARCHAR(255), 
	"BillingCountry" VARCHAR(255), 
	"BillingGeocodeAccuracy" VARCHAR(255), 
	"BillingLatitude" VARCHAR(255), 
	"BillingLongitude" VARCHAR(255), 
	"BillingPostalCode" VARCHAR(255), 
	"BillingState" VARCHAR(255), 
	"BillingStreet" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Fax" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"Jigsaw" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"NumberOfEmployees" VARCHAR(255), 
	"Ownership" VARCHAR(255), 
	"Phone" VARCHAR(255), 
	"Rating" VARCHAR(255), 
	"ShippingCity" VARCHAR(255), 
	"ShippingCountry" VARCHAR(255), 
	"ShippingGeocodeAccuracy" VARCHAR(255), 
	"ShippingLatitude" VARCHAR(255), 
	"ShippingLongitude" VARCHAR(255), 
	"ShippingPostalCode" VARCHAR(255), 
	"ShippingState" VARCHAR(255), 
	"ShippingStreet" VARCHAR(255), 
	"Sic" VARCHAR(255), 
	"SicDesc" VARCHAR(255), 
	"Site" VARCHAR(255), 
	"TickerSymbol" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Website" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'','','100000000.0','New York','USA','','','','31349','NY','10 Main Rd.','','(212) 555-5555','Manufacturing','','Acme','680','','(212) 555-5555','','New York','USA','','','','31349','NY','10 Main Rd.','','','','','Prospect','');
INSERT INTO "Account" VALUES(2,'','','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','Founded in March 1999, salesforce.com (http://www.salesforce.com) builds and delivers customer relationship management (CRM) applications as scalable online services. The salesforce.com product suite - Team Edition, Professional Edition, Enterprise Edition, Wireless Edition and Offline Edition - gives companies of all sizes a complete 360-degree view of the customer. The company''s award-winning CRM solutions provide integrated online sales force automation, customer service and support management, and marketing automation applications to help companies meet the complex challenges of global customer communication. Salesforce.com has received considerable recognition in the industry, including Editors'' Choice and two Five-Star ratings from PC Magazine, two Deploy Awards from InfoWorld, Red Herring 100, Upside Hot 100, Investor''s Choice Award from Enterprise Outlook, Editors'' Choice from TMCLabs, Top 10 CRM Implementation from Aberdeen Group, and InfoWorld''s 2001 CRM Technology of the Year. Founded in 1999, salesforce.com is headquartered in San Francisco, with offices in Europe and Asia.','(415) 901-7040','Technology','','salesforce.com','','','(415) 901-7000','','San Francisco','USA','','','','94105','CA','The Landmark @ One Market, Suite 300','','','','','Customer','http://www.salesforce.com');
INSERT INTO "Account" VALUES(3,'','','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','GBM is the worldwide leader in technology news and information on the Web and the producer of the longest-running and farthest-reaching television shows about technology. GBM''s network of sites combines breakthrough interactive technology with engaging content and design and is consistently ranked as the Internet''s leading content network in terms of both audience size and revenue, serving millions of users each day. The company''s television programming is broadcast by the USA Network and the Sci-Fi Channel to more than 70 million households and is syndicated to broadcast television stations in the nation''s top 120 markets, including the top 10 markets.','','Media','','Global Media','14668','','(905) 555-1212','','Toronto','Canada','','','','L4B 1Y3','Ontario','150 Chestnut Street','','','','','Prospect','');
CREATE TABLE "Campaign" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "Event" (
	id INTEGER NOT NULL, 
	"IsAllDayEvent" VARCHAR(255), 
	"IsRecurrence" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ActivityDate" VARCHAR(255), 
	"ActivityDateTime" VARCHAR(255), 
	"DurationInMinutes" VARCHAR(255), 
	"EndDateTime" VARCHAR(255), 
	"EventSubtype" VARCHAR(255), 
	"Location" VARCHAR(255), 
	"IsPrivate" VARCHAR(255), 
	"RecurrenceDayOfMonth" VARCHAR(255), 
	"RecurrenceDayOfWeekMask" VARCHAR(255), 
	"RecurrenceEndDateOnly" VARCHAR(255), 
	"RecurrenceInstance" VARCHAR(255), 
	"RecurrenceInterval" VARCHAR(255), 
	"RecurrenceMonthOfYear" VARCHAR(255), 
	"Recurrence2PatternText" VARCHAR(255), 
	"RecurrenceStartDateTime" VARCHAR(255), 
	"RecurrenceTimeZoneSidKey" VARCHAR(255), 
	"RecurrenceType" VARCHAR(255), 
	"ReminderDateTime" VARCHAR(255), 
	"IsReminderSet" VARCHAR(255), 
	"ShowAs" VARCHAR(255), 
	"StartDateTime" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Event" VALUES(1,'True','False','','2023-04-28','','4320','2023-04-30T00:00:00.000+0000','Event','','False','','','','','','','','','','','','False','Busy','2023-04-28T00:00:00.000+0000','Labour Day Long Weekend');
INSERT INTO "Event" VALUES(2,'True','False','','2023-07-01','','11520','2023-07-08T00:00:00.000+0000','Event','','False','','','','','','','','','','','','False','Busy','2023-07-01T00:00:00.000+0000','Fourth Of July');
CREATE TABLE "JournalSubType" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"JournalTypeId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "JournalSubType" VALUES(1,'Purchase','5');
INSERT INTO "JournalSubType" VALUES(2,'Member Enrollment','5');
INSERT INTO "JournalSubType" VALUES(3,'Member Referral','5');
CREATE TABLE "JournalType" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "JournalType" VALUES(1,'Qualifying Points Reset');
INSERT INTO "JournalType" VALUES(2,'Points Expiration');
INSERT INTO "JournalType" VALUES(3,'Manual Points Adjustment');
INSERT INTO "JournalType" VALUES(4,'Accrual Reversal');
INSERT INTO "JournalType" VALUES(5,'Accrual');
INSERT INTO "JournalType" VALUES(6,'Redemption');
INSERT INTO "JournalType" VALUES(7,'Redemption Reversal');
CREATE TABLE "LoyaltyPgmEngmtAttrProm" (
	id INTEGER NOT NULL, 
	"LoyaltyProgramEngmtAttrId" VARCHAR(255), 
	"PromotionId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyPgmEngmtAttrProm" VALUES(1,'1','2');
INSERT INTO "LoyaltyPgmEngmtAttrProm" VALUES(2,'2','2');
CREATE TABLE "LoyaltyPgmEngmtAttribute" (
	id INTEGER NOT NULL, 
	"DefaultValue" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"MaximumResetCountPerPeriod" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ShouldOverwriteAttrCurrVal" VARCHAR(255), 
	"ResetValueOn" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TargetValue" VARCHAR(255), 
	"ValueResetFrequency" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyPgmEngmtAttribute" VALUES(1,'0','Used to track whether a member has reached the voucher issue limit of 1, after which the Birthday Promotion promotion is no longer applied to the member.','','1','Track Issue Voucher Limit for 0lg0u000000001J Tier Members of 0lt0u0000000019 Tier Group Eligible for 0c80u0000004CBP Promotion','True','','2023-04-01','Active','1.0','','1');
INSERT INTO "LoyaltyPgmEngmtAttribute" VALUES(2,'0','Used to track whether a member has reached the voucher issue limit of 1, after which the Birthday Promotion promotion is no longer applied to the member.','','1','Track Issue Voucher Limit for 0lg0u000000001O Tier Members of 0lt0u0000000019 Tier Group Eligible for 0c80u0000004CBP Promotion','True','','2023-04-01','Active','1.0','','1');
CREATE TABLE "LoyaltyProgram" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"EscrowPeriod" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgram" VALUES(1,'','','True','NTO Insider','Active');
CREATE TABLE "LoyaltyProgramCurrency" (
	id INTEGER NOT NULL, 
	"CostperUnit" VARCHAR(255), 
	"CurrencyType" VARCHAR(255), 
	"ExpiryModel" VARCHAR(255), 
	"ExpiryPeriodFrequency" VARCHAR(255), 
	"ExpiryPeriodUnit" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"HasEscrow" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramCurrency" VALUES(1,'0.05','NonQualifying','Fixed','2','Years','None','False','True','True','Points','1');
INSERT INTO "LoyaltyProgramCurrency" VALUES(2,'','Qualifying','','','','','False','True','False','Tier Points','1');
CREATE TABLE "LoyaltyProgramProcess" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"ExecutionType" VARCHAR(255), 
	"ProcessType" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"JournalSubTypeId" VARCHAR(255), 
	"JournalTypeId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramProcess" VALUES(1,'','Process for Accruals with Purchase Journal Subtype','RealTime','TransactionJournal','Active','1','5','1');
CREATE TABLE "LoyaltyTier" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"SequenceNumber" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTier" VALUES(1,'','30','Silver','1');
INSERT INTO "LoyaltyTier" VALUES(2,'','20','Gold','1');
INSERT INTO "LoyaltyTier" VALUES(3,'','10','Platinum','1');
CREATE TABLE "LoyaltyTierGroup" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"IsHiddenToMembers" VARCHAR(255), 
	"TierPeriodUnit" VARCHAR(255), 
	"TierPeriodQuantity" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"QpResetDate" VARCHAR(255), 
	"QpResetFrequency" VARCHAR(255), 
	"QpResetPeriod" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"TierModel" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierGroup" VALUES(1,'True','','None','False','Years','1','True','2023-12-31','1','Years','Status Tier Group','Fixed','1');
CREATE TABLE "Promotion" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"CumulativeUsageTarget" VARCHAR(255), 
	"CurrentLiabilityAmount" VARCHAR(255), 
	"CurrentPointCount" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"EnrollmentEndDate" VARCHAR(255), 
	"IsEnrollmentRequired" VARCHAR(255), 
	"EnrollmentStartDate" VARCHAR(255), 
	"FulfillmentAction" VARCHAR(255), 
	"IssuedVoucherCount" VARCHAR(255), 
	"LoyaltyPromotionType" VARCHAR(255), 
	"MaximumLiabilityAmount" VARCHAR(255), 
	"MaximumRewardValue" VARCHAR(255), 
	"MaximumVoucherCount" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Objective" VARCHAR(255), 
	"PointFactor" VARCHAR(255), 
	"IsPointsWithFactor" VARCHAR(255), 
	"TotalRewardPoints" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TransactionJournalType" VARCHAR(255), 
	"CampaignId" VARCHAR(255), 
	"DefaultVoucherDefinitionId" VARCHAR(255), 
	"LoyaltyProgramCurrencyId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Promotion" VALUES(1,'True','','','','','2023-06-30','2023-06-01','True','2023-05-01','','','Standard','','','','Summer Sale Promotion','To drive sales during peak summer season on apparel','','False','','2023-05-15','','Accrual','','','','1');
INSERT INTO "Promotion" VALUES(2,'True','','','','','','','False','','','','Standard','','','','Birthday Promotion','','','False','','2023-04-01','','Accrual','','','','1');
CREATE TABLE "VoucherDefinition" (
	id INTEGER NOT NULL, 
	"CostPerVoucher" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DiscountPercent" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"ExpirationPeriod" VARCHAR(255), 
	"ExpirationPeriodUnit" VARCHAR(255), 
	"ExpirationType" VARCHAR(255), 
	"FaceValue" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsPartialRedeemable" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"PartnerAccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "VoucherDefinition" VALUES(1,'1.1','','10','2023-04-01','','2','Months','Period','','True','False','10% Discount On Apparel','DiscountPercentage','1','');
INSERT INTO "VoucherDefinition" VALUES(2,'1.0','','15','2023-04-01','','2','Months','Period','','True','False','15% Discount On Apparel','DiscountPercentage','1','');
COMMIT;
