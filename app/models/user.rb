class User < ApplicationRecord
	validates :user_name, 
			uniqueness:true,
			format: { with: /\A[a-zA-Z0-9]+\Z/ }
end


#Conditions de validation qui permettent d'éviter que des Usernames puissent être enregistrés si 
#1) ils ne sont pas uniques
#2) ils contiennent un espace ou sont vides (REGEX)
#Ces validations permettent:
#1) d'éviter que ces Usernames ne soient enregistrés dans la Database via rails console: des Rollbacks apparaissent si on essaie
#2) d'empêcher l'enregistrement des Usernames sur le site, ce qui permet de renvoyer à une page d'erreur
