#include<stdio.h>

int main()
{
    char line[150];
    int i, j,t,tc;
    scanf("%d\n",&t);
    for(tc=0;tc<t;tc++){
    scanf("\n%[^\n]",line);

    for(i = 0; line[i] != '\0'; ++i)
    {
        while (!(line[i]=='a' || line[i]=='e' || line[i]=='i' || line[i]=='o' || line[i]=='u' || line[i]=='A' || line[i]=='E' || line[i]=='I' || line[i]=='O' || line[i]=='U'
 || line[i] == '\0') )
        {
            for(j = i; line[j] != '\0'; ++j)
            {
                line[j] = line[j+1];
            }
            line[j] = '\0';
        }
    }
    printf("%s",line);
    printf("\n");
    }
    return 0;
}