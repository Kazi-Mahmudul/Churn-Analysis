# 📊 Telco Customer Churn Analysis - End-to-End Data Science & BI Project

## 🚀 Project Overview
This project analyzes customer churn in a telecom company using **SQL, Python, Machine Learning, and Power BI**. The goal is to identify factors influencing churn and build a **predictive model**, followed by an **interactive Power BI dashboard** for business insights.

🔗 **Dataset Source:** [Kaggle - Telco Customer Churn](https://www.kaggle.com/datasets/yeanzc/telco-customer-churn-ibm-dataset)

---

## 🛠 Tools & Technologies Used
- **Database & SQL** → MySQL (Data Cleaning, Exploratory Data Analysis - EDA)
- **Programming & ML** → Python (Feature Engineering, Model Training, Evaluation)
- **Business Intelligence** → Power BI (Data Visualization, DAX, Power Query)

---

## 📌 Project Workflow

### **1️⃣ Data Collection**
- Downloaded the dataset from **Kaggle**.
- Imported it into **MySQL Workbench** for structured data analysis.

### **2️⃣ SQL Analysis & Exploratory Data Analysis (EDA)**
- Loaded data into **MySQL**.
- Checked for **missing values**, **duplicates**, and **outliers**.
- Conducted **EDA using SQL queries**:
  - Churn rate calculation.
  - Customer tenure & billing trends.
  - Churn trends by contract type, payment method, and services used.

### **3️⃣ Python - Exploratory Data Analysis (EDA), Feature Engineering & Machine Learning**
- **Connected MySQL with Python** using `mysql.connector`.  
- **Performed EDA with Visualizations:**
  - **Plotted Histograms** for:
    - `Tenure_Months`
    - `Monthly_Charge`
    - `Total_Charges`
  - **Computed Correlation Matrix** and visualized with a **Heatmap**.
  - **Plotted Countplots** for categorical features.
  - **Boxplots** to analyze outliers in `Monthly_Charge` and `Total_Charges`.

- **Feature Engineering:**
  - Encoded categorical variables (**One-Hot Encoding**).
  - Created tenure-based customer groups.

- **Machine Learning Model Building:**
  - **Logistic Regression**
  - **Random Forest (Final Model 92% accuracy)**

- **Model Evaluation:**
  - **Accuracy, Precision, Recall, F1-score**
  - **Confusion Matrix**
  - **Feature Importance Analysis** (Identified top churn predictors)

- **Exported the final dataset** (`customer_churn_powerbi.csv`) for Power BI.


### **4️⃣ Power BI Dashboard - Data Visualization**
- **Imported the cleaned dataset into Power BI**.
- **Used Power Query** for additional transformations.
- **Created Calculated Columns & Measures using DAX**.
- **Key Visualizations:**
  - **Churn Rate Overview** (Card Metrics)
  - **Churn Distribution by Contract Type, Payment Method, Internet Service**
  - **Customer Tenure Analysis**
  - **Churn Prediction Factors**
  - **Geographic Churn Analysis (Map Visual)**

### **5️⃣ Final Output**
✅ **Machine Learning Model** predicting customer churn.  
✅ **Power BI Dashboard** providing actionable insights.  

---

## 📊 Power BI Dashboard Preview
🔽 ![dashboard](https://i.postimg.cc/Y9XqHtL4/Churn-Analysis-Dashboard-page-0001.jpg)

---

## 🏁 How to Run This Project?

### **🔹 Step 1: MySQL Database Setup**
1. Download the dataset from **Kaggle**.
2. Import it into **MySQL**.
3. Run the **SQL queries in `Queries.sql`** to perform EDA.

### **🔹 Step 2: Python Machine Learning**
1. Install dependencies:
   ```bash
   pip install pandas numpy matplotlib seaborn scikit-learn pymysql
---

## Author
Kazi Mahmudul Hasan 
- GitHub: [Kazi-Mahmudul](https://github.com/Kazi-Mahmudul)
- LinkedIn: [Kazi-Mahmudul-Hasan](www.linkedin.com/in/kazi-mahmudul-hasan)

