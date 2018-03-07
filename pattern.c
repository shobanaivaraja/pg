
#include <stdio.h>

int main()
{
    
int i,j,n,k,t;
int b[10];
scanf("%d",&t);
for(int a=0;a<t;a++){
scanf("%d",&b[a]);
}
for(int y=0;y<t;y++){
for(i=0;i<b[y];i++){
    for(k=0;k<b[y];k++){
     for(j=0;j<b[y]-i;j++){
    printf("%d",b[y]-k);
}}
printf("\n");
}}
return 0;
}



