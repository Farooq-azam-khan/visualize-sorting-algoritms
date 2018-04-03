Rectangle[] rectangles;  
Rectangle[] sorted_rs;  
int num_of_recs; 
int mouse_used; 

void setup()
{
  size(900, 600); 
  num_of_recs = 15; 
  mouse_used = 0; 
  rectangles = new Rectangle[num_of_recs]; 
  for(int i=0; i<num_of_recs; i++)
  {
    rectangles[i] = new Rectangle(i*60 + 20); 
  }
}
void draw()
{
  background(255); 
  
  
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


void bubble_sort_mouse(int get)
{
  System.out.println(get); 
   int n = rectangles.length; 
 Rectangle tempr = new Rectangle(0);
 
 if (get < rectangles.length)
 {
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
 
}

// meat of the code
void mousePressed()
{
  for (int j=1; j<rectangles.length; j++)
  {
    // swap (the x coordiante and rectangle objects
    if (rectangles[j-1].compare(rectangles[j]) == -1)
    {
      Rectangle tempr = new Rectangle(0);
      tempr = rectangles[j-1];
        rectangles[j-1] = rectangles[j];
        rectangles[j] = tempr;
      }
    }
   mouse_used++; 
}