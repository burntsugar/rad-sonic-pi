# Samples from the Flume sample pack https://edm.com/news/flume-sounds-sample-pack

flume = "~/my-sonic-pi/sonic-samples/Flume Sounds 1/"

use_bpm 60

rel = 1
fin = 0.675

print sample_duration flume, 2, start: 0.640, finish: fin, rate: 0.5
print sample_duration flume, 2, start: 0.625, finish: fin, rate: 0.5, amp: 2, release: 1
boomp_duration = 1.0 + 2.46 + 2.52 + 1
puts boomp_duration

live_loop :boomp do
  sleep 1
  sample flume, 2, start: 0.640, finish: fin, rate: 0.5
  sleep 2.46
  sample flume, 2, start: 0.625, finish: fin, rate: 0.5, amp: 2, release: 1
  sleep 2.52
end
