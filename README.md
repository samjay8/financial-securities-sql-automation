****Financial Securities Automation (SQL)****

**Project Overview**

This project demonstrates the automation of financial security reporting. At Stanbic IBTC, legacy reporting was performed manually in Excel, a process that was time-consuming and prone to human error. I engineered a SQL Server system to centralize data and automate these workflows.

**The Solution**

I developed a modular pipeline to handle the end-to-end data lifecycle:

**Data Organization:** Designed structured schemas for various investment types including Bonds, OMO, and Treasury Bills (NTB).

**Data Integration:** Utilized UNION ALL logic to merge disparate security tables into a single, unified "Master List" for real-time visibility.

***Business Intelligence:***

**Tenor Bucketing:** Automated the categorization of investments based on maturity (e.g., 1-Month, 3-Month, 1-Year+).

**Position Labeling:** Implemented logic to instantly identify "Long" vs. "Short" positions based on market value.

**Key Results**

🚀 **Efficiency:** Reduced reporting turnaround from hours of manual work to seconds.

🎯 **Accuracy:** Eliminated "copy-paste" errors by centralizing logic within the database.

🔒 **Security: **This repository uses anonymized dummy data to demonstrate technical competence while maintaining strict bank confidentiality.

**Technical Stack**

**Engine:** Microsoft SQL Server (T-SQL)

**Core Concepts:** Joins, Unions, Case Statements, Views, and Date Functions.
