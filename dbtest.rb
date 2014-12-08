movies = { snatch: 5,
starwars: 5,
dragonwars: 1
}

puts "What would you like to do?"

choice = gets.chomp

case choice
when "add"
    puts "What movie would you like to add?"
    title = gets.chomp
    puts "What rating would you give this movie?"
    rating = gets.chomp
    if movies[title.to_sym] = nil
        movies[title.to_sym] = rating.to_i
        puts "Movie and rating added to database"
    else
        puts "Error, that movie already exists"
    end
when "update"
    puts "What movie did you want to update?"
    title = gets.chomp
    if movies[title.to_sym] = nil
        puts "Error, that movies is not in the database"
    else
        puts "What would you like the change the rating to?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "What movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym] = nil
        puts "Movie not found"
    else
        movies.delete(title)
    end
else
    puts "Error!"
end