# Write a function called gc_content that takes a DNA sequence
# as a string and returns the percentage of G and C bases.
# The function should work with uppercase and lowercase letters.

gc_content <- function(sequence) {
  # Convert the sequence to uppercase to handle both cases
  sequence <- toupper(sequence)
  
  # Count the number of G and C bases
  g_count <- sum(strsplit(sequence, NULL)[[1]] == "G")
  c_count <- sum(strsplit(sequence, NULL)[[1]] == "C")
  
  # Calculate the total number of bases
  total_bases <- nchar(sequence)
  
  # Calculate the GC content percentage
  gc_percentage <- ((g_count + c_count) / total_bases) * 100
  
  return(gc_percentage)

 } 

gc_content("AAAA")
gc_content("GCCG")
gc_content("AtgC")
gc_content("AATGC")
  
# I used GitHub Copilot to help generate a function that calculates
# the percentage of G and C bases in a DNA sequence.
# The function was verified by testing four different DNA sequences
# and comparing the results with manually calculated percentages where 
# all four tests produced the expected results.
# The function also converts lowercase letters to uppercase.
  


