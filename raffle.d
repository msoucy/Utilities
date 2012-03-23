#!/usr/bin/rdmd
import std.cstream;
import std.random;
import std.algorithm;

void main(){
	dout.writef("Enter names:\n==> ");
	auto data = din.readLine();
	string[] names;
	while(data != "") {
		names ~= cast(string)data;
		dout.writef("==> ");
		data = din.readLine();
	}
	dout.writef("--- OUTPUT ---\n");
	auto rnd = Random(unpredictableSeed);
	uint i=0;
	foreach(name;randomCover(names,rnd)) {
		dout.writef("%s: %s\n", i, name);
		i++;
	}
}

