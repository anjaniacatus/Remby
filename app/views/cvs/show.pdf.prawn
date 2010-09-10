pdf.font "Helvetica"
pdf.text " #{@cv.title}", :size => 16, :style => :bold, :spacing => 4
pdf.text "Nom: #{@cv.civil_status.name}", :spacing => 16
pdf.text "Nom: #{@cv.civil_status.family_name}", :spacing => 16
pdf.text "Nom: #{@cv.civil_status.birthday}", :spacing => 16
pdf.text "Nom: #{@cv.civil_status.hometown}", :spacing => 16
pdf.text "Nom: #{@cv.civil_status.current_city}", :spacing => 16
pdf.text "Nom: #{@cv.civil_status.gender}", :spacing => 16
pdf.text "Nom: #{@cv.civil_status.status}", :spacing => 16
pdf.text @cv.summary

