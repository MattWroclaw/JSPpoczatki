package paczka;

public class Counter {

    public String cyfra = "99";
    private static int couter=0;
    public int ctr(){
        return couter;
    }
    public int increaseCounter(){
        return ++couter;
    }
}
