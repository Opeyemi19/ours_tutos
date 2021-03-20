#ifndef __STACK__H__
#define __STACK__H__


    // Type de boolean
    typedef enum
    {
        false, //0
        true //0
    }Bool;

    // Definition d'une Pile
    typedef struct StackElement
    {
        int value;
        struct StackElement *next;
    }StackElement, *Stack;


    // Prototype des fonctions
    Stack new_table(void);


#endif