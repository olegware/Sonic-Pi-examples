# Intro
use_bpm 150
intro = [:e4, :g4, :b4, :c5, :b4, :g4, :e4, :e4, :g4, :b4, :c5, :b4, :g4, :e4, :d4]
intro_sleep = [1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 4]

define :intro_play do
  14.times do |i|
    play intro[i]
    sleep intro_sleep[i]
  end
end

intro_play

# Chorus
chorus = [:g4, :e4, :d4, :b3, :d4, :e4, :g4, :g4, :g4, :g4, :e4, :e4, :e4, :e4, :d4, :d4, :d4, :d4, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3]
chorus_sleep = [1, 1, 1, 1, 1, 1, 2, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1]

define :chorus_play do
  26.times do |i|
    play chorus[i]
    sleep chorus_sleep[i]
  end
end

# Verse
verse = [:e4, :g4, :b4, :d5, :b4, :g4, :e4, :e4, :g4, :b4, :d5, :b4, :g4, :e4, :d4, :c4, :b3, :b3, :c4, :d4, :d4, :c4, :b3, :b3, :c4, :d4, :e4, :g4, :g4, :g4, :g4, :e4, :e4, :e4, :e4, :d4, :d4, :d4, :d4, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3]
verse_sleep = [1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1]

define :verse_play do
  48.times do |i|
    play verse[i]
    sleep verse_sleep[i]
  end
end

chorus_play

# Bridge
bridge = [:g4, :e4, :d4, :b3, :d4, :e4, :g4, :g4, :g4, :g4, :e4, :e4, :e4, :e4, :d4, :d4, :d4, :d4, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3]
bridge_sleep = [1, 1, 1, 1, 1, 1, 2, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1]

define :bridge_play do
  26.times do |i|
    play bridge[i]
    sleep bridge_sleep[i]
  end
end

bridge_play

# Chorus 2
chorus_play

# Outro
outro = [:e4, :g4, :b4, :c5, :b4, :g4, :e4, :e4, :g4, :b4, :c5, :b4, :g4, :e4, :d4]
outro_sleep = [1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 4]

define :outro_play do
  14.times do |i|
    play outro[i]
    sleep outro_sleep[i]
  end
end

outro_play