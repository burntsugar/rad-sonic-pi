# Samples from the Flume sample pack https://edm.com/news/flume-sounds-sample-pack

flume = "~/my-sonic-pi/sonic-samples/Flume Sounds 1/"

use_bpm 60

fin = 0.675

print sample_duration flume, 2, start: 0.640, finish: fin, rate: 0.5
print sample_duration flume, 2, start: 0.625, finish: 0.6562, rate: 0.5
print sample_duration flume, 2, slice: 30, rate: 5, attack: 2
print sample_duration flume, 2, slice: 15
print sample_duration flume, 2, slice: 55, rate: 5
print sample_duration flume, 6, amp: 2, start: 0.599, finish: 0.79, rate: 0.90, release: 2

live_loop :boomp do
  puts "terp"
  1.times do
    sleep 1
    boomp_dur += 1
    
    sample flume, 2, start: 0.640, finish: fin, rate: 0.5
    sleep sample_duration flume, 2, start: 0.640, finish: fin, rate: 0.5
    
    sample flume, 2, start: 0.625, finish: 0.6562, rate: 0.5
    sleep sample_duration flume, 2, start: 0.625, finish: 0.6562, rate: 0.5
    
    sample flume, 2, start: 0.640, finish: fin, rate: 0.5
    sleep sample_duration flume, 2, start: 0.640, finish: fin, rate: 0.5
    
    sleep 0.2
    sample flume, 2, slice: 30, rate: 5, attack: 2
    
    sample flume, 2, start: 0.625, finish: 0.6562, rate: 0.5, amp: 2
    sleep sample_duration flume, 2, start: 0.625, finish: 0.6562, rate: 0.5, amp: 2
    
    sample flume, 2, slice: 15
    sample flume, 2, slice: 55, rate: 5
    sleep (sample_duration flume, 2, slice: 15) -1
  end
  with_fx :reverb, room: 1 do
    sleep 1
    sample flume, 2, slice: 30, rate: 5, attack: 2
    sleep 1
    sample flume, 6, amp: 2, start: 0.599, finish: 0.79, rate: 0.90, release: 2
    sleep 0.10
    sample flume, 6, amp: 2, start: 0.599, finish: 0.79, rate: 0.90, release: 2
    sleep (sample_duration flume, 6, amp: 2, start: 0.599, finish: 0.79, rate: 0.90) - 1.5
  end
end
