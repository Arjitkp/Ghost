class Particle{
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector w;
  
  Particle(PVector l){
  location = new PVector(l.x,l.y);
  velocity =  new PVector(0,0);
  acceleration = new PVector(random(-0.5,0.5),random(-0.5,0.5));
  w = new PVector(0,0);
  }
  
  void move(PVector s){
    acceleration.normalize();
    acceleration.mult(random(-0.002,0.002)); // regular velocity change
    w = PVector.add(s,acceleration);
    velocity.add(w);
    //velocity.limit(10);
    location.add(velocity); 
    
  }
  
  void display(){
    stroke(50,10);
     point(location.x,location.y);
    
    
  }
    void edges(){
      if(location.y>=height-10){
        location.y = height-10;}
        else if(location.y<=10){
          location.y = 10;
        }
    if(location.x>=width-10){
      location.x = width-10;
    }else if(location.x <= 10){
      location.x=10;}
      
        
        

    }
}