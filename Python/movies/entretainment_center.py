#! /usr/Python-2.7.10/python

import media, fresh_tomatoes

toy_story = media.Movie("Toy Story", "A story of a boy and his toys that come to life", "https://es.wikipedia.org/wiki/Toy_Story#/media/File:Pixar_Play_Parade.jpg", "https://www.youtube.com/watch?v=KYz2wyBy3kc")

#print(toy_story.storyline)

avatar = media.Movie("Avatar", "A marine on an alien planet", "https://en.wikipedia.org/wiki/Avatar_%282009_film%29#/media/File:Avatar-Teaser-Poster.jpg", "https://www.youtube.com/watch?v=cRdxXPV9GNQ")

#print(avatar.storyline)

memento = media.Movie("Memento", " A guy who can't remember short memories finding his wife murder", "http://www.cinemagora.co.uk/images/films/44/25744-b-memento.jpg", "https://www.youtube.com/watch?v=0vS0E9bBSL0")

#memento.show_trailer()

movies = [toy_story, avatar, memento]
#fresh_tomatoes.open_movies_page(movies)

#exit()
print(media.Movie.__doc__)
