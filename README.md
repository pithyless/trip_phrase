# TripPhrase

This gem is heavily inspired and was set in motion by Bret Victor's
article [tripphrases](http://worrydream.com/#!/tripphrase).

While the implementation may not be a one-to-one port of the original Perl
program, the actual idea and motivation behind the gem is best described
in Bret Victor's [own words](http://worrydream.com/#!/tripphrase).

## Installation

You know the drill:

```
gem install trip_phrase
```

## Usage

Just give it a password (and optionally a custom salt):

```
$ trip_phrase
Usage: trip_phrase password [salt]

$ trip_phrase secret1234
sparge my extensible whaleboat
```

## Credits

Kudos go out to [Bret Victor](http://worrydream.com/), who happens to be
working on some cool stuff you should check out.

High fives go out to [WordNet](http://wordnet.princeton.edu/), the people
who distribute the lexical database used in this gem and make it ridiculously
easy to play with the English language. :)
