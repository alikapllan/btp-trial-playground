# Side-by-Side RAP on SAP BTP ABAP (Trial) – Sales Orders & Item

This repository is a small hands-on project where I explored **side-by-side development** in the **SAP BTP ABAP Environment (Trial)** by consuming data via **standard SAP APIs**.

## App Demo 
https://github.com/user-attachments/assets/91a61db2-eef4-4c01-8bf3-5cf6d4bffb29

## Motivation & Key Realization

Initially, my plan was simple:

- Connect **BTP ABAP** to an **on-premise** SAP system via **SAP Cloud Connector**
- Create a destination
- Consume on-prem OData APIs from ABAP in the cloud

But during implementation I learned that **SAP BTP ABAP Trial** is limited in a way that prevents setting up custom **Communication Scenarios / Communication Arrangements** as you would in a productive tenant. Because of that, my “connect trial → on-prem → call standard APIs” approach was not feasible.  
SAP documents this trial limitation here:  
- https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-call-a-remote-odata-service-from-the-trial-version-of-sap-cloud/ba-p/13411535

The good news: SAP still provides **pre-delivered communication content** for hands-on exercises in the trial tenant. I found a blog post by [André Fischer](https://www.linkedin.com/in/anfisc/) explaining that SAP published **two ready-to-use APIs** in the BTP ABAP Trial for learning purposes, including:
- **Sales Order (A2X) API** with **Read + Create**
- **Product Master Data incl. Classification** with **Read**

This was exactly what I needed, and it allowed me to proceed with a realistic side-by-side scenario without persisting data in BTP:  
- https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-build-side-by-side-extensions-for-sap-s-4hana-public-cloud-with-sap/ba-p/14235644

---

## What This App Covers

### 1) Custom Entities with Parent–Child Relationship
- Implemented a **[header](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.ddls.asddls#L25) → [item](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_item_ahk.ddls.asddls#L20)** model via **custom entities**
- Built navigation-like behavior between parent and child using **[unmanaged](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.bdef.asbdef) [query implementation](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.ddls.asddls#L5-L6)**

### 2) Remote API Consumption in Unmanaged Query Implementations
- see for example the Class **[zcl_ce_sales_order_ahk](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zcl_ce_sales_order_ahk.clas.abap#L71-L159)** that is used to fetch all sales orders.
- Calling remote OData services via:
  - **Communication Scenario & Communication Arrangement**
  - **Client Proxy for OData Consumption** (`/IWBEP/IF_CP_CLIENT_PROXY`)
- Implemented paging and sorting support (query “coverage”) so the UI behaves correctly

### 3) Static Action with Parameters to Create a Sales Order (Header + 1 Item)
- Implemented a **[static action](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.bdef.asbdef#L15)** with [popup parameters](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.bdef.asbdef#L16) to create a sales order
  - [Abstract Entity Z_I_SALES_ORDER_CREATE_ACT](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/z_i_sales_order_create_act.ddls.asddls) defining the parameters. To make some of its field as mandatory needs to created as **root abstract entity**, after this we are allowed to create a Behavior Definition of this abstract entity.
- Covered typical RAP action topics:
  - **[Default values (default function GetDefaultsForPopup)](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.bdef.asbdef#L16)** for popup parameters
  - **[Mandatory fields](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/z_i_sales_order_create_act.bdef.asbdef#L6-L15)** on popup input
  - Returning UI messages using **REPORTED/FAILED**

**Deep Create**
- [Creation](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zbp_ce_sales_order_ahk.clas.locals_imp.abap#L75-L142) is done via the **Sales Order API** using a [deep create](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zbp_ce_sales_order_ahk.clas.locals_imp.abap#L185-L224) [payload](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zbp_ce_sales_order_ahk.clas.locals_imp.abap#L166-L183):
  - Header + `TO_ITEM`
- Learned how to build and send deep structures, including describing the payload with a **data description node** (selecting the transferred properties)

### 4) Value Helps using Custom Entities (Unmanaged Queries)
Value helps were implemented using custom entities & query providers:
- Value help for **[Sales Order search](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.ddls.asddls#L9-L10)** field
- Value help for **[Material](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/z_i_sales_order_create_act.ddls.asddls#L37-L40)** input field in the action popup
  - `useForValidation: true` validates whether the given input as material really exists. If not it warns you on UI <img width="431" height="111" alt="image" src="https://github.com/user-attachments/assets/8c313f7c-ace9-4212-b9d9-f2817e4583ad" />
 

### Metadata Extensions
- **[ZCE_SALES_ORDER_AHK](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_ahk.ddlx.asddlxs#L1-L75)**
- **[ZCE_SALES_ORDER_ITEM_AHK](https://github.com/alikapllan/btp-abap-env-sales-order-app-side-by-side/blob/main/src/zahk_btp_side_by_side/zce_sales_order_item_ahk.ddlx.asddlxs#L1-L38)**

Normally, I would prefer `API_PRODUCT_SRV`, but it is not available in the BTP ABAP Trial setup.  
Therefore, I used **Product Master Data incl. Classification** to retrieve product/material data.

Notes:
- I enforced a filter `Plant = 1710` because test/demo data in the trial tenant is typically maintained for that plant (and I wanted deterministic results).

Helpful test classes in the trial BTP ABAP Environment mentioned by [André Fischer](https://www.linkedin.com/in/anfisc/) :
- `ZCL_TEST_API_SALES_ORDER_SRV`
- `ZSC_TEST_API_CLFN_PRODUCT_SRV`

---

## Conclusion

This project was a valuable hands-on exercise to understand how **side-by-side ABAP on BTP** works in practice:

- The app **reads and creates business objects remotely** via standard APIs
- It **stores no data in BTP**, which keeps the extension lightweight and flexible
- It demonstrates a realistic RAP scenario: custom entities, value helps, actions, and UI messaging

---

## Helpful Sources

- Side-by-side extension in BTP ABAP Trial (André Fischer):
  - https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-build-side-by-side-extensions-for-sap-s-4hana-public-cloud-with-sap/ba-p/14235644
- Trial limitation for remote OData consumption:
  - https://community.sap.com/t5/technology-blog-posts-by-sap/how-to-call-a-remote-odata-service-from-the-trial-version-of-sap-cloud/ba-p/13411535
- RAP popup defaults:
  - https://software-heroes.com/en/blog/abap-rap-popup-default-values
- RAP popup mandatory fields:
  - https://software-heroes.com/en/blog/abap-rap-popup-mandatory-fields
- Quick community inspiration, parent-child relation on custom entities:
  - https://www.linkedin.com/posts/dinesh-m-207b3a142_custom-entity-activity-7364724196003753984-G7rJ/
- Learning Journey: **RFC: Get Data from an On-Premise System Using a Custom Entity**
  - https://developers.sap.com/tutorials/abap-environment-rfc-custom-entity.html
- Learning Journey : **Develop extensions for SAP S/4HANA with SAP BTP, ABAP Environment, runtime**
  - https://discovery-center.cloud.sap/missiondetail/3248/3277/  

---

## APIs Used

- [Product Master Data incl. Classification](https://api.sap.com/api/API_CLFN_PRODUCT_SRV/overview) (read):
- [Sales Order (A2X) API](https://api.sap.com/api/API_SALES_ORDER_SRV/overview) (read + create)  
  *(consumed in this project via the delivered communication setup in the BTP ABAP Trial)*
  - (API hub reference depends on the exact service/version used in your trial tenant)

---

## Notes / Limitations (Trial Tenant)

- You cannot freely create your own communication content in trial as you would in productive BTP ABAP.
- The trial is best used for learning with the **pre-delivered APIs and arrangements** provided by SAP.
