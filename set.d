#!/usr/bin/rdmd

import std.stdio;
import std.string;

void main() {
	string[] names;
	char[] tmp;
	char[] fname;
	bool isValid() {
		foreach(name;names) {
			if(name == tmp) {
				return false;
			}
		}
		return true;
	}
	write("Output filename: ");
	stdin.readln(fname);
	fname = strip(fname);
	do {
		write(">> ");
		stdin.readln(tmp);
		tmp = stripRight(tmp);
		if(tmp != "" && isValid) { // Awww yeah.
			names ~= tmp.idup;
		}
	} while(tmp != "");
	File f = File(cast(string)fname,"w");
	foreach(name;names) {
		f.writeln(name);
	}
	f.close();
}
