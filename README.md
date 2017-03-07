# doctr [![Build Status](https://travis-ci.org/ctlente/doctr.svg?branch=master)](https://travis-ci.org/ctlente/doctr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/ctlente/doctr?branch=master&svg=true)](https://ci.appveyor.com/project/ctlente/doctr)

`doctr` is an R package that helps you check the consistency and the
quality of data.

The goal of this package is, in other words, automating as much as
possible the task of verifying if everything is ok with a dataset.
Like a real doctor, it has functions for examining, diagnosing and
assessing its "patients'" progress over time.

Since `doctr` was created with the [Tidy Tools Manifesto](https://cran.r-project.org/web/packages/tidyverse/vignettes/manifesto.html) in mind,
it works perfectly alongiside the [tidyverse](https://github.com/tidyverse).

### Basic usage

To download `doctr`, simply run the code below:

```r
devtools::install_github("ctlente/doctr")
```

To create an automated exploratory report, run `examine()` paired with
one of the `report_*()` functions. For more information about the reports
generated and their different types, run `vignette("doctr_examine")`.

```r
# Creating an automated exploratory report of X's numeric variables
X %>% examine() %>% report_num()
```

To verify if the columns of a table pass certain standards and fit
certain assumptions, use the `diagnose()` function. By default, this
function uses the exams generated by `guess_exams()`, but you can
also run the guesser by yourself, edit the exams and then pass them as an argument.
For more information about this process, run `vignette("doctr_diagnose")`.

```r
# Checking if each of X's variables can be assigned to a prototype
X %>% diagnose() %>% issues()
```

To compara a table with another one (specially if it's only one table
that has evolved in a certain time frame), use `compare()`. Just as with
`diagnose()`, this function outputs human readable results via the `issues()`
auxiliary function. For more information on table comparisons, run
`vignette("doctr_compare")`.

```r
# Checking if X_jan and X_feb can be considered similar tables
X_jan %>% compare(X_feb) %>% issues()
```
