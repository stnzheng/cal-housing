# README

## Team Members:
+ Nalin Chopra
+ Vanessa Cortes
+ Steven Zheng
+ Tinsley Zhu

## Demo Link:

## Idea:
The main purpose of the app is to provide a platform for subleasers and landlords to find trustworthy subletters (college students), and for college students to find open spots for housing. This app will meet the demand of people who are looking for short-term leasing due to internship relocation or summer school, and will also ensure the safety and quality of subletter matching.


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
+ Authentication of identity
+ Filter by multiple attributes

## Extra Gem:
+ Google Maps for “Listing ___ miles away”: https://github.com/edwardsamuel/google-maps-services-ruby

