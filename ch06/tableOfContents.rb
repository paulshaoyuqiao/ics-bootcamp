line_width_0=50
line_width_1=3
puts ('       Table of Contents'.center(line_width_0))
puts ('Chapter 1: Getting Started'.ljust(line_width_0)+'page'+'1'.rjust(line_width_1))
puts ('Chapter 2: Numbers'.ljust(line_width_0)+'page'+'9'.rjust(line_width_1))
puts ('Chapter 3: Letters'.ljust(line_width_0)+'page'+'13'.rjust(line_width_1))
#This program works based on the following logics:
#1. Two different line widths are created for later adjustment and formatting.
#2. The title is printed using space and the center method with the longer line width.
#3. Each line is then printed using ljust to push chapter number and name to the left and rjust to push and align page number to the right.
