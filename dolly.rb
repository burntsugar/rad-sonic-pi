
use_bpm 60
sample :ambi_swoosh, beat_stretch: 12, amp: 5
sleep 4
16.times do
  sample :bd_haus
  sleep 0.5
end
count = 1
live_loop :foo do
  puts count
  sample :guit_em9, amp: 5, sustain: 4
  
  7.times do
    sample :guit_em9
    sleep 1
  end
  
  sleep 1
  
  live_loop :kick_drum do
    sample :bd_haus
    sleep 0.5
  end
  
  sleep 8
  
  sample :bass_trance_c, sustain: 8, amp: 5, attack: 8
  
  sleep 4
  
  sample :ambi_drone
  
  sleep 3
  
  sample :glitch_perc4, sustain: 0.2, amp: 6, attack: 2
  
  sleep 1
  
  if (count % 4 == 0)
    sample :drum_bass_hard, sustain: 1, amp: 50, attack: 1
    sleep 1
  end
  
  count += 1
end
