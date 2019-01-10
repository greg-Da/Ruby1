access = false

def signup
    puts "Veuillez renseigner votre MDP"
    print ">"
    mdp = gets.chomp
    return(mdp)
end

def login(mdp)
    puts "Quel est votre MDP?"
    print">"
    input = gets.chomp
    while input != mdp
        puts "Erreur."
        puts "Quel est votre MDP?"
        print ">"
        input = gets.chomp
    end
    access = true
    return(access)
end

def welcome_screen(access)
    puts "Chargememt de la backdoor.."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Bienvenue dans votre interface secrete"
    puts "1 nouvelle notification"
    puts "SMS d'HUGO a destination de SAM"
    puts "-En vrai je suis pas un si grand fan de moto ca me fait un flipper-"
    puts "Fin des notifications"
    puts "A bientot"
end

def perform
    mdp = signup
    access = login(mdp)
    welcome_screen(access)
end
perform