# Intro to APIs

**Objectives:**

* What is an API?
* What is serialized data?
* Where do I find APIs?
* What is an API key?
* How do we access APIs?

## What is an API?

**Basically, an API is a service that provides raw data for public use.**

API stands for "Application Program Interface", and technically applies to all of software design. However, since the explosion of information technology, the term now commonly refers to web URLs that can be accessed for raw data.

APIs publish data for public use. As third-party software developers, we can access an organization's API and use their data within our own applications.

**Have a look at some stock quotes...**

* [http://dev.markitondemand.com/Api/Quote/json?symbol=AAPL](http://dev.markitondemand.com/Api/Quote/json?symbol=AAPL)
* [http://dev.markitondemand.com/Api/Quote/json?symbol=GOOGL](http://dev.markitondemand.com/Api/Quote/json?symbol=GOOGL)

## What is serialized data?

All data sent via HTTP are strings. Unfortunately, what we really want to pass between web applications is *structured data*, as in: native arrays and hashes. Thus, native data structures can be *serialized* into a string representation of the data. This string can be transmitted, and then parsed back into data by another web agent. There are two major serialized data formats:


* **JSON** stands for "JavaScript Object Notation", and has become a universal standard for serializing native data structures for transmission. It's light-weight, easy to read, and quick to parse.

```
{
  "users": [
    {"name": "Bob", "id": 23},
    {"name": "Tim", "id": 72}
  ]
}
```

* **XML** stands for "EXtensible Markup Language", and is the granddaddy of serialized data formats (itself based on HTML). XML is fat, ugly, and cumbersome to parse. However, it remains a major format due to its legacy usage across the web. You'll probably always favor using a JSON API, if available.

```
<users>
  <user id="23">
    <name><![CDATA[Bob]]></name>
  </user>
  <user id="72">
    <name><![CDATA[Tim]]></name>
  </user>
</users>
```

**Many APIs publish data in multiple formats, for example...**

* [http://dev.markitondemand.com/Api/Quote/json?symbol=AAPL](http://dev.markitondemand.com/Api/Quote/json?symbol=AAPL)
* [http://dev.markitondemand.com/Api/Quote/xml?symbol=AAPL](http://dev.markitondemand.com/Api/Quote/xml?symbol=AAPL)

## Where do I find APIs?

APIs are published everywhere. Chances are good that most major content sources you follow online publish their data in some type of serialized format. Heck, [even Marvel publishes an API](http://developer.marvel.com/documentation/getting_started). Look around for a "Developers" section on major websites, or ask the Google Answer-Bot.

**That sounds hard. Can't you just give me a freebie?**

Okay... try the [Programmable Web API Directory](http://www.programmableweb.com/apis/directory).

## What is an API key?

While the majority of APIs are free to use, many of them require an API "key" that identifies the developer requesting data access. This is done to regulate usage and prevent abuse. Some APIs also rate-limit developers, meaning they have caps on the free data allowed during a given time period.

**Try hitting Games Radar...**

* No key: [http://api.gamesradar.com/search/gameName/pc/civ](http://api.gamesradar.com/search/gameName/pc/civ)

* With key: [http://api.gamesradar.com/search/gameName/pc/civ?api_key=579bd0ebcda04f60b4eceffafea3f915](http://api.gamesradar.com/search/gameName/pc/civ?api_key=579bd0ebcda04f60b4eceffafea3f915)

### This for That

http://itsthisforthat.com/api.php?json

### Stocks API

- http://dev.markitondemand.com/
- http://dev.markitondemand.com/Api/Quote/json?symbol=AAPL

### iTunes API

- Docs: https://www.apple.com/itunes/affiliates/resources/documentation/itunes-store-web-service-search-api.html

- API: http://itunes.apple.com/search?term=hum+stars&media=music&entity=musicTrack&limit=1

```
<% if song.preview_url %>
  <audio controls>
    <source src="<%= song.preview_url %>">
  </audio>
<% end %>
```

https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio


## OMDB API

- Build an app
  - As a user I want to search for a movie by title
  - I want to be able to click my favorite search result and see more details for that movie. It should display the movie, year, imdbrating, FULL plot and poster
  - Bonus: Add a feature to save movies to a list that you can add and remove from
