

#include <stdio.h>

#include<string.h>

int main()

{


char b1[5]="ABC",b2[4]="DEF",b3[4]="GHI",b4[4]="JKL",b5[4]="MNO",b6[4]="PQRS";

char b7[4]="TUV",b8[4]="WXYZ";


char s[5];

int i,k,j,n=0,len;

scanf("%s",s);

len=strlen(s);

for( i=0;i<len;i++){
   
 for(j=0;j<strlen(b1);j++){
        
if(s[i]==b1[j]){
          
  for(k=0;k<=j;k++)
    
            printf("2");
      
}  }
   
  for(j=0;j<strlen(b2);j++){
        
 if(s[i]==b2[j]){
     
       for(k=0;k<=j;k++)
         
       printf("3");
      
  }
          
} for(j=0;j<strlen(b3);j++){
        
 if(s[i]==b3[j]){
            
for(k=0;k<=j;k++)
              
  printf("4");
        }
       
} for(j=0;j<strlen(b4);j++){
        
 if(s[i]==b4[j]){
           
 for(k=0;k<=j;k++)
            
    printf("5");
        }
   }
 for(j=0;j<strlen(b5);j++){
        
if(s[i]==b5[j]){
         
   for(k=0;k<=j;k++)
              
  printf("6");
        }
      
} for(j=0;j<strlen(b6);j++){
        
  if(s[i]==b6[j]){
        
    for(k=0;k<=j;k++)
       
         printf("7");
        }
      } for(j=0;j<strlen(b7);j++){
        
 if(s[i]==b7[j]){
            for(k=0;k<=j;k++)
                printf("8");
        }   
}
 for(j=0;j<5;j++){
        
 if(s[i]==b8[j]){
            for(k=0;k<=j;k++)
                printf("9");
        }
  }

}
    return 0;
}



