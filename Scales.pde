void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
for(int y = 80; y < 2000; y+=50)
for(int x = -200; x< 2000; x+=80)
scale(x,y);
}
void scale(int x, int y) {
  // Base Shape
  noStroke();
  fill((int)(Math.random()*226),(int)(Math.random()* 226),(int)(Math.random()*226));
  beginShape();
  curveVertex(x,y);
  curveVertex(x,y);
  curveVertex(x-100,y-80);
  curveVertex(x+100,y-80);
  curveVertex(x+100,y-80);
  endShape();
// Start of Light Yellow Gradient
int opacity = 50;
int xForFirstPoint = x-80;
int xForLastPoint = x-80;
int yForFirstPoint = y-50;
int yForLastPoint = y - 85;
while(xForFirstPoint <= x+80 && yForFirstPoint <= y+50 && xForLastPoint <= x-10 && opacity > -1){
fill(249,211,105,opacity);
beginShape();
curveVertex(xForFirstPoint,yForFirstPoint);
curveVertex(xForFirstPoint,yForFirstPoint);
curveVertex(x-105,y-79);
curveVertex(xForLastPoint,yForLastPoint);
curveVertex(xForLastPoint,yForLastPoint);
endShape();
opacity -= 1;
xForFirstPoint += 5;
yForFirstPoint += 3;
xForLastPoint += 10;
}
// Start of Dark Brown Gradient
int oop = 30;
int xForTriangle = x+100;
y = y-80;
while(xForTriangle > x+30 && oop > -1){
fill(134,89,2,oop);
triangle(x,y+80,x+100,y,xForTriangle,y);
oop -= 2;
xForTriangle -= 9;
}

}

