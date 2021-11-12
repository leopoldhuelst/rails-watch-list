require 'open-uri'

url = 'http://tmdb.lewagon.com/movie/top_rated?api_key=<your_api_key>'
movies = JSON.parse(URI.open(url).read)

movies['results'].each do |movie|
  Movie.create(title: movie['title'], overview: movie['overview'], poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}", rating: movie['popularity'])
end
