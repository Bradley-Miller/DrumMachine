import grid;
import app;
import timer;
import derelict.bass.bass;
//Functions for play buttons

	int keepGoing = 1;

	string bassString = "BassDrum.wav";
	string snareString = "SnareDrum.wav";
	string hiHatString = "HiHat.wav";
	string tomTomString = "TomDrum.wav";
	string silentString = "Silent.mp3";
	string crashCString = "CrashCymbol.wav";
	string rideCString = "RideCymbol.wav";

	HSTREAM bassStream; 
	HSTREAM snareStream;
	HSTREAM hiHatStream; 
	HSTREAM tomTomStream;
	HSTREAM silentStream; 
	HSTREAM crashStream;
	HSTREAM rideStream; 

void playNotes(int column){

	bassStream =  BASS_StreamCreateFile(false, cast(void*) bassString, 0, 0, 0);
	snareStream = BASS_StreamCreateFile(false, cast(void*) snareString, 0, 0, 0);
	hiHatStream = BASS_StreamCreateFile(false, cast(void*) hiHatString, 0, 0, 0); 
	tomTomStream = BASS_StreamCreateFile(false, cast(void*) tomTomString, 0, 0, 0);
	silentStream = BASS_StreamCreateFile(false, cast(void*) silentString, 0, 0, 0);
	crashStream = BASS_StreamCreateFile(false, cast(void*) crashCString, 0, 0, 0); 
	rideStream = BASS_StreamCreateFile(false, cast(void*) rideCString, 0 , 0, 0);


    
    Countdown countms;
		//THE GREAT WALL OF IF/ELSE STATEMENTS
	//Nothing!
	if(keepGoing==1){
		if(skip[column]==1){
			countms.start(0);
		}
	//This works but we need to either change the names of the notes and edit the
	//music file sof rmakiing the music slower.
		if(dropDownMenu[column]=="Quarter"){
			countms.start(timerCount);
		}
		else if(dropDownMenu[column] == "Eight"){
			countms.start(timerCount/2);
		}
		else if(dropDownMenu[column] == "Sixteenth"){
			countms.start(timerCount/4);
		}

		while(!countms.isOver){
	    	if(bassDrum[column]==0 && snareDrum[column]==0 && hiHat[column]==0 && 
	    	tomTom[column]==0 && crashC[column]==0 && rideC[column]==0){
		    	BASS_ChannelPlay(silentStream, false); 
	    	}
	    	if(bassDrum[column]==1){
		    	BASS_ChannelPlay(bassStream, false);
	    	}
	    	if(snareDrum[column]==1){
		    	BASS_ChannelPlay(snareStream, false);
	    	}
	    	if(hiHat[column]==1){
		    	BASS_ChannelPlay(hiHatStream, false);
	    	}
	    	if(tomTom[column]==1){
		    	BASS_ChannelPlay(tomTomStream, false);
	    	}
	    	if(crashC[column]==1){
		    	BASS_ChannelPlay(crashStream, false);
	    	}
	    	if(rideC[column]==1){
		    	BASS_ChannelPlay(rideStream, false);
	    	}
	}

	//Stops and resets all streams for the next iteration.
	stopNotes();
	}
}

void stopNotes(){
	BASS_ChannelStop(silentStream);
	BASS_ChannelSetPosition(silentStream, 0, BASS_POS_BYTE);
	BASS_ChannelStop(bassStream);
	BASS_ChannelSetPosition(bassStream, 0, BASS_POS_BYTE);
	BASS_ChannelStop(snareStream);
	BASS_ChannelSetPosition(snareStream, 0, BASS_POS_BYTE);
	BASS_ChannelStop(hiHatStream);
	BASS_ChannelSetPosition(hiHatStream, 0, BASS_POS_BYTE);
	BASS_ChannelStop(tomTomStream);
	BASS_ChannelSetPosition(tomTomStream, 0, BASS_POS_BYTE);
	BASS_ChannelStop(crashStream);
	BASS_ChannelSetPosition(crashStream, 0, BASS_POS_BYTE);
	BASS_ChannelStop(rideStream);
	BASS_ChannelSetPosition(rideStream, 0, BASS_POS_BYTE);
}

void stopEverything(){
	keepGoing=0;
	stopNotes();
}