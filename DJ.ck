public class DJ{
    fun void skip(SndBuf music){
        Math.random2(22050,66150) => int range;
        music.pos() + range => music.pos;
        <<<"Sound Skip  " + range/44100.0 + "seconds">>>;
    }
    fun void repeatt(SndBuf music){
        Math.random2(22050,44100) => int range;
        music.pos() - range => int target => music.pos;
        0 => int flag;
        while(flag < Setting.repeat_time){
            if(music.pos() == target){
                music.pos() - range => music.pos;
                flag++;
            }
            1 :: samp => now;
        }
        <<<"Sound Repeat">>>;
    }
    fun void play_bgm(SndBuf bgm[]){
        Math.random2(0,bgm.cap()-1) => int random;
        0 => bgm[random].pos;
        Math.random2f(0.2,0.4) => bgm[random].gain;
        <<<"Scrath <background> file number : " + (random+1)>>>;
    }
    fun void play_scratch(SndBuf music,SndBuf scratch){
        0 => scratch.pos;
        1 => scratch.gain;
        0 => music.gain;
        music.pos() => int remember;
        <<<"Scrath sound">>>;
        scratch.samples() :: samp => now;
        1 => music.gain;
        remember => music.pos;
    }
    fun void CnS(SndBuf music,SndBuf scratch,SndBuf bgm[],SndBuf intro){
        
        music.samples() => int numSamples;
        
        for(0 => int i; i < bgm.cap(); i++){
            0 => bgm[i].gain;
        }
        0 => scratch.gain;
        0 => intro.gain;
        
        if(Setting.intro_status){
            1 => intro.gain;
        }
        
        Math.random2f(Setting.start_rate-0.015,Setting.start_rate+0.015) => music.rate;
        <<<"start music rate :" + music.rate()>>>;
        
        while(music.pos() <= numSamples){
            
            if(Math.random2(0,44100) * Math.random2(0,Setting.skip_prob) == 1){
                skip(music);
            }
            if(Math.random2(0,44100) * Math.random2(0,Setting.repeat_prob) == 1){
                repeatt(music);
            }
            if(Math.random2(0,44100) * Math.random2(0,Setting.bgm_prob)== 1){
                play_bgm(bgm);
            }
            if(Math.random2(0,44100) * Math.random2(0,Setting.scratch_prob) == 1){
                play_scratch(music,scratch);
            }
            1 :: samp => now;  
        }
    }
}
