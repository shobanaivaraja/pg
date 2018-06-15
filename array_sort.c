/******************************************************************************
Write a program to sort the elements in odd positions in descending order and elements in ascending order
*******************************************************************************/

#include <stdio.h>

int main()
{
 int n;
 scanf("%d",&n);
 int *a=(int*)malloc(sizeof(int)*n);
 for(int i=0;i<n;i++)
 scanf("%d",&a[i]);
 for(int i=0;i<n;i=i+2){
     for(int j=i+2;j<n;j=j+2){
         if(a[j]<a[i]){
             int t=a[j];
             a[j]=a[i];
             a[i]=t;
         }
     }
 }
 for(int i=1;i<n;i=i+2){
     for(int j=i+2;j<n;j=j+2){
         if(a[j]>a[i]){
             int t=a[j];
             a[j]=a[i];
             a[i]=t;
         }
     }
 }
 for(int i=0;i<n;i++)
 printf("%d ",a[i]);
    return 0;
}
