#include<iostream>
using namespace std;

unsigned int countSetBits(unsigned int n)
{unsigned  int count=0;
 
  while(n)
  {count+=n&1;

  n=n>>1;

  }

return count;
}
int main()
{
unsigned int n;
cout<<"Enter number:";
cin>>n;

unsigned int result=countSetBits(n);
  cout<<"Number of set bits="<<result;



return 0;
}