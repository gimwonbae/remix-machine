public class DJ{
    
    fun void CnS(SndBuf music,SndBuf scratch,SndBuf bgm[]){
        
        music.samples() => int numSamples;
        
        0 => bgm[0].gain => bgm[1].gain => scratch.gain;
        
        Math.random2f(Setting.start_rate-0.03,Setting.start_rate+0.03) => music.rate;
        <<<"start music rate :" + music.rate()>>>;
        
        while(true){
            
            if(Math.random2(0,44100*Setting.skip_prob) == 0){
                Math.random2(22050,66150) => int range;
                music.pos() + range => music.pos;
                <<<"Sound Skip  " + range/44100.0 + "seconds">>>;
            }
            if(Math.random2(0,44100*Setting.repeat_prob) == 0){
                music.pos() - Math.random2(22050,44100) => music.pos;
                music.rate() - 0.0001 => music.rate;
                <<<"Sound Repeat">>>;
            }
            if(Math.random2(0,44100*Setting.bgm_prob) == 0){
                Math.random2(0,1) => int random;
                0 => bgm[random].pos;
                0.1 => bgm[random].gain;
                <<<"Scrath <background>">>>;
            }
            if(Math.random2(0,44100*Setting.scratch_prob) == 0){
                0 => scratch.pos;
                1 => scratch.gain;
                0 => music.gain;
                music.pos() => int remember;
                <<<"Scrath sound">>>;
                scratch.samples() :: samp => now;
                1 => music.gain;
                remember => music.pos;
            }
            1 :: samp => now;  
        }
    }
}
