# Intro
use_bpm 150

intro = [:e4, :g4, :b4, :c5, :b4, :g4, :e4, :e4, :g4, :b4, :c5, :b4, :g4, :e4, :d4]
intro_bass = [:e2, :g2, :b2, :c3, :b2, :g2, :e2, :e2, :g2, :b2, :c3, :b2, :g2, :e2, :d2]
intro_sleep = [1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 4]

define :intro_play do
  in_thread do
    14.times do |i|
      play intro[i]
      play intro_bass[i], amp: 0.8
      sleep intro_sleep[i]
    end
  end
  
  in_thread do
    7.times do
      sample :drum_cymbal_closed
      sleep 2
    end
  end
end

# Call intro_play function to play the intro
intro_play

# Chorus
chorus = [:g4, :e4, :d4, :b3, :d4, :e4, :g4, :g4, :g4, :g4, :e4, :e4, :e4, :e4, :d4, :d4, :d4, :d4, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3]
chorus_harmony = [:e4, :c4, :b3, :g3, :b3, :c4, :e4, :e4, :e4, :e4, :c4, :c4, :c4, :c4, :b3, :b3, :b3, :b3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3]
chorus_bass = [:g2, :e2, :d2, :b1, :d2, :e2, :g2, :g2, :g2, :g2, :e2, :e2, :e2, :e2, :d2, :d2, :d2, :d2, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1]
chorus_sleep = [1, 1, 1, 1, 1, 1, 2, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1]

define :chorus_play do
  in_thread do
    26.times do |i|
      play chorus[i]
      play chorus_harmony[i], amp: 0.6
      play chorus_bass[i], amp: 0.8
      sleep chorus_sleep[i]
    end
  end
  
  in_thread do
    13.times do
      sample :drum_bass_soft
      sleep 2
    end
  end
end



# Verse
verse = [:e4, :g4, :b4, :d5, :b4, :g4, :e4, :e4, :g4, :b4, :d5, :b4, :g4, :e4, :d4, :c4, :b3, :b3, :c4, :d4, :d4, :c4, :b3, :b3, :c4, :d4, :e4, :g4, :g4, :g4, :g4, :e4, :e4, :e4, :e4, :d4, :d4, :d4, :d4, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3]
verse_harmony = [:c4, :e4, :g4, :b4, :g4, :e4, :c4, :c4, :e4, :g4, :b4, :g4, :e4, :c4, :b3, :a3, :g3, :g3, :a3, :b3, :b3, :a3, :g3, :g3, :a3, :b3, :c4, :e4, :e4, :e4, :e4, :c4, :c4, :c4, :c4, :b3, :b3, :b3, :b3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3, :g3]
verse_bass = [:e2, :g2, :b2, :d3, :b2, :g2, :e2, :e2, :g2, :b2, :d3, :b2, :g2, :e2, :d2, :c2, :b1, :b1, :c2, :d2, :d2, :c2, :b1, :b1, :c2, :d2, :e2, :g2, :g2, :g2, :g2, :e2, :e2, :e2, :e2, :d2, :d2, :d2, :d2, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1]

verse_sleep = [1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1]

define :verse_play do
  in_thread do
    
    48.times do |i|
      play verse[i]
      play verse_harmony[i], amp: 0.6
      play verse_bass[i], amp: 0.8
      sleep verse_sleep[i]
    end
  end
  
  chorus_play
  
  in_thread do
    26.times do
      sample :drum_bass_soft
      sleep 2
    end
  end
  
  verse_play
  
  chorus_play
  
  # Bridge
  bridge = [:g4, :e4, :d4, :b3, :d4, :e4, :g4, :g4, :g4, :g4, :e4, :e4, :e4, :e4, :d4, :d4, :d4, :d4, :b3, :b3, :b3, :b3, :b3, :b3, :b3, :b3]
  bridge_harmony = [:b4, :g4, :f4, :d4, :f4, :g4, :b4, :b4, :b4, :b4, :g4, :g4, :g4, :g4, :f4, :f4, :f4, :f4, :d4, :d4, :d4, :d4, :d4, :d4, :d4, :d4]
  bridge_bass = [:g2, :e2, :d2, :b1, :d2, :e2, :g2, :g2, :g2, :g2, :e2, :e2, :e2, :e2, :d2, :d2, :d2, :d2, :b1, :b1, :b1, :b1, :b1, :b1, :b1, :b1]
  
  bridge_sleep = [1, 1, 1, 1, 1, 1, 2, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1]
  
  define :bridge_play do
    26.times do |i|
      play bridge[i]
      play bridge_harmony[i], amp: 0.6
      play bridge_bass[i], amp: 0.8
      sleep bridge_sleep[i]
    end
  end
  
  bridge_play
  
  in_thread do
    13.times do
      sample :drum_bass_soft
      sleep 2
    end
  end
  
  bridge_play
  
  chorus_play
  
  # Outro
  outro = [:e4, :g4, :b4, :c5, :b4, :g4, :e4, :e4, :g4, :b4, :c5, :b4, :g4, :e4, :d4]
  outro_harmony = [:g4, :b4, :d5, :e5, :d5, :b4, :g4, :g4, :b4, :d5, :e5, :d5, :b4, :g4, :f4]
  outro_bass = [:e2, :g2, :b2, :c3, :b2, :g2, :e2, :e2, :g2, :b2, :c3, :b2, :g2, :e2, :d2]
  
  outro_sleep = [1, 1, 1, 0.5, 0.5, 1, 1, 1, 1, 1, 1, 0.5, 0.5, 1, 4]
  
  define :outro_play do
    14.times do |i|
      play outro[i]
      play outro_harmony[i], amp: 0.6
      play outro_bass[i], amp: 0.8
      sleep outro_sleep[i]
    end
  end
  
  in_thread do
    7.times do
      sample :drum_bass_soft
      sleep 2
    end
  end
  
  outro_play
end



