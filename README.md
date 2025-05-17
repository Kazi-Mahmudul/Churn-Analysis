# 📊 Customer Churn Analysis and Prediction

## 🚀 Project Overview

This project aims to analyze and predict customer churn for a telecom company using **SQL**, **Python (Machine Learning)**, and **Power BI**. The objective is to uncover key churn indicators, build an accurate classification model, and visualize the business insights interactively.

🔗 **Dataset Source**: [Kaggle - Telco Customer Churn (IBM)](https://www.kaggle.com/datasets/yeanzc/telco-customer-churn-ibm-dataset)

---

## 🛠 Tools & Technologies Used

- **SQL (MySQL)** → Data cleaning & EDA  
- **Python** → Data processing, modeling, threshold tuning  
- **Libraries** → pandas, numpy, matplotlib, seaborn, scikit-learn, lightgbm  
- **BI Tool** → Power BI for dashboard and interactive visualizations  

---

## 📌 Project Workflow

### 1️⃣ Data Collection
- Dataset downloaded from Kaggle.
- Imported into **MySQL Workbench**.

### 2️⃣ SQL-Based EDA
- Performed checks for null values, duplicates, and anomalies.
- Used SQL queries to analyze:
  - Churn distribution
  - Relationships between churn and contract type, payment method, etc.
  - Customer segments by tenure

### 3️⃣ Python Analysis & Modeling

#### 🔹 Data Preparation
- Connected to MySQL using `mysql.connector`.
- Cleaned and transformed the data:
  - Converted string numerics
  - Standardized categorical values
  - Encoded categorical variables (One-Hot Encoding)
  - Removed outliers using IQR method
  - Normalized features where appropriate

#### 🔹 Model Building & Evaluation
- Trained several models:
  - Logistic Regression
  - K-Nearest Neighbors
  - Support Vector Machine
  - Random Forest
  - **XGBoost**
  - **CatBoost**
  - ✅ **LightGBM (Best performer)**

#### 🔹 Model Tuning
Used `RandomizedSearchCV` for hyperparameter tuning:

```python
from lightgbm import LGBMClassifier
from sklearn.model_selection import RandomizedSearchCV

lgbm = LGBMClassifier(random_state=42)

random_search = RandomizedSearchCV(
    estimator=lgbm,
    param_distributions=param_grid,
    n_iter=50,
    scoring='f1',  
    cv=5,
    verbose=1,
    random_state=42,
    n_jobs=-1
)

random_search.fit(X_train, y_train)
best_model = random_search.best_estimator_
```

#### 🔹 Threshold Tuning

Instead of using the default `0.5`, threshold was manually tuned to optimize recall and f1:

```python
from sklearn.metrics import classification_report

custom_threshold = 0.35
y_probs = best_model.predict_proba(X_test)[:, 1]
y_pred_custom = (y_probs >= custom_threshold).astype(int)

print("Classification Report at Threshold =", custom_threshold)
print(classification_report(y_test, y_pred_custom, zero_division=0))
```

🟢 **Final Classification Report (Threshold = 0.35)**

| Metric        | Class 0 | Class 1 |
|---------------|---------|---------|
| Precision     | 0.97    | 0.86    |
| Recall        | 0.94    | 0.93    |
| F1-score      | 0.96    | 0.89    |
| Accuracy      | 0.94    |         |

- Macro avg F1-score: **0.92**
- Weighted avg F1-score: **0.94**

#### 🔹 Model Comparison & Metrics
- Plotted:
  - ROC Curve
  - Precision-Recall Curve
  - Confusion Matrix
  - Barplot comparison of multiple models (Accuracy, Recall, F1)

---

## 📊 Power BI Dashboard

- Exported cleaned & enriched data (`customer_churn_powerbi.csv`) to Power BI.
- Transformed columns in Power Query.
- Created DAX measures to compute churn KPIs.

### Key Visuals:
- Churn Rate by:
  - Contract Type
  - Internet Service
  - Payment Method
- Customer Tenure Distribution
- Monthly Charges vs Total Charges
- Churn Prediction Factors (Top 10 important features)
- Geographic churn (if applicable)
- Slicers for Contract, Internet, Gender, etc.

---

## 🏁 How to Run This Project

### 🔹 Step 1: MySQL Setup
1. Import the dataset into MySQL.
2. Run SQL queries for EDA.

### 🔹 Step 2: Python ML Pipeline
1. Clone the repository.
2. Install dependencies:

```bash
pip install pandas numpy matplotlib seaborn scikit-learn lightgbm
```

3. Open `scripts.ipynb` in Jupyter.
4. Run all cells to preprocess, train, evaluate, and fine-tune the model.

### 🔹 Step 3: Power BI Dashboard
1. Load `customer_churn_powerbi.csv` into Power BI.
2. Create visuals using Power Query and DAX.

---

## 🖼 Power BI Dashboard Preview

![dashboard](https://i.ibb.co.com/n9kDD9r/Churn-Analysis-Dashboard-page-0001.jpg)

---

## Author

**Kazi Mahmudul Hasan**

- 🔗 GitHub: [github.com/Kazi-Mahmudul](https://github.com/Kazi-Mahmudul)
- 💼 LinkedIn: [linkedin.com/in/kazi-mahmudul-hasan](https://linkedin.com/in/kazi-mahmudul-hasan)
