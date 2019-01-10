puts "Bienvenue jeune mortel !!"
puts "Aujourd'hui tu devras affronter l'ultime epreuve qu aucun Humain..."
puts "UN ESCALIER DE DIX MARCHES!!!!!"

def game
  stair = 0
  y = 0
    while stair != 10
        mouv = rand(6) + 1
        puts "#{mouv}"
        y += 1
        if stair == 0 && mouv == 1
            puts "Vous restez en face de l'escalier"
        elsif mouv == 1
            stair -= 1
            puts "Vous reculez d'une marche, vous etes sur la #{stair}e marche"
        elsif mouv == 5 || mouv == 6
            stair += 1
            puts "Vous avancez d'une marche, vous etes sur la #{stair}e marche"
        else mouv == 2 || mouv == 3 || mouv == 4
            puts "Rien ne se passe, vous etes sur la #{stair}e marche"
        end        

  end
    puts "Bravo, tu es le premier mortel a reussir cette epreuve et arriver a la 10e marches" 
    puts "Nous t'accueuillons donc au pantheon des dieux"
    
  return(y)
end


def average_finish_time
  x = 0
  a = 0
    while x != 101
        y = game
        a += y
        x += 1
        
    end
    return(a)
    
end

def perform
    a = average_finish_time
    a /= 100
    puts "Il faut en moyenne #{a} tours"
end
perform

