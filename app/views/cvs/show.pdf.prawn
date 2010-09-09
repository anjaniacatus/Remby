pdf.font "Helvetica"
pdf.text "CV: #{@cv.title}", :size => 16, :style => :bold, :spacing => 4
pdf.text "Author: #{@cv.civil_status.name}", :spacing => 16
pdf.text @cv.summary

