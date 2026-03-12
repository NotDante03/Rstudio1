print ("hello R")
system('git config --global user.email "dante.notari@student.univaq.it"')
system('git config --global user.name "Dante Notari"')
system("git config --global --list")
usethis::create_github_token()
gitcreds::gitcreds_set()
system('git remote add origin "https://github.com/NotDante03/Rstudio1.git"')
system("git remote -v") #per vedere se il repository remoto è stato aggiunto correttamente
system("git remote remove Rstudio1") #per rimuovere un repository remoto sbagliato o ripetuto
system("git remote remove Rsudio1")
system("git remote -v")
system("git push -u origin main") #per pushare i commit su github
