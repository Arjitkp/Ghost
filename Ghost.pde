
Particle[] particles = new Particle[50000];
PVector l;
int k = 0;
float n = random(10);
PVector j = new PVector(0,0); 
PVector [] pp = new PVector[50000];



void setup(){
  fullScreen(JAVA2D); //(500,500,P2D);
  smooth();
   background(255);
   //frameRate(30);
for(float i = 10; i<=width-10; i+=0.25){
  l = new PVector(i+(random(-0.5,0.5)),height/2);
  particles[k] = new Particle(l);
  pp[k] = l;
  
  k = k+1;
}
}


void draw(){
   

//strokeWeight(0.25);
  particles[0].move(j);
 particles[0].edges();



  for(int i =1; i<k;i++){
    
  particles[i].move(particles[i-1].w);
  particles[i].edges();
  //particles[i].display();

      
      
   //  stroke(0,pp);//stroke(0,90);
   
    particles[i].display();
    
    pp[i] = particles[i].location;
}

      
//saveFrame("waterfall-####.png");
//println(frameRate);
}




  