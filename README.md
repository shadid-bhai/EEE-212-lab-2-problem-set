# EEE-212-lab-2-problem-set

This repository contains the MATLAB implementations for **Lab Report 2**, focusing on finding roots of polynomial and transcendental equations using the **Newton-Raphson Method**.

## 📌 Overview

The Newton-Raphson method is a powerful numerical technique used to approximate the roots of a real-valued function $f(x) = 0$. It utilizes the first derivative of the function to iteratively converge toward a root from an initial guess $x_0$.

The fundamental iterative formula used in these scripts is:

$$x_{i+1} = x_i - \frac{f(x_i)}{f'(x_i)}$$

Each script in this set applies this formula, plots the function visually centered at the origin, and validates the calculated root using MATLAB's built-in verification solvers.

---

## 📊 Problem Set Breakdown

The repository solves the following set of equations with a default tolerance of $\text{tol} = 10^{-5}$ and a maximum of $50$ iterations:

| Problem | Equation $f(x)$ | Type | Initial Guess ($x_0$) | Verification Method |
| --- | --- | --- | --- | --- |
| **Problem 1** | $x^3 - 2x + 2 = 0$ | Polynomial | `2` | `roots()` via `sym2poly()` |
| **Problem 2** | $x^3 - 6x^2 + 11x - 6 = 0$ | Polynomial | `2` | `roots()` via `sym2poly()` |
| **Problem 3** | $\tan(x) - x = 0$ | Transcendental | `0.0001` | `vpasolve()` |
| **Problem 4** | $x^5 - x + 0.2 = 0$ | Polynomial | `0.5` | `roots()` via `sym2poly()` |
| **Problem 5** | $\ln(x) + \log_{10}(x) - 2 = 0$ | Transcendental | `1` | `vpasolve()` |

---

## 🛠️ Key Implementation Features

* **Symbolic Math Toolbox:** Functions are handled symbolically using `syms f(x)`, allowing MATLAB to compute exact analytical derivatives via `diff()`.
* **High-Precision Output:** Configured with `format long` to track precision up to 15 decimal places.
* **Visualization:** Automatically generates function plots using `fplot` with the X and Y axes explicitly locked to the `origin` and grid lines enabled for clear root localization.
* **Built-in Validation:**
* Uses `roots()` for polynomial equations after extracting numerical coefficients.
* Uses `vpasolve()` (Numerical Symbolic Solver) for complex transcendental or non-polynomial systems.



---

## 🚀 How to Run

1. Clone this repository to your local machine:
```bash
git clone https://github.com/your-username/EEE-212-lab-2-problem-set.git

```


2. Open **MATLAB**.
3. Navigate to the cloned directory.
4. Run any of the problem scripts (e.g., `problem1.m`) directly in the Command Window or Editor.

> **Note:** Make sure you have the **Symbolic Math Toolbox** installed in your MATLAB environment, as it is required to compute derivatives and run `vpasolve`.
> *created by Shadid-202516058*
