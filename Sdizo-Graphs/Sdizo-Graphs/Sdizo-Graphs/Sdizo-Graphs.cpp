// Sdizo-Graphs.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "Graph.h"
#include "AdjacencyList.h"
#include "IncidenceMatrix.h"
#include <stdlib.h>
#include "MainMenu.h"
int main()
{
	srand(time(NULL));
	MainMenu menu;
	menu.start();
	/*Graph *g;
	g = new AdjacencyList(false);
	g->print();
	g->primSolver();
	g->kruskalSolver();*/
	
	system("PAUSE");
    return 0;
}

