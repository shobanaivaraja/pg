
#include <stdio.h>

int main()
{
int n,a[20],cnt=0,i,low;
int p[32][32],q[32][32],r[32][32];
scanf("%d", &n);
     for(i=0; i<n; i++)
     {
          scanf("%d", &a[i]);
     }
for(int i=0;i<n;i++){
int j=i+1;
    while(j<n){
        p[i][j]=a[i];
        q[i][j]=a[j];
        j++;
        cnt++;
    }
}
for(int i=0;i<cnt;i++){
    for(int j=0;j<cnt;i++){
        if(p[i][j]>q[i][j]){
        r[i][j]=p[i][j]-q[i][j];
    }
        else{
            r[i][j]=q[i][j]-p[i][j];
        }
    }
}
for(int i=0;i<cnt;i++){
    for(int j=0;j<cnt;j++){
        low=r[i][j];
        if(low>r[i][j])
        {
            low=r[i][j];
        }
    }
}
printf("%d",low);
    return 0;
}
