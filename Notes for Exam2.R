# One Sample T-Test: t.test(cbcl$cbcl_anxiety_t, mu = population_mean or 0) *OR* t_test(~y, mu = 0 or other value, data = dataset)
# Two Independent Sample T-Test: mosaic::t.test(y~x, data = dataset)
# Paired Samples T-Test: t.test(post ~ pre, data = dataset, paired = TRUE)

# Omitting the Welch's correction (assumes equal variance in independent t-test): mosaic::t.test(y ~ x, data = dataset, var.equal = TRUE) 


# Subsetting for Paired Samples test: [NameofVariable] <-subset([datasetname], [variable of group] == [data value to group]$[variable you want outputted]. 

# Example (not applicable here bc not paired samples, but for syntax reference) 

# automatic <- subset(mtcars, am == 0)$mpg 
# manual <-subset(mtcars, am == 1)$mpg
# t.test(automatic, manual, paired=TRUE)