USE BITools
GO

-----------------------------------------------------------------------------------------------------------------------


CREATE TABLE dbo.PowerShell_PBIDataset
(
	WorkspaceId VARCHAR(40) NULL,
	Id VARCHAR(40) NULL,
	[Name] VARCHAR(200) NULL,
	ConfiguredBy VARCHAR(200) NULL,
	DefaultRetentionPolicy VARCHAR(100) NULL,
	AddRowsApiEnabled BIT NULL,
	[Tables] VARCHAR(1000) NULL,
	WebUrl VARCHAR(1000) NULL,
	Relationships VARCHAR(1000) NULL,
	Datasources VARCHAR(1000) NULL,
	DefaultMode VARCHAR(1000) NULL,
	IsRefreshable BIT NULL,
	IsEffectiveIdentityRequired BIT NULL,
	IsEffectiveIdentityRolesRequired BIT NULL,
	IsOnPremGatewayRequired BIT NULL
) 
GO

-----------------------------------------------------------------------------------------------------------------------


CREATE TABLE dbo.PowerShell_PBIDatasource
(
	WorkspaceId VARCHAR(40) NULL,
	DatasetId VARCHAR(40) NULL,
	[Name] VARCHAR(200) NULL,
	ConnectionString VARCHAR(1000) NULL,
	DatasourceType VARCHAR(50) NULL,
	ConnectionDetails VARCHAR(200) NULL,
	GatewayId VARCHAR(40) NULL,
	DatasourceId VARCHAR(40) NULL
) 
GO


-----------------------------------------------------------------------------------------------------------------------


CREATE TABLE dbo.PowerShell_PBIReport
(
	WorkspaceId VARCHAR(40) NULL,
	Id VARCHAR(40) NULL,
	[Name] VARCHAR(200) NULL,
	WebUrl VARCHAR(1000) NULL,
	EmbedUrl VARCHAR(1000) NULL,
	DatasetId VARCHAR(40) NULL
) 
GO


-----------------------------------------------------------------------------------------------------------------------


CREATE TABLE dbo.PowerShell_PBIWorkspace
(
	ID VARCHAR(40) NULL,
	[Name] VARCHAR(200) NULL,
	IsReadOnly BIT NULL,
	IsOnDedicatedCapacity BIT NULL,
	CapacityID VARCHAR(40) NULL,
	[Description] VARCHAR(1000) NULL,
	[Type] VARCHAR(500) NULL,
	[State] VARCHAR(500) NULL,
	IsOrphaned BIT NULL,
	Users VARCHAR(500) NULL
) 
GO
