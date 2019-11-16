
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
##| live_loop :rkambi do
##|   sample :ambi_swoosh, beat_stretch: 2, amp: 5
##|   sleep 2
##| end

##| live_loop :bd do
##|   sample :ambi_choir, beat_stretch: 8, amp: 5
##|   sleep 8
##| end



##| live_loop :rad do
##|   8.times do
##|     sample :elec_ping, rate: [0.9, 1.0, 1.1].choose
##|     sleep 0.1
##|   end
##|   sample :elec_ping, amp: 5
##|   8.times do
##|     sample :elec_ping, rate: [0.9, 1.0, 1.1].choose
##|     sleep 0.2
##|   end
##|   sample :elec_ping, amp: 5

##| end


##| use_synth :dpulse

##| with_fx :reverb, room: 0.5 do
##|   8.times do
##|     play (scale 80, :minor_pentatonic).choose, release: rrand(0.05,0.2)
##|     sleep 0.125;
##|   end
##| end

##| sample :guit_e_fifths
##| sample :tabla_dhecr


##| live_loop :rad do
##|   with_fx :reverb, room: 1 do
##|     note = 10
##|     4.times do
##|       use_synth :piano
##|       play note
##|       sleep 1
##|       note += 10
##|     end
##|   end
##| end

##| live_loop :rad2 do
##|   with_fx :flanger, room: 1 do
##|     note = 50
##|     4.times do
##|       use_synth :prophet
##|       play note
##|       sleep 1
##|       note -= 10
##|     end
##|   end
##| end

##| attk = 1

##| live_loop :rad1 do
##|   loop do
##|     sample :bass_hard_c, attack: attk
##|     ##| attk += 0.5
##|     sleep 0.1
##|   end

##| end

##| live_loop :rad2 do
##|   8.times do

##|     sleep 1
##|   end
##| end





