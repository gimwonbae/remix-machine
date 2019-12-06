DJ dj;
Setting setting;

SndBuf bgm[2] => dac;
SndBuf scratch => dac;

me.dir() + "audio/dj-bgm-" + "1.wav" => bgm[0].read;
me.dir() + "audio/dj-bgm-" + "2.wav" => bgm[1].read;
me.dir() + "audio/dj-" + "scratch.wav" => scratch.read;

SndBuf music => dac;

me.dir() + "audio/" + "black.wav" => music.read;
//SndBuf vinyl => dac;

spork ~ dj.CnS(music,scratch,bgm);
3 :: minute => now;