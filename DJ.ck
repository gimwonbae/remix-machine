public class DJ{
    static float rate;
    static int pos;
    static int pos_record;
    
    fun void start(float startRate){
        Math.random2f(startRate-0.03,startRate+0.03) => rate;
    }
    fun void skip(){
        Math.random2(22050,66150) => int range;
        pos + range => pos;
    }
    fun void repeatt(){
        pos - Math.random2(22050,66150) => pos;
    }
}