# Lyrical
Lyrical is a Ruby gem intended to facilitate fetching lyrics to songs.

I hate song lyrics websites as much as the next guy so hopefully this makes it easier to find those lyrics the next time you desperately need to know if there's "a bathroom on the right" or not.

## Library Usage
    require 'lyrical'
    potential_songs = Lyrical::LyricsFinder.find("Radiohead Reckoner") # => [ <#Lyrical::Lyric>, ... ]
    lyrics = Lyrical::Lyric.fetch(potential_songs.first) # => <#Lyrical::Lyric>, responds to to_s

## Commandline Usage
    lyrical "Thrice Deadbolt"
    # Found 5 matches: ...
    # Lyrics for (0 for new search): 1
    When deadbolts awake you from deja vu dreams
    ...

## Notes
Requires hpricot for now, maybe I'll get rid of it later.

## Copyright
Copyright (c) 2010 latortuga

Lyrical is released under the terms of the MIT License, see LICENSE for more details.
