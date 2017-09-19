ArrayList <particula> particulas;

void setup(){
  size (720,480);
 
  particulas = new ArrayList<particula>();
  for (int i=0; i<0; i++)
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
    v=random(20);
    a=random(TWO_PI);
    t=random(50);
    c=color(random(255),random(255),random(255));
  }
  
  
  particula (float x_,float y_){
    x=x_;
    y=y_;
    v=random(10);
    a=random(TWO_PI);
    t=random(1,30);
    c=color(random(255),random(255),random(255));
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
    x += (cos(v))*1.3;
    y += (sin(a))*1.3;
    
  }
}