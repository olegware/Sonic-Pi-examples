use_bpm 150
use_random_seed 20230419

define :polyrhythm do |base_time, rhythm1, rhythm2|
  in_thread do
    rhythm1.length.times do |i|
      sample rhythm1[i]
      sleep base_time * rhythm2[i]
    end
  end
end

define :melody do |notes, durations|
  in_thread do
    notes.length.times do |i|
      play notes[i]
      sleep durations[i]
    end
  end
end

# Intro
intro_rhythm1 = (ring :bd_808, :sn_dub, :drum_cymbal_closed)
intro_rhythm2 = (ring 3, 5, 7)
intro_melody = (ring :e4, :g4, :a4, :b4)
intro_durations = (ring 0.75, 0.75, 0.75, 0.75)

2.times do
  polyrhythm(0.25, intro_rhythm1, intro_rhythm2)
  melody(intro_melody, intro_durations)
  sleep 15 * 0.25
end

# Middle
middle_rhythm1 = (ring :bd_808, :sn_dub, :drum_cymbal_closed, :drum_cymbal_open)
middle_rhythm2 = (ring 3, 7, 5, 4)
middle_melody = (ring :e5, :d5, :c5, :b4, :a4, :g4)
middle_durations = (ring 0.75, 0.75, 0.5, 0.5, 0.75, 0.75)

2.times do
  polyrhythm(0.25, middle_rhythm1, middle_rhythm2)
  melody(middle_melody, middle_durations)
  sleep 19 * 0.25
end

# End
end_rhythm1 = (ring :bd_808, :sn_dub, :drum_cymbal_closed)
end_rhythm2 = (ring 3, 5, 7)
end_melody = (ring :e4, :g4, :a4, :b4)
end_durations = (ring 0.75, 0.75, 0.75, 0.75)

2.times do
  polyrhythm(0.25, end_rhythm1, end_rhythm2)
  melody(end_melody, end_durations)
  sleep 15 * 0.25
end

