# State Capacity and Environmental Policy

**Do countries with higher state capacity protect a larger share of their land area?**

This repository presents an empirical policy analysis that examines whether
stronger state capacity is associated with greater provision of environmental
public goods, focusing on the share of national land area under environmental
protection.

---

## Research Motivation

Environmental protection is a classic public good. While many governments
formally commit to conservation goals, actual policy outcomes depend on the
state’s ability to design, implement, and enforce environmental regulations.
Countries with weak administrative or fiscal capacity may designate protected
areas symbolically, without effective enforcement.

This project investigates whether differences in **state capacity** help explain
cross-country variation in **environmental protection outcomes**, moving beyond
policy declarations to measurable results.

---

## Research Question

- Do countries with higher state capacity protect a larger share of their land area?
- Is the relationship between state capacity and environmental protection linear,
  or does it vary across levels of state capacity?

---

## Data

- **Protected land area (% of total land area)**  
  Source: World Bank
- **State capacity score (standardized)**  
  Source: Hansen & Sigman (2021)

The analysis uses cross-country data covering a broad range of institutional
and economic contexts.

---

## Methodology

- Descriptive visualization (scatterplots)
- Linear regression analysis
- Non-linear specifications using deciles of state capacity

All analysis is conducted in **R**, with an emphasis on reproducibility and
transparent empirical methods.

---

## Key Findings

- Countries with higher state capacity tend to protect a larger share of their
  land area.
- The relationship is positive on average, but there is substantial variation
  across countries.
- Allowing for non-linear relationships reveals heterogeneity that is masked
  by simple linear models.

