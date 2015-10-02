//
//  LinkedList.h
//  Maze3D
//
//  Created by Samuel Jew on 8/19/14.
//  Copyright (c) 2014 Samuel Jew. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

#define MAX_LIST_SIZE 100000

class LinkedList {

private:
    MyNode * Head;
    MyNode * NextNodeInList;
    MyNode * PreviousNodeInList;
   

public:
    MyNode ** List;

    int size;
    LinkedList();
    ~LinkedList();
    void PrintList();
    void PrintParents();

    void Append(MyNode * NodeToAdd);
    int remove(MyNode * NodeToDelete);
    MyNode * FindCheapest();
    int isOnList(MyNode * theNode);
};




