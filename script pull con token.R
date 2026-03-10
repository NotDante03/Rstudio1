system("git --version")
system('git config --global user.email "dante.notari@student.univaq.it"')
system('git config --global user.name "Dante Notari"')
system("git config --global --list")
usethis::create_github_token()
gitcreds::gitcreds_set()



system('git remote add origin https://github.com/NotDante03/Rstudio1.git')
system('git remote -v')
system("git push")
()