ArrayList <particula> particulas;

void setup(){
  size (720,480);
 
  particulas = new ArrayList<particula>();
  for (int i=0; i<100; i++)
  {
    particulas.add(new particula());
  }
}




void draw(){
  background(0);
  for (particula p: particulas)
  {
    p.display();
    p.movimiento();
    p.rebotar();
  }
}




void mousePressed(){
  particula foo= new particula(mouseX,mouseY);
  particulas.add(foo);
}




class particula{
  float x;
  float y;
  float v;
  float a;
  float t;
  float an1;
  float an2;
  color c;
  particula (float x_, float y_, float v_, float a_, float t_, color c_){
    x=x_;
    y=y_;
    v=v_;
    a=a_;
    t=t_;
    c=c_;
    
  }

  
  particula (){
    x=random(720);
    y=random(480);
    v=random(10);
    a=random(180);
    t=random(50);
    c=color(random(255),random(255),random(255));
    an1=cos(a);
    an2=sin(a);
  }
  
  
  particula (float x_,float y_){
    x=x_;
    y=y_;
    v=random(10);
    a=random(180);
    t=random(50);
    c=color(random(255),random(255),random(255));
    an1=cos(a);
    an2=sin(a);
    
  }
  
  
  void display(){
    pushMatrix();
    translate(x,y);
    noStroke();
    fill (c);
    ellipse (0,0,t,t);
    popMatrix();
  }
  
  
  void movimiento(){
   
   
   x+=an1*v;
   y+=an2*v;
    
  }
  
  void rebotar(){
    if(x>=720 || x<=0){
      
      an1*=-1;
    }
    if(y>=480 || y<=0){
     
      an2*=-1;
    }
  }
}
