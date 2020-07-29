#include <stdio.h>
main()
     {
         /* Var Declare */
    char a;
    float income, living, dControl, dept;

        /* User Input */

    printf("Enter Your Income: ");
    scanf("%f",&income);
    printf("Do You Have Any Dept?(y)");
    scanf(" %c", &a);
    system("cls");

    /* Calculation And Out Put */

    living = income /2 ;
    dControl = living /2;
    if (a == 'y') {
        dept = dControl /2;
            printf("Your Income:      %.2f",income);
            printf("\nLiving:           %.2f",living);
            printf("\nDamage Control:   %.2f",dControl);
            printf("\nDept:             %.2f",dept);
            printf("\nSavings:          %.2f",dept);
    }
    else {
        dept = dControl;
            printf("Your Income:      %.2f",income);
            printf("\nLiving:           %.2f",living);
            printf("\nDamage Control:   %.2f",dControl);
            printf("\nSavings:          %.2f",dept);
    }
    getch();
}

/* END */
