class Bubble{

    float x, y;
    float radius;
    
    Bubble(){
        x = width/2;
        y = height;
        radius = 10;
    }
    
    void ascend(){
        y--;
    }
    
    void display(){
        
        stroke(255, 0, 0);
        fill(255, 0, 0);
        ellipse(x, y, radius, radius);
    }
    
    void grow(){
        radius += 10;
    }
    
    void pop(){
        if(y*2-radius<10){
            radius = 0;
        }
    }
}
