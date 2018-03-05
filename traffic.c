#include <stdio.h>
#include<string.h>
int main()
{
    char p[20],op[20];
    scanf("%s",p);
    if(strcmp(p,"red")==0)
                {   
                    strcpy(op,"Stop");
                 }
else if(strcmp(p,"green")==0){
                strcpy(op,"Go");
}
else if(strcmp(p,"yellow")==0){
                    strcpy(op,"Get Ready");
}
else{
                    strcpy(op,"Invalid input");
         }
    printf("%s",op);
       return 0;
}

