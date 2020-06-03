# Project Description

This is a Ruby on Rails application that consists of two pages: Page 1 allows uploading of
images and Page 2 is a simple game. The game consists of showing a countdown timer, an
image, a button and an HTML table. When the button is clicked, the current timer value and
image URL is saved to a database table named "plays" and is also displayed in the HTML table.


# Specifications

## Page 1 “Home Page” : 
Allows upload of multiple images at one time (able to multi-select the images to be uploaded using the system's Open File dialog).

## Page 2 “Game Page”:
contains four HTML elements:

#### An H1 element :
This element displays a countdown timer that counts down from 10 to 1. When the timer reaches "1", it starts over from 10 again. The timer has a per-second resolution.

#### An IMG element :
When the game page is loaded, the application will choose a random selection
of up to 10 images from all the uploaded images and store their URLs in an array. With each tick of the countdown timer, the IMG HTML element will display an image from the array, in order (the set of selected images must not change unless the page is refreshed).

#### A BUTTON element :
When the button is clicked, the current timer value and current image
URL, should be saved to a database table called "plays". At the same time, update the HTML table (described below) with this latest entry. All of this should be done via Javascript/Ajax without causing the web page to be reloaded.

#### A TABLE element​ :
On game page load, this HTML table should be populated with all the
entries currently in the "plays" database table (no pagination is needed - load and show all the records at once). The HTML table has two columns: one shows the timer value and the other shows in an IMG tag, the image associated with that record.
