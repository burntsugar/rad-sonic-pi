#################################
# Referencing external samples...
#################################

# Play sample by path and name
sample "~/my-sonic-pi/sonic-samples/solenoid_samples_1/hit_3.wav"
sleep 1

# Reference the solenoid_samples directory in my home (~/) directory...
solenoid = "~/my-sonic-pi/sonic-samples/solenoid_samples_1/"

# Play sample by name
sample solenoid, "hit_3.wav"
sleep 1

# Play the first sample...
sample solenoid, 0
sleep 1

#Play the second sample
sample solenoid, 1
sleep 1

# Play the first 10 samples...
0.upto 10 do |value|
  puts sample solenoid, value
  sleep 1
end

# TODO...
# Play all external samples in a given directory.

# Note: Samples are sorted by sp.
