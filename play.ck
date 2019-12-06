DJ dj;

fun void play(SndBuf music){
        music.samples() => int numSamples;
        dj.start(0.8);
        <<<"start music rate :" + dj.rate>>>;
        
        while(music.pos() <= numSamples){
            music.pos() => dj.pos;
            dj.rate => music.rate;
            
            if(Math.random2(0,44100*30) == 0){
                dj.skip();
                dj.pos => music.pos;
                <<<"Sound Skip">>>;
            }
            if(Math.random2(0,44100*30) == 0){
                dj.repeatt();
                dj.pos => music.pos;
            //music.rate() - 0.0001 => music.rate;
                <<<"Sound Repeat">>>;
            }
            1 :: samp => now;
        }
    }

SndBuf music => dac;
me.dir() + "audio/" + "Lil Wayne ft Cory Gunz - 67.wav" => music.read;

spork ~ play(music);
while(music.pos() <= music.samples()){
    1 :: samp => now;
    //music.rate() - 0.0001 => music.rate;
}
