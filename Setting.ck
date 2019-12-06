public class Setting{
    0.7 => static float start_rate;
    30 => static int skip_prob;
    30 => static int repeat_prob;
    30 => static int bgm_prob;
    30 => static int scratch_prob;
    
    fun void all_set(float s_rate, int s_prob, int r_prob, int b_prob, int sc_prob){
        s_rate => start_rate;
        s_prob => skip_prob;
        r_prob => repeat_prob;
        b_prob => bgm_prob;
        sc_prob => scratch_prob;
    }
}