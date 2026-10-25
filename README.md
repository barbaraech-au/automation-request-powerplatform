## Business Problem & Solution

### The Challenge
Prior to implementing this portal, automation requests were handled through informal channels (emails, chat messages, ad-hoc meetings), leading to:
* **Lack of Governance:** No centralized tracking or standardized approval workflows.
* **Invisible ROI:** Inability to quantify potential manual hours saved per business unit.
* **Data Quality Issues:** Inconsistent department naming (e.g., *"IT"*, *"Tech"*, *"Information Technology"*) breaking reporting accuracy.
* **Poor Stakeholder Communication:** No automated status visibility for requestors.

### The Solution
An **End-to-End Governance Framework** that standardizes request intake, automates review communications, and delivers executive insights:

1. **Power Apps (Intake UI):** User-friendly form with dynamic department logic (`OtherDepartment` fallback) to maintain data hygiene.
2. **SharePoint Online (Data Layer):** Structured repository acting as a single source of truth (`Automation_Request_Portal`).
3. **Power Automate (Governance Engine):** Automated workflow dispatching branded HTML status updates upon record creation or modification.
4. **Power BI (Executive Analytics):** Power Query ETL pipeline (`Department Clean`) and custom DAX measures for real-time ROI tracking.

---

## Business Impact & Key Metrics

* **Potential Manual Hours Evaluated:** **2,170 hours/year** identified across initial submissions.
* **Approved High-Impact Initiatives:** **3 core projects approved** (*Vendor Invoice RPA*, *Logistics Tracking Sync*, *IT Access Request Script*), unlocking **1,120 hours/year** in immediate manual effort reduction.
* **100% Communication Automation:** Fully automated status notification pipeline eliminating administrative follow-up overhead.
* **100% Data Cleanliness:** Seamless dynamic transformation of non-standard department entries via Power Query M.

---

## Technology Stack Summary

| Layer | Technology | Primary Function |
| :--- | :--- | :--- |
| **Frontend** | Power Apps (Canvas) | Form intake, user validation & dynamic UI logic |
| **Backend / DB** | SharePoint Online | Data repository & schema storage |
| **Automation** | Power Automate | Event-driven trigger engine & HTML email dispatch |
| **Analytics** | Power BI | Data modeling, DAX measures & executive visualization |
| **ETL / Language**| Power Query (M), DAX, HTML/CSS | Data transformation, KPI calculations & email design |
