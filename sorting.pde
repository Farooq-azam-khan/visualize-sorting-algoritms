Rectangle[] rectangles;  
Rectangle[] sorted_rs;  
int num_of_recs; 
void setup()
{
  size(900, 600); 
  num_of_recs = 10; 
  rectangles = new Rectangle[num_of_recs]; 
  for(int i=0; i<num_of_recs; i++)
  {
    rectangles[i] = new Rectangle(i*60 + 20); 
  }

  
  //print_sorted_rs(); 
  
  
}
void draw()
{
  background(255); 
  
  if (mousePressed)
  {
    bubble_sort();
  }
  
  
  // show each rect
  sorted_rs = new Rectangle[rectangles.length]; 
  for (int i=0; i<rectangles.length; i++)
  {
    sorted_rs[i] = new Rectangle(i*60 + 20, rectangles[i].h);
  }
  for (int i=0; i<rectangles.length; i++)
  {
    sorted_rs[i].show(); 
  }
  
}






void bubble_sort()
{
 int n = rectangles.length;
 Rectangle tempr = new Rectangle(0);
 
 for (int i=0; i<n; i++)
 {
   for (int j=1; j<n; j++)
   {
     // swap (the x coordiante and rectangle objects
     if (rectangles[j-1].compare(rectangles[j]) == -1)
     {
       tempr = rectangles[j-1];
       rectangles[j-1] = rectangles[j];
       rectangles[j] = tempr;  
     }
   }
 }
}

void print_sorted_rs()
{
  for (int i=0; i<sorted_rs.length; i++)
  {
    print(" h: " + sorted_rs[i].h + " "); 
  }
  println("");  
}

void printrs()
{
  for (int i=0; i<rectangles.length; i++)
  {
    print(" h: " + rectangles[i].h + " "); 
  }
  println("");  
}