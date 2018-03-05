
#include <stdio.h>
#include<string.h>
int main()
{
 int j,i,n,len;
 char c[11];
 scanf("%s",c);
 len=strlen(c);
 n=len/2;
  for(i=0,j=len-1;i<n;i++,j--)
                        {
                            if(c[i]!=c[j])
                            {
                                if(c[i]==c[j-1]&&(i!=j-1))
                                {
                                    printf("%c",c[j]);
                                    break;
                                }
                                else{
                                    printf("%c",c[i]);
                                    break;
                                }
}}
    return 0;
}



