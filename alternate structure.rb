use_bpm 90

# Intro
intro = (ring :g4, :c5, :eb5, :a5, :ab5, :c6, :g5)
intro_sleep = (ring 0.75, 0.5, 0.25, 1, 0.25, 0.5, 1)

define :intro_play do
  7.times do |i|
    play intro[i], pan: rrand(-1, 1), release: 1.5
    sleep intro_sleep[i]
  end
end

# Bridge
bridge = (ring :eb4, :ab4, :eb5, :c5, :gb5, :c6)
bridge_sleep = (ring 0.5, 0.5, 1, 1, 0.5, 1.5)

define :bridge_play do
  6.times do |i|
    play bridge[i], pan: rrand(-1, 1), release: 1.5
    sleep bridge_sleep[i]
  end
end

# Chorus
chorus = (ring :g5, :c6, :eb6, :a6, :ab6, :c7, :g6)
chorus_sleep = (ring 0.75, 0.5, 0.25, 1, 0.25, 0.5, 1)

define :chorus_play do
  7.times do |i|
    play chorus[i], pan: rrand(-1, 1), release: 1.5
    sleep chorus_sleep[i]
  end
end

# Ending
ending = (ring :g4, :eb4, :c5, :g5, :ab5, :c6, :g6, :c6, :ab5, :g5, :c5, :eb4, :g4)
ending_sleep = (ring 0.5, 0.5, 1, 1, 0.5, 0.5, 2, 1, 1, 1, 1, 1, 1)

define :ending_play do
  13.times do |i|
    play ending[i], pan: rrand(-1, 1), release: 1.5
    sleep ending_sleep[i]
  end
  
  # Final chord
  play_chord [:g4, :c5, :g5, :ab5, :c6, :g6], sustain: 4, release: 4, pan: rrand(-1, 1)
  sleep 4
end

# Structure
2.times do
  intro_play
end

2.times do
  bridge_play
end

3.times do
  chorus_play
end

2.times do
  bridge_play
end

1.times do
  ending_play
end