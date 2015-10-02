//
//  LinkedList.m
//  Maze3D
//
//  Created by Samuel Jew on 8/19/14.
//  Copyright (c) 2014 Samuel Jew. All rights reserved.
//

#import "LinkedList.h"



LinkedList::LinkedList() {
    
    NextNodeInList = NULL;
    List = (MyNode **)(malloc(MAX_LIST_SIZE * sizeof(MyNode *)));
    Head = NULL;
    PreviousNodeInList = NULL;
    size = 0;
};




LinkedList::~LinkedList() {
    printf("helo\n");
    free (List);
};

void LinkedList::PrintList() {
    printf("PrintingList\n");
    for (int i = 0;i < size;i++) {
        

        List[i]->PrintNode();
        
        
    
        
    }
    
    
};

void LinkedList::PrintParents() {
    printf("PrintingList\n");
    MyNode * temp = List[size - 1];
    
    
    while(temp->parent != NULL)
        
        temp->parent->PrintNode();
        
        
        
        
    
    
    
};


MyNode * LinkedList::FindCheapest() {
    
    int temp = 1000000;
    
    int i = 0;
    
    int IndexOfArrayToReturn = size;
    
    for (i = 0;i < size;i++) {
    
        if (((List[i]->minimumCostToGoal) + (List[i]->costToArriveAtNode)) < temp) {
           
            temp = (List[i]->minimumCostToGoal) + (List[i]->costToArriveAtNode);
           
            IndexOfArrayToReturn = i;
        }
    
    }
    
    
    
    if (temp < 1000000) {
       // printf("Cheapest found has %i\n",temp);
        //List[IndexOfArrayToReturn]->PrintNode();
        return (List[IndexOfArrayToReturn]);
    }
    else {
        printf("Can't find a node\n");
        return NULL;
    }
};


int LinkedList::isOnList(MyNode * theNode) {
    
    if(!theNode)
        return false;
     
    for (int i = 0;i < (size - 1);i++) {
    
        if((theNode->location) == ((List[i])->location)) {
            
         //   printf("the node %i listsizelocation %i",theNode->location,List[i]->location);

            return true;
        }
    }
    return false;
};

void LinkedList::Append(MyNode * NodeToAdd) {
    
    
    List[size] = NodeToAdd;
    size++;
    
};
