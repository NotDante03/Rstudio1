print ("hello R")
system('git config --global user.email "dante.notari@student.univaq.it"')
system('git config --global user.name "Dante Notari"')
system("git config --global --list")
usethis::create_github_token()
gitcreds::gitcreds_set() #per salvare il token in modo sicuro sul computer (così non lo reinserisco)
system('git remote add origin "https://github.com/NotDante03/Rstudio1.git"') #per aggiungere un repository remoto 
system("git remote -v") #per vedere se il repository remoto è stato aggiunto correttamente
system("git remote remove Rstudio1") #per rimuovere un repository remoto sbagliato o ripetuto
system("git remote remove Rsudio1")
system("git remote -v")
system("git push -u origin main") #per attivare push e pull (che prima erano grigi)
