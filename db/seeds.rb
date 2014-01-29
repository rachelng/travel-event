# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create!(
	artist: "Lemaitre",
	venue: "Queen Elizabeth Theatre",
	concert_date: "2014-03-20 23:00:00",
	location: "Vancouver",
	artist_image_url: "http://www.lemaitremusic.com/files/2011/09/untitled-14-of-18-870x460.jpg",
	description: <<-eos.gsub(/\s+/, " ").strip
	Lemaitre is a Norwegian indie electronic band
	 formed by Ketil Jansen and Ulrik Denizou Lund in 2010.
	eos
)

Event.create!(
	artist: "Mark Ronson",
	venue: "Rogers Arena",
	concert_date: "2014-03-22 23:00:00",
	location: "Vancouver",
	artist_image_url: "http://upload.wikimedia.org/wikipedia/commons/b/bc/Mark-Ronson.jpg",
	description: <<-eos.gsub(/\s+/, " ").strip
	Mark Daniel Ronson is an English musician, DJ and a music producer.
	While his debut album Here Comes the Fuzz failed to make an impact on the charts, 
	his second album, Version included three top ten hits and won Ronson a Brit Award
	 for British Male Solo Artist in 2008.
	eos
)

Event.create!(
	artist: "Kendrick Lamar",
	venue: "Air Canada Centre",
	concert_date: "2014-03-21 23:00:00",
	location: "Toronto",
	artist_image_url: "http://www.xxlmag.com/wp-content/uploads/2013/06/kendricklamar_001-1600.jpg",
	description: <<-eos.gsub(/\s+/, " ").strip
	Kendrick Lamar Duckworth, known simply as Kendrick Lamar, 
	is an American hip hop recording artist from Compton, California.
	eos
)

Event.create!(
	artist: "Daft Punk",
	venue: "Air Canada Centre",
	concert_date: "2014-03-24 21:00:00",
	location: "Toronto",
	artist_image_url: "http://www.gq.com/images/style/2013/05/daft-punk/daft-punk-630.jpg",
	description: <<-eos.gsub(/\s+/, " ").strip
	Daft Punk is a French electronic music duo consisting
	of musicians Guy-Manuel de Homem-Christo and Thomas Bangalter.
	eos
)

