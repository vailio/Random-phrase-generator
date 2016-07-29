/*
Arunatpal, Vishwanath, Salil
*/

String csv[];
String myData[][];
void setup()
{
  size(100, 100);
  frameRate(2);
  csv = loadStrings("A.csv");
  myData = new String[11618][3];
  
for (int i=0; i<csv.length; i = i+2)
  {
    String search1 = "(";
    String toBeSearched1 = csv[i];
    int index1 = toBeSearched1.indexOf(search1);

    String search2 = ")";
    String toBeSearched2 = csv[i];
    int index2 = toBeSearched2.indexOf(search2);
    myData[i/2][1] = csv[i].substring(index1+1, index2);

    myData[i/2][0] = csv[i].substring(0, index1);
    myData[i/2][2] = csv[i].substring(index2+1, csv[i].length());
    println(myData[i/2][0]);
    println(myData[i/2][1]);
    println(myData[i/2][2]);
    println("   ");
  }
  
}
void draw()
{
}