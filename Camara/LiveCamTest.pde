import gab.opencv.*;
import processing.video.*;
import java.awt.*;

PImage bigote;
PImage gorra;


Capture video;
OpenCV opencv;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE  );  

  video.start();
  
  bigote=loadImage("bigote-mario.png");
  gorra=loadImage("gorra-mario.png");
}

void draw() {
  scale(2);
  opencv.loadImage(video);
  
  imageMode(CORNER);
  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    //ellipse(faces[i].x+faces[i].width/2,faces[i].y+faces[i].height*0.7,10,10);
   
    pushMatrix();
        imageMode(CENTER);
        translate(faces[i].x+faces[i].width/2,faces[i].y+faces[i].height*0.7);
        scale(faces[i].y*0.002);
        image(bigote,0,0);
    popMatrix();
    
     pushMatrix();
        imageMode(CENTER);
        translate(faces[i].x+faces[i].width/2,faces[i].y-faces[i].height*0.2);
        scale(0.1);
        image(gorra,0,0);
    popMatrix();
  }
}

void captureEvent(Capture c) {
  c.read();
}