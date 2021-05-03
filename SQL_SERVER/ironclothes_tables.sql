CREATE TABLE [client] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [nombre] nvarchar(255) NOT NULL,
  [phone] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [users] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255) NOT NULL,
  [type] nvarchar(255) NOT NULL,
  [pswd] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [garment] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255) NOT NULL,
  [rate] float NOT NULL
)
GO

CREATE TABLE [job] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] nvarchar(255) NOT NULL,
  [rate] float NOT NULL
)
GO

CREATE TABLE [orders] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [user_id] int NOT NULL,
  [client_id] int NOT NULL,
  [type] nvarchar(255) NOT NULL,
  [in_date] datetime NOT NULL,
  [out_date] datetime,
  [status] nvarchar(255) NOT NULL
)
GO

CREATE TABLE [order_detail] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [order_id] int NOT NULL,
  [job_id] int NOT NULL,
  [garment_id] int NOT NULL,
  [qty] int NOT NULL,
  [garment_status] nvarchar(255)
)
GO

CREATE TABLE [time_stamps] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [user_id] int NOT NULL,
  [clock_in] datetime NOT NULL,
  [clock_out] datetime
)
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([user_id]) REFERENCES [users] ([id])
GO

ALTER TABLE [orders] ADD FOREIGN KEY ([client_id]) REFERENCES [client] ([id])
GO

ALTER TABLE [order_detail] ADD FOREIGN KEY ([order_id]) REFERENCES [orders] ([id])
GO

ALTER TABLE [order_detail] ADD FOREIGN KEY ([job_id]) REFERENCES [job] ([id])
GO

ALTER TABLE [order_detail] ADD FOREIGN KEY ([garment_id]) REFERENCES [garment] ([id])
GO

ALTER TABLE [time_stamps] ADD FOREIGN KEY ([user_id]) REFERENCES [users] ([id])
GO
