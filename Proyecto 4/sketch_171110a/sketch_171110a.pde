import processing.sound.*;

PImage fuente;
ArrayList <Figura> figuras;
float lado = 60;
float altura = sqrt(sq(lado) - sq(lado/2f));
float apotema = lado/ 2*tan(PI/6f);
float radio = altura - apotema;
float delta = 0;
float scale=5;
float smooth_factor=0.25;
float sum;

SoundFile sample;
Amplitude rms;


  void setup()
  {
    size(1280,720,P3D);
    figuras = new ArrayList<Figura>();
    for (float j = radio; j<=height; j+= altura){
      int paso = (round((j - radio)/altura));
      float offset =0;
      if (paso%2 == 0){
        offset = lado/2f;
      }
    for (float i =-offset; i<=width; i+= lado){
      figuras.add(new Triangulo(i,j,lado,0));
      }
    for (float i =lado/2f-offset; i<=width; i+= lado){
      figuras.add(new Triangulo(i,j-apotema,lado,PI));
      }
    }  
    fuente = loadImage("f.jpg");
    
     sample = new SoundFile(this, "beat.aif");
    sample.loop();
    
    rms = new Amplitude(this);
    rms.input(sample);
    
  }
 
  
  void draw()
  {
    

    
//delta += 0.01; 
  background(255);
  noStroke();
  fill(0);
  for (Figura f: figuras){
    f.display();
    }
  sum += (rms.analyze() - sum) * smooth_factor;  
  float rms_scaled=sum*(height/2)*scale;
  
  
  fill(0,rms_scaled,255);
  ellipse(width/2, height/2, rms_scaled*1.03, rms_scaled*1.03);
  
  fill(255,rms_scaled,255);
  ellipse(width/2, height/2, rms_scaled*1.02, rms_scaled*1.02);
  
  fill(55,150+rms_scaled,155);
  ellipse(width/2, height/2, rms_scaled*1.01, rms_scaled*1.01);
  
  fill(rms_scaled);
  ellipse(width/2, height/2, rms_scaled*1.0, rms_scaled*1.0);
  
  fill(rms_scaled/2,rms_scaled/2,rms_scaled/3);
  ellipse(width/2, height/2, rms_scaled*0.9, rms_scaled*0.9);
  
  fill(rms_scaled,rms_scaled,rms_scaled);
  ellipse(width/2, height/2, rms_scaled*0.5, rms_scaled*0.5);
  }


  interface Figura
  {
    float perimetro ();
    float area ();
    void display();
  }
  
  class Triangulo implements Figura
  {
    float x,y,l,rc,ri,a,a1,deltax,deltay,h,b,rota;
    boolean active;
    Triangulo (float x_,float y_,float l_, float rota_)
    {
      x=x_;
      y=y_;
      l=l_;
      rc=sqrt(3*l*l)/3.3;//  -Aqui
      b=l;
      a1=2*PI/3.0;//Aqui
      rota = rota_;
      active = true;
    }

   float perimetro ()
  {
      return l*3;
  }
  float area ()
  {
    return ((l*l)*(sqrt(3)))/4;
  }
  
  
  void display()
  {
    float rms_scaled=sum*(height/4)*scale;
  if(active){
    fill (random(rms_scaled*3),random(rms_scaled*0.6),random(rms_scaled*0.8));
    pushMatrix();
    translate(x,y);
    rotate(HALF_PI - PI/3 + rota);
    beginShape();
    for(float a = 0;a<=TWO_PI;a+=a1)//aqui
    {
      deltax=cos(a)*rc;
      deltay=sin(a)*rc;
      vertex(deltax,deltay);
    }  
   endShape(CLOSE);
    popMatrix();
    }
  }

}