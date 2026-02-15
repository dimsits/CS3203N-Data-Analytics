# CS3203N – Data Analytics

This repository contains coursework for **CS3203N: Data Analytics**, implemented using **R** and **RMarkdown**.

The activities focus on:

* Descriptive Analytics
* Exploratory Data Analysis (EDA)
* Probability Distributions
* Correlation Analysis
* Statistical Inference
* Hypothesis Testing

All reports are written in RMarkdown and rendered primarily as **PDF documents** for submission.

---

## 📁 Repository Structure

```
CS3203N-Data-Analytics/
│
├── activities/
│   ├── activity01-eda/
│   ├── activity02-probability/
│   ├── activity03-inference/
│
├── shared/            # Reusable helper functions and utilities
└── data/              # Datasets (if applicable)
```

Each activity folder contains:

* An `.Rmd` report file
* Generated output (`.pdf`)
* Activity-specific datasets (if required)

---

## ⚙️ Setup

1. Install R
2. Install RStudio
3. Install required packages:

```r
install.packages(c("tidyverse", "corrplot", "tinytex"))
tinytex::install_tinytex()
```

Open the `.Rproj` file to ensure correct working directory.

---

## 📄 Output

Reports are rendered as:

* `pdf_document` (primary submission format)

To generate a report:

1. Open the relevant activity `.Rmd`
2. Click **Knit → Knit to PDF**

