class Rectangle
{
  int x; 
  int y; 
  int h; 
  int c; 
  int w; 
  Rectangle(int x)
  {
    this.x = x;
    this.y = 500; 
    this.h = - (int) random(50, 200); 
    this.c = (int) random(0, 255); 
    this.w = 50; 
  }
  Rectangle(int x, int h)
  {
    this.x = x;
    this.y = 500; 
    this.h = h;  
    this.w = 50;
  }
  
  int compare(Rectangle other)
  {
    if (this.h > other.h){return 1;}
    else if (this.h < other.h) {return -1; }
    else return 0; 
  }
  void show()
  {
    fill(20, 50, 10, 100); 
    stroke(0); 
    strokeWeight(2); 
    rect(this.x, this.y, this.w, this.h);     
  }
}