package sources;
import java.lang.Integer;

public class itemsCounter {
    
    private float itemscafe, itemssugar , itemswater;
    public itemsCounter(){
        itemscafe=0;
        itemssugar=0;
        itemswater=0;
    }

    public float getCafe() {
        return itemscafe;
    }
    public float getSugar() {
        return itemssugar;
    }
    public float getWater(){
        return itemswater;
    }

    public void setCafe(float itemcafecnt) {
        
        itemscafe = itemcafecnt;
    }
    public void setSugar(float itemsugarcnt) {
      
        itemssugar=itemsugarcnt;
      
    }
    public void setWater(float itemwatercnt) {
       
        itemswater = itemwatercnt;
       
    }

    
}
