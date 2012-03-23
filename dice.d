#!/usr/bin/rdmd
import std.stdio;
import std.random;

void main()
{
	int numDice=0,diceType=20,total=0;
	while(1) {
		total=0;
		write(">> ");
		readf("%dd%d\n",&numDice,&diceType);
		while(numDice--) {
			total += uniform(1, diceType);
		}
		writef("Result: %d\n", total);
	}
}
