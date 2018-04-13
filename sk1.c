
#include <stdio.h>
void prime(int *p,int n){
    int i,j,cnt,c=0,pm[30];
    for(i=0;i<n;i++){
        cnt=0;
        for(j=1;j<=*(p+i);j++){
        if(*(p+i)%j==0){
            cnt++;
        }
    }
    
    
    if(cnt==2){
        pm[c]=*(p+i);
        c++;
    }}
    for(i=0;i<c;i++){
    printf("%d " ,pm[i]);
    }
}
int main()
{
    int n,*a;
    scanf("%d ",&n);
    a=(int*)malloc(n*sizeof(int));
    for(int i=0;i<n;i++){
        scanf("%d",a+i);
    }
    prime(a,n);
    return 0;
}
