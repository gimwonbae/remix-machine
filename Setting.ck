public class Setting{
    50 => static int skip_prob;
    60 => static int repeat_prob;
    30 => static int bgm_prob;
    40 => static int scratch_prob;
    
    0.7 => static float start_rate;
    2 => static int repeat_time;
    1 => static int intro_status;
    
    fun void set(int s_prob, int r_prob, int b_prob, int sc_prob){
        s_prob => skip_prob;
        r_prob => repeat_prob;
        b_prob => bgm_prob;
        sc_prob => scratch_prob;
    }
}