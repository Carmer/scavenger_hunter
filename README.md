# README

[![Circle CI](https://circleci.com/gh/trayo/scavenger_hunter.svg?style=svg)](https://circleci.com/gh/trayo/scavenger_hunter)
[![Code Climate](https://codeclimate.com/github/trayo/scavenger_hunter/badges/gpa.svg)](https://codeclimate.com/github/trayo/scavenger_hunter)

## Scavenger Hunter
### A 1409 Turing Community Project

Create customized scavenger hunts in your city.

Version 1 created by [Kate Lane](https://github.com/katelane), [Tim Mee](https://github.com/Tmee), [Greg Narajka](https://github.com/gregnar) and [Travis Yoder](https://github.com/trayo).

#### Notes:

Recommendations for V2 (and beyond):
We have implemented the MVP with V1. There is plenty of room for development and improvement. Some ideas for the future:
* **The ability to create new locations while creating a new hunt.** Currently a new hunt can only include existing locations/locations must be added first.
* **Overhaul the frontend entirely with a structured framework such as Bootstrap or Foundation so that you can take advantage of the built-in responsive functionality for the mobile app.** We wrote our stylesheet for the web app using pure CSS and then found that adding a mobile layer later was surprisingly ugly (as you will see if you look at our views). After having no luck with gems like JQTouch (DOA), Jquery Mobile (nope), we ran out of time. To meet our deadline, we ended up having to shove inline styles into our mobile views, which is a pretty terrible solution. If you inherit this app and overhaul the styling, we (especially Travis) would love it if you stayed true to our original inspiration, the Spy Hunter game from the 80s: [view it in all its glory](http://static.giantbomb.com/uploads/original/9/93770/2362254-nes_spyhunter.jpg "Spy Hunter NES").
* **Deal with geocoding error handling.** We currently tell the hunter if they are not close enough to the location but we didn't build in functionality that accounts for basic geocoding errors (as in, location won't load at all).
* **Give the hunt organizer the option to enter a location using EITHER latitude/longitude OR address.** Currently we are asking for address and converting it to lat/long coordinates. However, in a case like the Denver Convention Center (a common stop on Turing scavenger hunts), the actual address is far away from the Big Blue Bear (the desired hunt location). In this case, we're asking the hunt organizer to be sensitive to this and enter the address of cross streets near the bear instead of the convention center address. It would be easier if the organizer could just enter coordinates in this case.
* **Add something to do with photos.** The old way of scavenger hunting at Turing involved photographic proof of hunter presence at locations. We had grand intentions of creating some sort of Twitter sidebar which would display tweeted photos with a specific hunt hashtag from hunters... but we ran out of time. Think about ways to bring photos back into play.

Enjoy!
