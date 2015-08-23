# Description

The R script `run_analysis.R` performs the 5 steps described in the course project's definition.

* All the data of the same type (x, y or subject) is bound by rows using the `rbind()` function. 
* Then, we extract only the measures of means and standard deviations from the `x.df` data frame . After extracting, we give the correct names to the columns, taken from `features.txt`.
* Then, we merge `y.df` and `activities` data frames and assign activity names to `y.df` values. We also correct the column name.
* Then, we bind all the data frames of the same types into the one data set with descriptive variable names.
* Finally, we create an independent tidy data set with the average of each variable for each activity and each subject. The output file is called `tidy.data.txt`, and uploaded to this repository.

# Variables

* `x_train`, `y_train`, `x_test`, `y_test`, `subject_train` and `subject_test`: the data from the downloaded files.
* `x.df`, `y.df` and `subject.df`: are bound from the previous datasets by type.
* `features`: contains the correct names for the `x.df` dataset.
* `mean.sd`: a numeric vector used to extract the desired data from `x.df` dataset.
* `activities`: contains the correct names for the activities in the `y.df` dataset.
* `data`: merges `x.df`, `y.df` and `subject.df` in a single dataset.
* `tidy.data`: contains the relevant averages which will be later stored in a `.txt` file. `ddply()` from the `plyr` package is used to apply `colMeans()` function for less coding.
