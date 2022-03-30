import gtk.Label;
import gtk.EventBox;
import app;
import switches;
import grid;

//Contains all the labels

//
class WideLabel : EventBox
{
	Label label;

	this(string text)
	{
			super();
			
			label = new Label(text);
			label.setSizeRequest(60, 60);
			add(label);
			
	} 
	
} 


class BassLabel : EventBox{
	
	Label label;
	
	string labelText = " Bass Drum ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}


class SnareLabel : EventBox{
	
	Label label;
	
	string labelText = " Snare Drum ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}

class HiHatLabel : EventBox{
	
	Label label;
	
	string labelText = " Hi-Hat ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}

class TomTomLabel : EventBox{
	
	Label label;
	
	string labelText = " Tom-Tom ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}


class CrashLabel : EventBox{
	
	Label label;
	
	string labelText = " Crash ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}


class RideLabel : EventBox{
	
	Label label;
	
	string labelText = " Ride ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}

class SkipLabel : EventBox{
	
	Label label;
	
	string labelText = " SKIP ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}

class BlankLabel : EventBox{
	
	Label label;
	
	string labelText = "               ";
	
	this()
	{
		super();
		label = new Label(labelText);
		add(label);
}
}