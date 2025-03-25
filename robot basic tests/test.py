def somme(a,b): #on l'ecrit dans un fichier dehor 
    return a+b
def affcihe_bonjour():
    print("Bonjour")

class Personne:
    #a est une var static si on l'ecrit comme ca a sans ecrire satatic
    def __init__(self,nom:str,prenom:str,age:int): #construct
        self.age=age #self au lieu de this en java
        self.nom=nom
        self.prenom=prenom

    def affiche(self):
        print("Nom: ",self.nom," Prenom: ",self.prenom," Age: ",self.age)

class Etudiant (Personne):
    def __init__(self,nom:str,prenom:str,age:int,matricule:str):
        super().__init__(nom,prenom,age)
        self.matricule=matricule

    def affiche(self):
        super().affiche()
        print("Matricule: ",self.matricule)
