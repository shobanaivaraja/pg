#include<stdio.h>
int main(){
int dd, mm, yy,n,n1;    
scanf("%d",&n1);
       int valid;      
    for(int i=0;i<n1;i++){
       scanf("%d/%d/%d", &dd, &mm, &yy);
       valid = 0;
       if (yy >=1900 && yy <=2200)      {
               if (mm >= 1 && mm <= 12)  
                  {  
  int mdays;
                       if (mm == 2)
                           mdays = (yy % 4 == 0 && yy % 100 != 0 || yy % 400 == 0) ? 29 : 28;
                      else if (mm == 4 || mm == 6 || mm == 9 || mm == 11)
                                mdays = 30;
                      else mdays = 31;
                      if (dd >= 1 && dd <= mdays)
                         valid = 1;
                  }
          }
                      printf (valid ? "VALID\n" : "NOT VALID\n");
    }                        
return 0;
}
