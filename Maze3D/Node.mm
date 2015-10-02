//
//  Node.m
//  Maze3D
//
//  Created by Samuel Jew on 8/19/14.
//  Copyright (c) 2014 Samuel Jew. All rights reserved.
//

#import "Node.h"


MyNode::MyNode() {
    parent = NULL; // pointer to source
    NextNode = NULL;
    minimumCostToGoal = MAX_COST; // minimum cost to get to goal
    costToArriveAtNode = MAX_COST;
    for (int i = 0;i<6;i++) {
    
        Neighbors[i] = NULL;
    
    }
    
    location = 0;
}

int MyNode::GetTotalCost() {
    
    return minimumCostToGoal + costToArriveAtNode;

};

void MyNode::PrintNode() {
    
   
    
    printf("Minimum Cost: %i ",minimumCostToGoal); // minimum cost to get to goal
    
    
    printf("Location: %i \n",location);
    
};
