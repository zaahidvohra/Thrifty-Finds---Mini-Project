create table category(
catid int identity(1,1) primary key,
catname nvarchar(MAX)
)

create table adtype(
typeid int identity(1,1) primary key,
atype nvarchar(MAX),
acat int,
CONSTRAINT [fk_atype_ToCat] FOREIGN KEY ([acat]) REFERENCES [dbo].[category] ([catid])
)

create table ads(
aid int identity(1,1) primary key,
aname nvarchar(MAX),
aprice money,
acategoryid int,
atypeid int,
abrief nvarchar(MAX),
adetail nvarchar(MAX),
nego int,
CONSTRAINT [fk_ads_ToTable0] FOREIGN KEY ([acategoryid]) REFERENCES [dbo].[category] ([catid]),
CONSTRAINT [fk_ads_ToTable1] FOREIGN KEY ([atypeid]) REFERENCES [dbo].[adtype] ([typeid])
)

create table adimages(
imageid int identity(1,1) primary key,
aid int,
name nvarchar(MAX),
extention nvarchar (500),
CONSTRAINT [fk_adimage_ToTable0] FOREIGN KEY ([aid]) REFERENCES [dbo].[ads] ([aid]),
)