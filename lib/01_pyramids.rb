def wtf_pyramid
    puts "Combien d'etages il te faut? (choisis un nombre impair)"
    print ">"
    etages = gets.chomp.to_i
    i = 1

    if etages % 2 == 0
        puts "Heu... on avait dis impair je crois"
        exit
    elsif etages == 1
        puts "#"
    else
        
        middle = etages/2
        a = middle
        while a != 0
            puts " " * a + "#" * i
            a -= 1
            i += 2
        end
        while a != middle + 1
            puts " " * a + "#" * i
            a += 1
            i -= 2 
            
        end
    end
end
wtf_pyramid