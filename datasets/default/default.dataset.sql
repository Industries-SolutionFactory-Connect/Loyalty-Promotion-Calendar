BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Acme');
INSERT INTO "Account" VALUES(2,'salesforce.com');
INSERT INTO "Account" VALUES(3,'Global Media');
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
	"Type" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgram" VALUES(1,'','','True','NTO Insider','Active','LOYALTY_PROGRAM');
CREATE TABLE "LoyaltyProgramCurrency" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"CostperUnit" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"CurrencyType" VARCHAR(255), 
	"ExpiryPeriodFrequency" VARCHAR(255), 
	"ExpiryPeriodUnit" VARCHAR(255), 
	"ExpiryModel" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"HasEscrow" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyProgramCurrency" VALUES(1,'True','0.05','Points','NonQualifying','2','Years','Fixed','None','False','True','1','');
INSERT INTO "LoyaltyProgramCurrency" VALUES(2,'True','','Tier Points','Qualifying','','','','','False','False','1','1');
CREATE TABLE "LoyaltyTier" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"MaximumEligibleBalance" VARCHAR(255), 
	"MinimumEligibleBalance" VARCHAR(255), 
	"SequenceNumber" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"LoyaltyTierGroupId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTier" VALUES(1,'','','','30','Silver','1');
INSERT INTO "LoyaltyTier" VALUES(2,'','','','20','Gold','1');
INSERT INTO "LoyaltyTier" VALUES(3,'','','','10','Platinum','1');
CREATE TABLE "LoyaltyTierGroup" (
	id INTEGER NOT NULL, 
	"Description" VARCHAR(255), 
	"ExtendExpiration" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsHiddenToMembers" VARCHAR(255), 
	"IsPrimary" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"QpResetDate" VARCHAR(255), 
	"QpResetFrequency" VARCHAR(255), 
	"QpResetPeriod" VARCHAR(255), 
	"TierModel" VARCHAR(255), 
	"TierPeriodQuantity" VARCHAR(255), 
	"TierPeriodUnit" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"TierAssessmentCurrencyId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "LoyaltyTierGroup" VALUES(1,'','None','True','False','True','Status Tier Group','2023-12-31','1','Years','Fixed','1','Years','1','');
CREATE TABLE "Promotion" (
	id INTEGER NOT NULL, 
	"CumulativeUsageTarget" VARCHAR(255), 
	"CurrentLiabilityAmount" VARCHAR(255), 
	"CurrentPointCount" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"EnrollmentEndDate" VARCHAR(255), 
	"EnrollmentStartDate" VARCHAR(255), 
	"FulfillmentAction" VARCHAR(255), 
	"ImageUrl" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsEnrollmentRequired" VARCHAR(255), 
	"IsPointsWithFactor" VARCHAR(255), 
	"IsQuickPromotion" VARCHAR(255), 
	"IssuedVoucherCount" VARCHAR(255), 
	"LoyaltyPromotionType" VARCHAR(255), 
	"MaximumLiabilityAmount" VARCHAR(255), 
	"MaximumRewardValue" VARCHAR(255), 
	"MaximumVoucherCount" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Objective" VARCHAR(255), 
	"PointFactor" VARCHAR(255), 
	"PromotionConfiguration" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"TotalRewardPoints" VARCHAR(255), 
	"TransactionJournalType" VARCHAR(255), 
	"CampaignId" VARCHAR(255), 
	"DefaultVoucherDefinitionId" VARCHAR(255), 
	"LoyaltyProgramCurrencyId" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Promotion" VALUES(1,'','','','','2023-06-30','2023-06-01','2023-05-01','','','True','True','False','True','','Standard','','','','Summer Sale Promotion','To drive sales during peak summer season on apparel','','{"criteria":[{"eligibilityType":"TransactionEligibility","active":true,"type":"PurchaseAmount","purchaseAmount":100.0}],"rewards":[{"rewardType":"MultiplierPoints","tierBased":false,"pointsRewards":[{"sequence":1,"currency":"Points","multiplierType":"TransactionAmount","multiplier":1.5}]}],"journalSubType":"Purchase","draftState":"4"}','2023-05-15','','','Accrual','','','','1');
INSERT INTO "Promotion" VALUES(2,'','','','','','','','','','True','False','False','True','','Standard','','','','Birthday Promotion','','','{"criteria":[{"eligibilityType":"TransactionEligibility","active":true,"type":"PurchaseAmount","purchaseAmount":50.0},{"eligibilityType":"MemberEligibility","active":true,"type":"Tier","tierGroup":"Status Tier Group","tier":"Gold"},{"eligibilityType":"MemberEligibility","active":true,"type":"Tier","tierGroup":"Status Tier Group","tier":"Platinum"},{"eligibilityType":"MemberEventEligibility","active":true,"memberEventType":"birthday","memberEventPeriod":"Week"}],"rewards":[{"rewardType":"Vouchers","activityLimit":1,"tierBased":true,"voucherRewards":[{"tierGroup":"Status Tier Group","tier":"Platinum","sequence":1,"loyaltyPgmEngmtAttrName":"Track Issue Voucher Limit for 0lg0u000000001J Tier Members of 0lt0u0000000019 Tier Group Eligible for 0c80u0000004CBP Promotion","voucherDefinition":"15% Discount On Apparel"},{"tierGroup":"Status Tier Group","tier":"Gold","sequence":2,"loyaltyPgmEngmtAttrName":"Track Issue Voucher Limit for 0lg0u000000001O Tier Members of 0lt0u0000000019 Tier Group Eligible for 0c80u0000004CBP Promotion","voucherDefinition":"10% Discount On Apparel"}]}],"journalSubType":"Purchase","draftState":"4"}','2023-04-01','','','Accrual','','','','1');
CREATE TABLE "VoucherDefinition" (
	id INTEGER NOT NULL, 
	"AutogeneratedCodeLength" VARCHAR(255), 
	"CodePrefix" VARCHAR(255), 
	"CodeSuffix" VARCHAR(255), 
	"CostPerVoucher" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"DiscountPercent" VARCHAR(255), 
	"EffectiveDate" VARCHAR(255), 
	"ExpirationDate" VARCHAR(255), 
	"ExpirationPeriod" VARCHAR(255), 
	"ExpirationPeriodUnit" VARCHAR(255), 
	"ExpirationType" VARCHAR(255), 
	"FaceValue" VARCHAR(255), 
	"ImageUrl" VARCHAR(255), 
	"IsActive" VARCHAR(255), 
	"IsPartialRedeemable" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"LoyaltyProgramId" VARCHAR(255), 
	"PartnerAccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "VoucherDefinition" VALUES(1,'','','','1.1','','10','2023-04-01','','2','Months','Period','','','True','False','10% Discount On Apparel','DiscountPercentage','1','');
INSERT INTO "VoucherDefinition" VALUES(2,'','','','1.0','','15','2023-04-01','','2','Months','Period','','','True','False','15% Discount On Apparel','DiscountPercentage','1','');
COMMIT;
