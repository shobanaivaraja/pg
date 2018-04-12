

#include <stdio.h>
#include <string.h>
void reverse(char str[30]){
    char vow[30],rep;
    int j=0;
    for(int i=0;i<strlen(str);i++){
        if(str[i]=='a' || str[i]=='e' || str[i]=='i' || str[i]=='o' || str[i]=='u'){
            vow[j]=str[i];
            j++;
        }
    }
    j=0;
    for(int i=strlen(str)-1;i>=0;i--){
    if(str[i]=='a' || str[i]=='e' || str[i]=='i' || str[i]=='o' || str[i]=='u'){
            rep=vow[j];
            str[i]=rep;
            j++;
        }
    }
       printf("%s",str);
    }
int main()
{
    int t;
    char str[30];
    scanf("%d",&t);
    for(int i=1;i<=t;i++){
        gets(str);
        reverse(str);
    }
    return 0;
}
