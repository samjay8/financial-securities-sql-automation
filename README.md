# 📂 ****Financial-Securities-SQL-Automation****

## **📋 Project Overview** 
This project demonstrates the automation of high-frequency financial security reporting. At Stanbic IBTC, legacy workflows relied on manual Excel data consolidation, which was prone to latency and human error. I engineered a SQL Server architecture to centralize data and automate the end-to-end reporting lifecycle.

🛠️ **The Solution**
I developed a modular ETL (Extract, Transform, Load) pipeline to manage the data lifecycle for various financial instruments:

◽ Data Organization Designed structured schemas for multiple investment types, including Bonds, OMO (Open Market Operations), and Treasury Bills (NTB).

◽ Data Integration Leveraged UNION ALL logic to merge fragmented asset tables into a unified "Master View" for a holistic portfolio perspective.

◽ Business Logic Automation 

🔹 Tenor Bucketing: Automated categorization of securities based on maturity dates (e.g., Up to 1 Month, 1–3 Months, 5–7 Years). 

🔹 Position Labeling: Integrated logic to dynamically identify "Long" vs. "Short" positions based on market value. 

🔹 IRT Analysis: Developed views to calculate Interest Rate Tier (IRT) differences and total market exposure.

🚀 **Key Results**
✅ Efficiency Transformed a process that previously required hours of manual consolidation into a script that executes in seconds.

✅ Accuracy Eliminated manual data-entry risks by centralizing transformation logic within the database layer.

✅ Professional Integrity This repository utilizes anonymized dummy data to demonstrate technical architecture while maintaining strict professional confidentiality.

💻 **Technical Stack**
● Database Engine: Microsoft SQL Server (T-SQL) 

● Core Techniques: Table Architecture, Complex Joins, Union Logic, CASE Statements, and Database Views.

📂 **Repository Structure**
📁 01_Setup.sql — Schema creation and mock data insertion scripts.

📁 02_Automation_Logic.sql — Core scripts for data consolidation and business rules. 

📁 03_Reporting_Views.sql — Automated views for risk analysis and end-user reporting.

**Connect with me:**
🔵 [Linkedin](www.linkedin.com/in/samuel-ojetunde)

⭐ [Email](samuelojetunde898@gmail.com)
