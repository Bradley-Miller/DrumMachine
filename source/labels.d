import gtk.Label;
import gtk.EventBox;
import gtk.CssProvider;
import gtk.StyleContext;
import app;
import switches;
import grid;
import css;

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
	
	CSS css;
	Label label;
	
	string labelText = " Bass Drum ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
		add(label);
}
}


class SnareLabel : EventBox{
	
	CSS css;
	Label label;
	
	string labelText = " Snare Drum ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
		add(label);
}
}

class HiHatLabel : EventBox{
	
	CSS css;
	Label label;
	
	string labelText = " Hi-Hat ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
		add(label);
}
}

class TomTomLabel : EventBox{
	
	CSS css;
	Label label;
	
	string labelText = " Tom-Tom ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
		add(label);
}
}


class CrashLabel : EventBox{
	
	CSS css;
	Label label;
	
	string labelText = " Crash ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
		add(label);
}
}


class RideLabel : EventBox{
	
	CSS css;
	Label label;
	
	string labelText = " Ride ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
		add(label);
}
}

class SkipLabel : EventBox{
	
	CSS css;
	Label label;
	
	string labelText = " SKIP ";
	
	this()
	{
		super();
		label = new Label(labelText);
		css = new CSS(getStyleContext());
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