Setting setting;
DJ dj;

//0.8 => setting.start_rate;

//setting.set(int s_prob, int r_prob, int b_prob, int sc_prob);
//setting.set(30,30,30,30);

//0 => setting.intro_status;

SndBuf bgm[2] => dac;
SndBuf scratch => dac;
SndBuf intro => dac;
me.dir() + "audio/dj-bgm-" + "1.wav" => bgm[0].read;
me.dir() + "audio/dj-bgm-" + "2.wav" => bgm[1].read;
me.dir() + "audio/" + "dj-intro.wav" => intro.read;
//me.dir() + "audio/dj-bgm-" + "3.wav" => bgm[2].read;
//me.dir() + "audio/dj-bgm-" + "4.wav" => bgm[3].read;
//me.dir() + "audio/dj-bgm-" + "5.wav" => bgm[4].read;
//me.dir() + "audio/dj-bgm-" + "6.wav" => bgm[5].read;
//me.dir() + "audio/dj-bgm-" + "7.wav" => bgm[6].read;

me.dir() + "audio/dj-" + "scratch.wav" => scratch.read;

SndBuf music => dac;

me.dir() + "audio/" + "black.wav" => music.read;

spork ~ dj.CnS(music,scratch,bgm,intro);
5 :: minute => now;