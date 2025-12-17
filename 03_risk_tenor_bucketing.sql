-- Create View for Risk Analysis (Tenor Bucketing)
CREATE VIEW vw_Risk_Tenor_Analysis AS
SELECT 
    description,
    Asset_Type,
    market_value,
    CASE
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 30 THEN 'Up to 1 Month'
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 90 THEN '1-3 Months'
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 365 THEN '6-12 Months'
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 1825 THEN '1-5 Years'
        ELSE 'Over 5 Years'
    END AS tenor_bucket,
    CASE
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 30 THEN 1
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 90 THEN 2
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 365 THEN 3
        WHEN DATEDIFF(DAY, GETDATE(), maturity_date) <= 1825 THEN 4
        ELSE 5
    END AS tenor_rank
FROM vw_Consolidated_Securities;

-- Final Summary Report
CREATE VIEW vw_Final_Security_Summary AS
SELECT 
    tenor_bucket,
    SUM(market_value) as total_exposure,
    COUNT(*) as total_instruments
FROM vw_Risk_Tenor_Analysis
GROUP BY tenor_rank, tenor_bucket;
