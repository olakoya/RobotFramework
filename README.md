# Hybrid Web Automation Framework

## 📌 Overview
This project is a **Hybrid Test Automation Framework** built using **Robot Framework**, **Selenium**, and **Python** for automated web application testing.

The framework combines **keyword-driven** and **data-driven** approaches to ensure **reusability**, **scalability**, and **maintainability** of test cases. It supports clear reporting, easy parameterization, and modular test design.

---

## ⚙️ Tech Stack
- **Language:** Python
- **Framework:** Robot Framework
- **Libraries:** SeleniumLibrary, RobotFramework-PythonLibCore
- **Tools:** PyCharm (or VS Code), Virtual Environments (`venv`), Git
- **Optional:** Jenkins (if CI/CD is integrated)

---

## ✅ Features
- End-to-end functional and regression testing for web applications
- Cross-browser automation with Selenium WebDriver
- Reusable custom keywords and test libraries
- Support for IF/ELSE, WHILE, FOR loops (control flow)
- Isolated environment using Python `venv`
- Automatic generation of logs, reports, and output files
- Easy integration with version control and CI/CD pipelines

---

## 🚀 Getting Started

### 1️⃣ Clone the repository
```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name

### 2️⃣ Create and activate a virtual environment
python3 -m venv venv
source venv/bin/activate  # On Mac/Linux
# OR
venv\Scripts\activate     # On Windows

### 3️⃣ Install dependencies
pip install -r requirements.txt

### 4️⃣ Run test cases
robot -d Results Tests/LoginTests.robot

---

## 📂 Project Structure
📦 HybridFramework
 ┣ 📂 Tests               # Robot test suites
 ┣ 📂 Resources           # Reusable keywords, variables, custom libraries
 ┣ 📂 Results             # Test output, log.html, report.html
 ┣ 📜 requirements.txt    # Python dependencies
 ┣ 📜 README.md           # Project documentation
 ┗ 📂 venv                # Virtual environment

---

👨‍💻 Author
Developed by OLA KOYA as part of a personal practical QA Automation project to showcase skills in Robot Framework and Selenium.
