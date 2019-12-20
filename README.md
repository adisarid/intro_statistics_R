![](https://raw.githubusercontent.com/adisarid/intro_statistics_R/bcdb6af4058308ebe999d0a477d6a1bb9030ffa2/misc/tau_engineering_logo.png)

# Introduction to Statistics and Data Analysis with R

This is the repository for the course of **introduction to statistics and data analysis**, taught in Tel-Aviv university (0560.1823). The course is taught in the Engineering faculty in the "Sciences for High Tech" track.

In this repository you will find all the required materials including lecture notes, references, class code, exercises, and more.

## Technical Information

In this course there are 3 lecture hours + 1 exercise (instructor) hour.

Lecturer: Mr. Adi Sarid.

   * Office hours: Sundays 13:00-14:00. Please **coordinate in advance**. Transportation lab (Wolfson 451).
   * E-mail: adi@sarid-ins.co.il.
   * Twitter: @SaridResearch
   * Mobile Phone: +972-50-8455450 (Please please try to reach out via email first).
   * Personal website: [adisarid.github.io](adisarid.github.io)

Instructor: Mr. Afek Adler.

   * Office hours: Sundays, 18:00. **Please coordinate in advance and send the question you want to discuss** (HW or the EX/L), location LAMBDA (Wolfson 451).
   * E-mail: afekilayadler@gmail.com.

The course will be given in Hebrew, but all the supporting materials will be provided in English.

Garding will be based on: 

   * Homework, in pairs (20%)
   * Final project, individually (30%)
   * Final exam (50%).

## Prerequisites

The prerequisites for this course are:

   * Introduction to Probability (0560.2801 or equivalent). 
   * Mathematical Methods 1 (0560.2802 or equivalent).
   
This course is mainly designed for undergraduates with prior knowledge in probability and basic knowledge in math (a bit of Algebra and a bit if Infi), doing a BA/BSc with a "Sciences for High-Tech" track. However, it would also fit graduate students which want to strengthen their knowledge in statistics and data analysis (or learn the very basics of R).

## Goals

This is a course in introduction to statistics and data analysis. The course covers fundemantal terms in statistics, such as significance, hypothesis testing, inference, sampling methods, variable types, modelling (regression, ANOVA), a-parametric tests.

During the course we will use the [R](https://www.r-project.org) language for demonstrations and exercises.

We will use publicly available "open data sets" (e.g., from [Kaggle](https://kaggle.com) and [tidytuesday](https://github.com/rfordatascience/tidytuesday)) to demonstrate the various topics we will cover.

## Topics

   * Overview - from design to implementation: how a statistical research is conducted, from the design phases, through data collection and presentation.
   * Statistical inference and parameter estimation (e.g., average, standard deviation, percentiles).
   * Hypothesis testing:
      * Confidence intervals, unpaird tests, paird tests. Student's t-test, z test, a-parameteric tests.
	  * Goodness of fit (Chi-square, Kolmogorov-Smirnov).
   * The problem with p-value and significance testing in the age of big data. False discovery rate (FDR).
   * Analysis of Variance (One-way and Two-way ANOVA).
   * Planning experiments (multiple-comparisons), sample size calculations, power calculations.
   * Linear regression.
   * Correlation.
   * Logistic regression.

## Software Prerequisites

You will need to install [R](https://www.r-project.org) and [RStudio](https://rstudio.com/products/rstudio/download/). RStudio is not mandatory to run R, but it provides a very environment for writing R code. Both software are available for free (for RStudio download the *RStudio Desktop Open Source License* version).

## Reading Materials

OpenIntro statistics is an introduction to statistics with R, it doesn't contain everything we will learn, but provides a good intro to some topics. Downloadable for free [here](https://leanpub.com/openintro-statistics/) (click on the "download sample" and the entire book downloads as a pdf file).

   * Diez, D. M., Barr, C. D., & Cetinkaya-Rundel, M. (2012). OpenIntro statistics (pp. 174-175). OpenIntro.

R4DS (R for Data Science) is a highly recommended book for learning R, and specifically *tidyverse* which is a collection of useful packages for data science. The book is mostly "technical", i.e., it does not provide much theoretical details. This book is also available in an online format [here](https://r4ds.had.co.nz/).

   * Wickham, H., & Grolemund, G. (2016). R for data science: import, tidy, transform, visualize, and model data. " O'Reilly Media, Inc.".

Most of the theory I present during the course comes from these two books:

   * Walpole R.E., Myers R. H, Myers S. L., and Ye K.: Probability & Statistics for Engineers & Scientists. Prentice Hall, 9th ed., 2011. Available [online](https://fac.ksu.edu.sa/sites/default/files/probability_and_statistics_for_engineers_and_scientisst.pdf)
   * Runger G. & D. Montgomery: Applied Statistics and Probability for Engineers. Wiley, 7th ed., 2018. An old edition is available [online](http://www.um.edu.ar/math/montgomery.pdf)
   
Additional books:

   * Johnson, N.L. & Leone, F.C.: Statistics and Experimental Design Vol. 1.2, Wiley, 2nd ed., 1997.
   * Draper N. & H. Smith: Applied Regression Analysis, 3rd  ed. Wiley, 1998.
   * Gibbons J.D.: Nonparametic Statistical Inference, Springer, 2011.

## Additional Sources

You can find various online videos teaching statistics theory along with R coding examples. One such place is the Statistics of DOOM channel on youtube: [https://www.youtube.com/channel/UCMdihazndR0f9XBoSXWqnYg](https://www.youtube.com/channel/UCMdihazndR0f9XBoSXWqnYg).

## How this Repository is Arranged

This repository is arranged with subfolders as follows:

```
├── datasets (contains datasets we will use)
├── exercises (exercise notes)
├── HW (home work exercises)
├── lectures (lecture notes)
├── misc (miscellaneous, feel free to ignore this) 
```