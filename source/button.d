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

class PlayButton : Button{
    int x;
    string play = "Play";

    this(){
        super(play);
        addOnClicked(&playButtonAction);
    }

    void playButtonAction(Button b){
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
}

class StopButton : Button{
    string stop = "Stop";

    this(){
        super(stop);
        addOnClicked(&demoButtonAction);
    }

    void demoButtonAction(Button b){
        DerelictBASS.load();
		BASS_Init(-1, 44_100, 0, cast(void*) 0, null);
		writeln("This is the stop button");
		stopEverything();
		//worker.send();
	//	BASS_ChannelStop();
    }
}

class DemoButton : Button{
    int x;

    
}