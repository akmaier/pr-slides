ICA step by step:

***Source files***
1. Audio clip of Prof. Maier (sourceX.wav)
2. Piano played in GarageBand app(iPad) (souceY.wav)

***Mixing of two***
1. Import the audio clip of Prof. Maier in GarageBand
2. Add another instrument and play Piano/ import previously saved Piano(music)
3. For mic1 select the piano part and decrease the track volume so that we can hear the voice of Prof. a bit louder.
4. Export the file as mixedXstereo.wav file
5. For mic2 we do the opposite i.e. decrease the track volume of Prof.
6. Export the file as mixedYstereo.wav file

***Convert stereo/multichannel audio files to mono***
1. Install SoX module(https://pypi.org/project/sox/)
2. cmd command: sox mixedXstereo.wav -c 1 mixedX.wav
3. Use the same sox command to convert other files to mono.

***Running ICA algo***
1. We use the code from https://github.com/vishwajeet97/Cocktail-Party-Problem
2. We place the sourceX.wav, sourceY.wav, mixedX.wav, mixedY.wav file in the sound folder and then run the sound_FastICA_FOBI.py file.
3. The separated audios will be stored in the sound directory.