
#include <stdio.h>

int main()
{
    float ip,dec;
    int q,a,b;
    scanf("%f",&ip);
    q=(int)(ip);
    dec=fmod(ip,q);
    a=(dec*100)/25;
    b=100/25;
    if(b%a==0){
        a=a/a;
        b=b/a;
    }
    printf("%d %d/%d",q,a,b);
    
    return 0;
}
