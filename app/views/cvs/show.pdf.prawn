pdf.font "Helvetica"
pdf.text " #{@cv.title}", :size => 14, :style => :bold, :spacing => 4
pdf.text "Nom: #{@cv.civil_status.family_name}", :spacing => 3,:size => 9
pdf.text "Prenoms: #{@cv.civil_status.name}", :spacing => 3, :size => 9
pdf.text "Date de naissance: #{@cv.civil_status.birthday}", :spacing => 3,:size => 10  
pdf.text "Lieu de naissance: #{@cv.civil_status.hometown}", :spacing => 3, :size => 9
pdf.text "Ville: #{@cv.civil_status.current_city}", :spacing => 3, :size => 9
pdf.text "Sexe: #{@cv.civil_status.gender}", :spacing => 3, :size => 9
pdf.text "Statut: #{@cv.civil_status.status}", :spacing => 3, :size => 9
pdf.text @cv.summary, :size => 9, :spacing => 4

