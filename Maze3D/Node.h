//
//  Node.h
//  Maze3D
//
//  Created by Samuel Jew on 8/19/14.
//  Copyright (c) 2014 Samuel Jew. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>
#define MAX_COST 1000000
class MyNode {
public:
    MyNode * parent; // pointer to source
    MyNode * NextNode;
    int minimumCostToGoal; // minimum cost to get to goal
    int costToArriveAtNode; // = cost to arrive at current vertex/MyNode
    MyNode * Neighbors[6];
    
    int location;
    int GetTotalCost();

    MyNode * GetNeighborNode(int neighbor) {return Neighbors[neighbor];};
    
    MyNode();
    
    void PrintNode();

};




