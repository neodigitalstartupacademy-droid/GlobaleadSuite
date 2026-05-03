CREATE TABLE affiliates (
  id UUID PRIMARY KEY,
  name TEXT,
  whatsapp TEXT,
  refCode TEXT UNIQUE,
  sponsorId UUID,
  plan TEXT,
  isActive BOOLEAN DEFAULT true,
  createdAt TIMESTAMP DEFAULT NOW()
);

CREATE TABLE leads (
  id UUID PRIMARY KEY,
  name TEXT,
  whatsapp TEXT,
  healthIssue TEXT,
  affiliateId UUID,
  status TEXT,
  createdAt TIMESTAMP DEFAULT NOW()
);

CREATE TABLE commissions (
  id UUID PRIMARY KEY,
  affiliateId UUID,
  amount NUMERIC,
  level INT,
  status TEXT,
  createdAt TIMESTAMP DEFAULT NOW()
);
