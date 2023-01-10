# Filter-rows-of-multiple-CSVs
This was used to filter "noise" signal from immunohistochemistry image outputs (CSVs) processed in ImageJ (Fiji).

The mPFC, striatum, and motor cortex were stained for expression of esr2 using RNAscope.  The number of flurescent puncta were quantified. To 
collect this data, 8 images were taken per subject and named accordingly: Subject#_1, Subject#_2, Subject#_3, etc.  These images were then run through
ImageJ Fiji software, producing CSV outputs listing the intensity and size of each puncta detected in that image as a row.  This means each subject
had 8 CSV files.

To accurately analyze results, we needed to remove any potential backgroud or saturated signal. 
We wanted to remove puncta that were larger than 1 (arbitrary unit based on pixels) from the dataset, which consisted of over 450 CSVs. 

This loop was created to filter each CSV file, removing rows containing points with areas larger than 1, and then deposit the updated
updated CSV in a new folder.  We kept the name of these new files identical to the original CSVs out of necesity
as file names denoted the subject. 
