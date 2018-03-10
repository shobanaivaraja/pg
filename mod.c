#include <stdio.h>

int main()
{
int n1,n2,rem;
scanf("%d\n%d",&n1,&n2);
while(n1>=n2){
    n1=n1-n2;
}
rem=n1;
printf("%d",rem);
    return 0;
}
