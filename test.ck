SndBuf music => dac;
me.dir() + "/audio/" + "crank_that.wav" => music.read;

BPM tempo;
tempo.start(0.8);

music.samples() => int numSamples;
0 => music.pos;
tempo.rate => music.rate;
for(0 => int i; i+1 < numSamples; i++){
    i :: samp => now;
    music.rate() - 0.0001 => music.rate;
    <<<music.rate()>>>;
}