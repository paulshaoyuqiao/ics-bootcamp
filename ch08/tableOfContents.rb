contents = ['Table of Contents',1,'Getting Started',1,2,'Numbers',9,3,'Letters',13]
line_width_0 = 50
line_width_1 = 3
puts (('          '+contents[0].to_s).center(line_width_0))
i=0
while (i<(contents.length-1)/3)
  num = contents[3*i+1].to_s
  title = contents[3*i+2].to_s
  page = contents[3*i+3].to_s
  puts (('Chapter '+num+': '+title).ljust(line_width_0)+'page'+page.rjust(line_width_1))
  i = i+1
end
#This program works based on the following logics:
#1. An array containing all the information for the table of contents is created.
#2. Two different line widths are created for later adjustment.
#3. The tile 'Table of Contents' is first created and centered.
#4. A variable i is initiated at the value of 0.
#5. A while loop going through the rest of the array (excluding the first item) is initiated.
#6. The loop divides the rest of the array into three items per cycle and assigns them to the chapter number, chapter title, and chapter page, respectively.
#7. Then these variables (converted to string) are formatted and adjusted using ljust, rjust, and the line widths created earlier.
#8. The formatted line is printed.
#9. As the loop comes to the end of the array, it terminates itself, and the intended output has already been printed.
