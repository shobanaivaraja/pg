/******************************************************************************

                            Online C Compiler.
                Code, Compile, Run and Debug C program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <stdio.h>
#define N 4
int solveutil(int M[N][N],int x,int y,int sol[N][N]);
int safe(int M[N][N];int x,int y){
    if(x>=0 && y>=0 && x<N && y<N && M[x][y]==1)
    return 1;
    return 0;
}
int solve(int M[N][N]){
    int sol[N][N]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    if(solveutil(M,0,0,sol)==0){
        printf("No ");
        return 0;
    }
    for(int i=0;i<4;i++){
        for(int j=0;j<4;j++)
        printf("%d ",sol[i][j]);
        printf("\n");
    }
}
int solveutil(int M[N][N], int x,int y,int sol[N][N]){
    if(x==N-1 && y==N-1){
    sol[x][y]=1;
    return 1;
    }
    if(safe(M,x,y)==1){
        sol[x][y]=1;
        if(solveutil(M,x+1,y,sol)==1) return 1;
        if(solveutil(M,x,y+1,sol)==1) return 1;
        sol[x][y]=0;
        return 0;
    }
    return 0;
}
int main()
{
    int M[4][4]={1,0,0,0,1,1,0,1,0,1,0,0,1,1,1,1};
    solve(M);
    return 0;
}
