/*
Input:
This is fun, hopefully.
Sample Output 0
sihT si nuf, yllufepoh.

*/#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

 void reverse(char *begin, char *end)
{
  char temp;
  while (begin < end)
  {
    temp = *begin;
    *begin++ = *end;
    *end-- = temp;
  }
}
void reversestr(char *s){
  char *word_begin = s;
  char *temp = s; 
  while( *temp )
  {
    temp++;
    
    if(*temp == ' ')
    {
      reverse(word_begin, temp-1);
      word_begin = temp+1;
    }
    if (*temp == '\0')
    {
      reverse(word_begin, temp-1);
      word_begin=temp+1;
      *temp='\0';
    }
  }
}
int main() {
int itr,len,ind=0,cnt;
    char str[300];
    scanf("%d",&len);
    scanf("%[^\n]",str);
    reversestr(str);
    printf("%s",str);
    return 0;
}
