require "google/cloud/speech"

speech = Google::Cloud::Speech.new

audio = speech.audio "path/to/audio.raw",
                     encoding: :linear16,
                     language: "en-US",
                     sample_rate: 16000

results = audio.recognize
result = results.first
result.transcript #=> "how old is the Brooklyn Bridge"
result.confidence #=> 0.9826789498329163