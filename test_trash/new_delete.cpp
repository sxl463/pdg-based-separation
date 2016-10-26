#include <iostream>
#include <vector>
using namespace std;

class Box
{
public:
  int data;
  Box(int x) {
    data = x;
    cout << "Constructor called!" <<endl; 
  }
  ~Box() { 
    data = 0;
    cout << "Destructor called!" <<endl; 
  }
};

int main( )
{
  //Box* myBoxArray = new Box[4];

  Box* b1 = new Box(1);
  Box* b2 = new Box(2);
  Box* b3 = new Box(3);

  vector<Box*> lst;
  lst.push_back(b1);
  lst.push_back(b2);
  lst.push_back(b3);

  delete b2;
  delete b3;


  cout << " " << lst[0]->data <<" "<< lst[1]->data <<" " << lst[2]->data << endl;



  //  delete [] myBoxArray; // Delete array

  return 0;
}
