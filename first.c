#include<stdio.h>
#include<ctype.h>

void first(char[],char );
void addToResultSet(char[],char );
int numofp;
char pset[10][10];

void main()
{
   int i;
   char choice;
   char c;
   char result[20];
    printf("How many number of productions?:");
    scanf("%d",&numofp);
    
    for(i=0;i<numofp;i++)
    {
      printf("eNTER PRODUCTION number %d : ",i+1);
      scanf(" %s",pset[i]);
    }
    do
    {
        printf("\n find the first of :");
        scanf("%c",&c);
        first(result,c);
        printf("\n First(%c)={ ",c);
        for(i=0;result[i]!='\0';i++)
        printf(" %c ",result[i]);
        printf(" }\n");
        printf("press 'y' to continue : ");
        scanf(" %c",&choice);
       }
       while(choice == 'y' || choice== 'Y');
    }
    
    void first(char* Result,char c)
    {
       int i,j,k;
       char subResult[20];
       int foundEpsilon;
       subResult[0]='\0';
       Result[0]='\0';
       
       if(!(isupper(c)))
       {
         addToResultSet(Result,c);
         return ;
       }
       for(i=0;i<numofp;i++)
      {
        if(productionSet[i][0]==c)
        {
          if(productionSet[i][2]=='$') addToResultSet(Result,'$');
          else
          {
              j=2;
              while(productionSet[i][j]!='\0')
              {
                 foundEpsilon=0;
                 first(subResult,productionSet[i][j]);
                 for(k=0;subResult[k]!='\0';k++)
                 addToResultSet(Result,subResult[k]);
                 for(k=0;subResult[k]!='\0';k++)
                 if(subResult[k]=='$')
                 {
                   foundEpsilon=1;
                   break;
                 }
                 if(!foundEpsilon)
                 break;
                 
                 j++;
              
          }
        }
      }
    }
    return ;
}
