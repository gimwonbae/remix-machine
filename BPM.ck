public class BPM
{
    static float rate;
    
    fun void start(float StartBPM){
        Math.random2f(StartBPM-0.05,StartBPM+0.05) => rate;
    }
}