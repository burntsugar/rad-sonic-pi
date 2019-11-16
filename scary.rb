
##| loop do
##|   use_synth :dsaw
##|   play :fs3
##|   sleep 0.2
##|   play :fs1
##|   sleep 0.4
##|   play :fs4
##|   sleep 0.2

##|   use_synth :chiplead
##|   play :fs2
##|   play :fs4
##|   use_synth :dsaw
##|   play :fs3
##|   play :fs1

##|   sleep 0.4
##|   play :fs5
##|   sleep 0.4
##|   play :fs4

##|   with_fx :echo, mix: 0.9, phase: 0.1 do
##|     sample :guit_em9, rate: 1
##|   end
##| end
inc = 0.1
loop do
  with_fx :echo, mix: 0.9, phase: inc do
    sample :guit_em9, rate: inc
  end
  inc += 0.5
  sleep 1
end

