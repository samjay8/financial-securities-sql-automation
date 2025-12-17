# financial-securities-sql-automation

**What is this project?**
This project shows how I used SQL Server to automate financial reporting. At Stanbic IBTC, reports were being done manually in Excel, which was slow and had mistakes. I built a system that does the work automatically.

**How I built it**
I wrote three main types of scripts to handle the data:

**The Organizer**: I created tables to hold different types of investments like Bonds and Treasury Bills.

**The Unifier**: I used UNION commands to join all those separate tables into one big "Master List" so the bank could see everything in one place.

**The Analyzer**: I wrote logic to automatically "bucket" the data (e.g., seeing which investments expire in 1 month vs. 5 years) and labeled them as "Long" or "Short" positions.

**The Results**
**Speed**: What took hours now takes seconds.

**Accuracy**: No more "copy-paste" errors from Excel.

Confidentiality: The code here uses dummy data (fake numbers) to show my skills while keeping the bank's real information private.

**Tech I Used**
SQL Server (T-SQL)

**Logic**: Joins, Unions, Case Statements, and Views.
