class people::unasuke{
	
	# core modules
	#include xquartz

	# web browser
	include chrome
	include firefox
	include opera

	# voip
	include skype

	# memo
	include evernote

	# player
	include vlc

	# utility
	include dropbox
	include virtualbox
	include keyremap4macbook
	include better_touch_tools

	# editor
	include sublime_text_2  
	include macvim_kaoriya  
	
	# raw package
	package{
		# japanese ime
		'GoogleJapaneseInput':
		source		=> "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
		provider 	=> pkgdmg;
		
		# markdown editor
		'Kobito':
		source 		=> "http://kobito.qiita.com/download/Kobito_v1.2.0.zip",
		provider	=> compressed_app;
		
		# ssd trim
		'Trim Enabler':
		source 		=> "https://s3.amazonaws.com/groths/TrimEnabler.dmg",
		provider	=> pkgdmg;

		# scroll setting
		'Scroll Reverser':
		source		=> "https://d20vhy8jiniubf.cloudfront.net/downloads/ScrollReverser-1.6.zip,		provider	=> compressed_app;

		# typing sound
		# noisy typer
	}
}	
