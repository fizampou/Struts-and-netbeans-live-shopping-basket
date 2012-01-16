package sources;


public class totalCounter {
    private float totalcafe, totalsugar , totalwater, totalsum;
    public totalCounter(){
        totalcafe=0;
        totalsugar=0;
        totalwater=0;
        totalsum=0;
    }

    public float getCafe() {
        return totalcafe;
    }
    public float getSugar() {
        return totalsugar;
    }
    public float getwater() {
        return totalwater;
    }
    public float getSum(){
        return totalcafe + totalsugar + totalwater;
    }

    public void setCafe(float itemcafecnt) {
        double totalprice = itemcafecnt*18.5;
        totalcafe = (float)totalprice;
    }
    public void setSugar(float itemsugarcnt) {
        double totalprice = itemsugarcnt*6.95;
        totalsugar = (float)totalprice;
    }
    public void setWater(float itemwatercnt) {
        double totalprice = itemwatercnt*1.29;
        totalwater = (float)totalprice;
    }
    
}
