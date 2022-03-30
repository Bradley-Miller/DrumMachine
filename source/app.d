import std;
import derelict.bass.bass;
import timer;
import gtk.MainWindow;
import gtk.Label;
import gtk.Main;
import gtk.Button;
import gtk.Box;
import gtk.Widget;
import gtk.Grid;
import gtk.Switch;
import gtk.EventBox;
import gtk.Scale;
import gtk.Range;
import labels;
import switches;
import grid;
import play;
import scale;
import dropdown;

int[10] bassDrum;
int[10] snareDrum;
int[10] hiHat;
int[10] tomTom;
int[10] crashC;
int[10] rideC;
int[10] tempoNote;
int[10] skip;
int[10] silence;

string[10] dropDownMenu;

int tempo=60;
int oldTempo;
//For the milisecond count in grid.d
double timerCount=1000;
double repetition = 1;

class TerminalWindow : MainWindow{
	///
	string title = "DDrums 1.1";
	///
	WorkSpace workspace;
	///
	Grid grid;
	///
	this(){
		super(title);
		addOnDestroy(&quitApp);
		workspace = new WorkSpace();
		add(workspace);
		showAll();
	}
	void quitApp(Widget w){
		writeln("Goodbye!");
	}
}

void main(string[] args)
{
	DerelictBASS.load();
	Main.init(args);
	new TerminalWindow();
	Main.run();
}
