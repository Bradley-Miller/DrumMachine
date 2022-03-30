import std.stdio;
import app;
import grid;
import gtk.Scale;
import gtk.Range;

class MyScale : Scale
{
	double minimum = 1;
	double maximum = 100;
	double step = 1;

	this()
	{
		super(Orientation.HORIZONTAL, minimum, maximum, step);
		addOnValueChanged(&valueChanged);
		
	} 
	
	
	void valueChanged(Range range)
	{
		repetition = cast (int)getValue();

		writeln("Repetitions is set to... ", getValue());
		
	} 

} 

class MyScaleTempo : Scale
{	
	double minimum = 60;
	double maximum = 120;
	double step = 30;
	
	this()
	{
		super(Orientation.HORIZONTAL, minimum, maximum, step);
		addOnValueChanged(&valueChanged);
		
	} 
	
	void valueChanged(Range range)
	{
		oldTempo = tempo;
		tempo = cast (int)getValue();
		//If we increase tempo.
		if(oldTempo<tempo){
			double divider = cast(double)tempo/cast(double)oldTempo;
			timerCount/=divider;
		}
		//if we decrease tempo
		else if(oldTempo>tempo){
			double multipler = cast(double)oldTempo/cast(double)tempo;
			timerCount*=multipler;
		}
		writeln("Tempo is set to... ", tempo);
		writeln("oldTempo is set to...", oldTempo);
		writeln("Timer Count is set to...", timerCount);
		
	} 

}