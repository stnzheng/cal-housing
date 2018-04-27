# README

##Cal Housing

## Team Members:
+ Nalin Chopra
+ Vanessa Cortes
+ Steven Zheng
+ Tinsley Zhu

## Demo Link:

## Idea:
The main purpose of the app is to provide a platform for subleasers and landlords to find trustworthy subletters (college students), and for college students to find open spots for housing. This app will meet the demand of people who are looking for short-term leasing due to internship relocation or summer school, and will also ensure the safety and quality of subletter matching, by authenticating users based on their berkeley.edu emails.

Whether you find housing in an area, or a trusted roommate for a couple months, Cal-Housing is designed to match your needs!

## Models:
+ Landlord:
	* Has name
	* Has email
	* Has listing

+ Subleaser:
	* Has name
	* Has email
	* Has listing - One-to-one to make it student only
	* Has rating

+ Subletter:
	* Has name
	* Has email
	* Has rating
	* Has description of subletting

+ Listing:
	* Has author (Either Subleaser or Landlord, Polymorphic relationship)
	* Has price
	* Has # of open spots (# open double, # open single)
	* Has street Address
	* Has city
	* Has distance
	* Has time
		- Time frame of subletting period
	* Has rating
	* Has description
		- Minimum length
		- Single/double

## Features:
+ Filter by multiple attributes in housing search
	+ Start date
	+ Location (10 Mile radius)
+ Search platform for subletters
+ Post & modify listings
+ Authentication of identity for verified customer-leaser community (berkeley.edu emails only)

## Extra Gems:
+ Google Maps API for “Listing ___ miles away”: https://github.com/edwardsamuel/google-maps-services-ruby
	+ Geokit / GeokitRails - gems to geocode addresses & find close locations
	+ figaro - API Key storage
+ Image uploads / formatting to profiles & listings
	+ graphicsmagick / mini_magick
	+ fog
	+ carrierwav
	+ gravatar_image_tag
