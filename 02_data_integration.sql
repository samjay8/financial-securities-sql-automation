-- Consolidate all securities into one central view
CREATE VIEW vw_Consolidated_Securities AS
SELECT description, face_value, purchase_price, maturity_date, market_value, gain_loss_mtm, 'NTB' AS Asset_Type
FROM Mock_Securities_NTB
UNION ALL
SELECT description, face_value, purchase_price, maturity_date, market_value, gain_loss_mtm, 'Bond' AS Asset_Type
FROM Mock_Securities_Bonds;

-- Add Position Logic (Long vs Short)
CREATE VIEW vw_Securities_Positioning AS
SELECT *,
    DATEDIFF(DAY, GETDATE(), maturity_date) as days_to_maturity,
    CASE 
        WHEN market_value > 0 THEN 'Long' 
        ELSE 'Short' 
    END AS position_status
FROM vw_Consolidated_Securities;
