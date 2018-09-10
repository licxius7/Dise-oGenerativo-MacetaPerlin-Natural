int paso = 200;
int radio =100;
int tVector = 50;
float z;
void setup(){
  size(500,500);
}

void draw(){
  //noFill();
  z = mouseX*0.1;
  background(255);
  //stroke(1);
  beginShape();
  for (int i=0; i< paso; i+= 1){
      float px = 250+cos(TWO_PI/paso*i)*radio;
      float py = 250+sin(TWO_PI/paso*i)*radio;
      float dx= map(noise(px*0.015,z),0,1,tVector,-tVector);
      float dy= map(noise(py*0.015,z),0,1,tVector,-tVector);
    vertex(px+dx,py+dy);
  }
  endShape(CLOSE);

}
void keyPressed(){
  if (key == 's'){
  saveFrame("perimetro-####.jpg");
  }
}