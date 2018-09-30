This is my course project for the Getting and Cleaning Data course on Coursera.

The script run_analysis.R reads the original data into R and processes the data according to the five steps in the project assignment. For the script to run correctly, the Samsung data should be saved in the working directory in its original format (an unzipped folder called "UCI HAR Dataset"), as specified in the assignment submission instructions.

The resulting tidy data set, as called for in step 5 of the project assignment, is called *averages*. It is based on data in both the *test* and *train* data sets. The *averages* data set has been output to a file named *averages.txt* using write.table with row.names = FALSE.

The *averages* data set is tidy according to Hadley Wickham's three principles of tidy data:

1. Each variable forms a column.
    Here the variables are subject, activity, and the averages of the mean and standard deviation measurements from the original data over each subject-activity pair. There are 68 variables in the final dataset.
    
2. Each observation forms a row.
    Here each observation is a subject-activity pair. There are 30 subjects and 6 activities, so there are 30 x 6 = 180 rows in the final data set.
    
3. Each type of observational unit forms a data table.
    The averages of the measurements are the same type of observational unit, so they belong in one data table.