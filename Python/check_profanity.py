#! /usr/Python-2.7.10/python

def read_text():
	quotes = open("/home/gucoloradoc/Descargas/movie_quotes")
	contents_of_file = quotes.read()
	quotes.close()
	check_profanity(contents_of_file)

def check_profanity(text_to_check):
	import urllib
	connection = urllib.urlopen("http://www.wdyl.com/profanity?q="+text_to_check)
	output = connection.read()
	
	if "true" in output:
		print("grosero !")
	elif "false" in output:
		print("Politicamente correcto")
	else:
		print("Ha ocurrido un error")
	connection.close()

read_text()
