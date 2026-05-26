# 🇮🇸 Iceland Tourism Analysis

Analysis of 10+ years of Iceland tourism data from Statistics Iceland.

## 📊 Key Findings
- 2023 was a record year with **2.7M foreign arrivals**
- COVID caused a **-78% drop** in 2020, followed by **+123% recovery** in 2022
- July & August peak season — 3x more tourists than January
- Capital region hotel occupancy: **75%** vs 43% in East Iceland
- USA, UK and Germany are top source markets; **Poland ranked 7th**

## 🛠️ Tools & Technologies
- **Python** — pandas, matplotlib, seaborn
- **SQL** — DuckDB for analytical queries
- **Power BI** — interactive dashboard (coming soon)
- **Data source** — [Statistics Iceland](https://www.statice.is)

## 📁 Project Structure
iceland-tourism-analysis/
├── data/
│   ├── raw/          # Original files from Statistics Iceland
│   └── processed/    # Cleaned CSV files
├── notebooks/        # Jupyter notebooks
├── sql/              # DuckDB analytical queries
├── powerbi/          # Power BI dashboard
└── reports/          # Charts and visualizations

## 📈 Analyses
1. **Trend analysis** — foreign arrivals 1998–2026
2. **Seasonality** — monthly patterns pre/post COVID
3. **COVID impact & recovery** — YoY change analysis
4. **Source markets** — top countries via Keflavik airport
5. **Regional occupancy** — hotel occupancy by region

## 🚀 How to Run
```bash
git clone https://github.com/YOUR_USERNAME/iceland-tourism-analysis
cd iceland-tourism-analysis
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
```