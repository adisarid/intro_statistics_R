# Plan for course

## Weeks 1-2

### Lecture:

   * Intro/overview
      * Sampling methods
   * Statistical inference and parameter estimation
      * Mean, median, std, biased/unbiased, maximum likelihood, percentiles, skewness, desired properties of estimtes (e.g. unbiased), Cramer-Rao bound(?), Chebychev.
   * Variable types
   * Reminder on types of distributions(?) + visualizations.

### Exercise:

   * Technical exercises on R
      * Intro to R
	  * Tidyverse
	  * Visualizations
   * Motivation example

### Homework:

   * The first will present an example research (verbally) and ask questions about the sampling method, type of variables, problems with bias.
   * Show a chart and analyze it (e.g., boxplot, density, ecdf, scatter plot matrix). What a specific plot teaches that others don't.
   * Technical part (maybe adopted from R4DS)
   
## Weeks 3-4

### Lecture:

   * Hypothesis tests.
   * Use cases and examples for z, student's t, how are they related to assumptions.
   * Chi-square test for independence of variables.
   * A-parametric tests (e.g., Wilcoxon) - what do they mean, when should we use them, examples.
   * Goodness-of-fit.
   * Problems with p-values, FDR.
   * Multidimensional CIs?
   * Relationship between significance (p-value) versus confidence interval.

### Exercise:

   * Show another test not covered in the lecture; or
   * Review a concrete example in class, i.e., take a data set and run a number of hypothesis tests.
   * Illustrate how 100 tests of independent random variables might show significant values (even though they are drawn from the same distribution).
   * Example for FDR.
   
### Homework:

   * Theoretical question, i.e., "story" followed by what test would you use and why.
   * Practical example - parsons example of running the tests + analysis.
   
## Weeks 5-6

### Lecture:

   * Analysis of variance, one-way, two-way. Examples.
   * Dunnett's test.
   * Related tests.
   
### Exercise:

   * Example for use in R.
   * Dunnett's test (if not covered in lecture).

### Homework:

   * Complex data set with parsons example which involves both data restructuring (i.e. `pivot_wider`/`pivot_longer`) and then `aov`, `summary`.
   
## Weeks 7:

### Lecture:

   * Choosing the right sample type.
   * Deciding on sample size via margin of error and power calculations.
   * Consider sub-groups.

### Exercise:

   * Show examples and implementation in R.

### Homework:

   * Provide a research use cases, students will provide a detailed plan for the experiment.
   * Present a flawed experiment - student need to find the flaws.