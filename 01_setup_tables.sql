-- Create Table for Treasury Bills (NTB)
CREATE TABLE Mock_Securities_NTB (
    instrument_id INT IDENTITY(1,1) PRIMARY KEY,
    description VARCHAR(100) NOT NULL,
    face_value DECIMAL(20, 2),
    purchase_price DECIMAL(20, 2),
    maturity_date DATE,
    market_value DECIMAL(20, 2),
    gain_loss_mtm DECIMAL(20, 2)
);

-- Insert Dummy Data for NTB
INSERT INTO Mock_Securities_NTB (description, face_value, purchase_price, maturity_date, market_value, gain_loss_mtm)
VALUES 
('Sample_NTB_2026_A', 5000000.00, 4800000.00, '2026-03-26', 4850000.00, 50000.00),
('Sample_NTB_2025_B', 2000000.00, 1950000.00, '2025-12-15', 1940000.00, -10000.00);

-- Create Table for Government Bonds
CREATE TABLE Mock_Securities_Bonds (
    instrument_id INT IDENTITY(1,1) PRIMARY KEY,
    description VARCHAR(100) NOT NULL,
    face_value DECIMAL(20, 2),
    purchase_price DECIMAL(20, 2),
    maturity_date DATE,
    market_value DECIMAL(20, 2),
    gain_loss_mtm DECIMAL(20, 2)
);

-- Insert Dummy Data for Bonds
INSERT INTO Mock_Securities_Bonds (description, face_value, purchase_price, maturity_date, market_value, gain_loss_mtm)
VALUES 
('Mock_FGN_BOND_2033', 10000000.00, 9500000.00, '2033-06-21', 9800000.00, 300000.00);
