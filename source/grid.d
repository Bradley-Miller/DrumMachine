import gtk.Grid;
import derelict.bass.bass;
import std;
import gtk.Box;
import gtk.Switch;
import gtk.EventBox;
import gtk.Scale;
import gtk.Button;
import gtk.ComboBoxText;
import app;
import scale;
import switches;
import labels;
import timer;
import dropdown;
import play;
import css;

//Class for the grid

class WorkSpace : Box{
	CSS css;
	int globalPadding= 5;
	
	string playText = "Play";
	string stopText = "Stop";
	string demoText = "Demo";
	string bassDrumText = " Bass Drum ";
	string snareDrumText = " Snare Drum ";
	string hiHatDrumText = " Hi-Hat ";
	string tomTomDrumText = " Tom-Tom ";
	
	Button buttonPlay;
	Button buttonStop;
	Button button2;
	Button button60;
	Button button90;
	Button button120;
	Grid grid;
	MyScale myscale;
	MyScaleTempo myscaletempo;
	
	int x=0;

	
	this(){
		super(Orientation.VERTICAL, globalPadding);
		grid = new Grid();

		//Row 0: Bass Drum
		for(int i = 0; i<10; i++){
			Switch bassSwitch = new BassSwitch(i, "bassSwitch");
			EventBox bassLabel = new BassLabel();
			grid.attach(bassLabel, i, 0, 1, 1);
			grid.attach(bassSwitch, i, 1, 1, 1);
		}
		
		
		//Row 1: Snare Drum
		for(int i = 0; i<10; i++){
			Switch snareSwitch = new SnareSwitch(i, "snareSwitch");
			EventBox snareLabel = new SnareLabel();
			grid.attach(snareLabel, i, 2, 1, 1);
			grid.attach(snareSwitch, i, 3, 1, 1);
		}

		//Row 2: Hi-Hats
		for(int i = 0; i<10; i++){
			Switch hiHatSwitch = new HiHatSwitch(i, "hiHatSwitch");
			EventBox hiHatLabel = new HiHatLabel();
			grid.attach(hiHatLabel, i, 4, 1, 1);
			grid.attach(hiHatSwitch, i, 5, 1, 1);
		}
		
		//Row 3: Tom-Toms
		for(int i = 0; i<10; i++){
			Switch tomTomSwitch = new TomTomSwitch(i, "tomTomSwitch");
			EventBox tomTomLabel = new TomTomLabel();
			grid.attach(tomTomLabel, i, 6, 1, 1);
			grid.attach(tomTomSwitch, i, 7, 1, 1);
		}
		
		//Row 4: Crash-Cymbol
		for(int i = 0; i<10; i++){
			Switch crashSwitch = new CrashSwitch(i, "crashSwitch");
			EventBox crashLabel = new CrashLabel();
			grid.attach(crashLabel, i, 8, 1, 1);
			grid.attach(crashSwitch, i, 9, 1, 1);
		}
		
		//Row 5: Ride-Cymbol
		for(int i = 0; i<10; i++){
			Switch rideSwitch = new RideSwitch(i, "rideSwitch");
			EventBox rideLabel = new RideLabel();
			grid.attach(rideLabel, i, 10, 1, 1);
			grid.attach(rideSwitch, i, 11, 1, 1);
		}

		//row 6: Skip
		for(int i = 0; i<10; i++){
			Switch skipSwitch = new SkipSwitch(i, "skipSwitch");
			EventBox skipLabel = new SkipLabel();
			grid.attach(skipLabel, i, 12, 1, 1);
			grid.attach(skipSwitch, i, 13, 1, 1);
		}
		
		//Row 7: Dropdown Menus

		for(int i = 0; i<10; i++){
			ComboBoxText dropDown = new DropDown(i);
			grid.attach(dropDown, i, 14, 1, 1);
		}

		css = new CSS(getStyleContext());

		add(grid);
		myscale= new MyScale();
		add(myscale);
		myscaletempo = new MyScaleTempo();
		add(myscaletempo);

			buttonPlay = new Button(playText);
			buttonPlay.addOnClicked(&playbuttonAction);
			add(buttonPlay);

			buttonStop = new Button(stopText);
			buttonStop.addOnClicked(&stopbuttonAction);
			add(buttonStop);
		
		
		button2 = new Button(demoText);
		button2.addOnClicked(&demoButtonAction);
		add(button2);
		
	}
		
	void playbuttonAction(Button a){
		DerelictBASS.load();
		BASS_Init(-1, 44_100, 0, cast(void*) 0, null);
		writeln("This is the play button");

		x = 1;
		while(x<=cast(int)repetition){
			for(int i = 0; i<10; i++){
				//Trying to get concurrency up...
			//	auto task1 = task!
				playNotes(i);
				//task1.executeInNewThread();
				//task1.yieldForce;
			}
		
		x++;
		}
	
	}

	void stopbuttonAction(Button a){
		DerelictBASS.load();
		BASS_Init(-1, 44_100, 0, cast(void*) 0, null);
		writeln("This is the stop button");
		stopEverything();
		//worker.send();
	//	BASS_ChannelStop();
	}
		
	void demoButtonAction(Button b){
		DerelictBASS.load();
		BASS_Init(-1, 44_100, 0, cast(void*) 0, null);
		writeln("This is the demo button");	
		x = 1;

		while(x<=3){
			for(int i = 0; i<10; i++){
				playNotes(i);
			}
			x++;
		}
	}
}