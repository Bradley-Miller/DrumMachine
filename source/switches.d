import std.stdio;
import gtk.Switch;
import app;
import grid;
import labels;

//Contains all the switches

//Bass switch


class BassSwitch : Switch{
	int num;
	
	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch b){
		setState(state);
		if(state == true){
			bassDrum[num]++;
		}
		else{
			bassDrum[num]--;
		}
		writeln("Bass set ", num+1, " is ", getState(), " and set is ", state);
		writeln(bassDrum[num]);

		return(true);
	}
}

//Snare switch


class SnareSwitch : Switch{
	int num;

	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch s){
		setState(state);
		if(state == true){
			snareDrum[num]++;
		}
		else{
			snareDrum[num]--;
		}
		writeln("Snare set ",num+1," is ", getState(), " and set is ", state);
		writeln(snareDrum[num]);
		return(true);
	}
}

//HiHat Switch


class HiHatSwitch : Switch{
	int num;

	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch h){
		setState(state);
		if(state == true){
			hiHat[num]++;
		}
		else{
			hiHat[num]--;
		}
		writeln("Hi-hat set ", num+1, " is ", getState(), " and set is ", state);
		writeln(hiHat[num]);
		return(true);
	}
}

//TomTom Switches


class TomTomSwitch : Switch{
	int num;

	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch t){
		setState(state);
		if(state == true){
			tomTom[num]++;
		}
		else{
			tomTom[num]--;
		}
		writeln("TomTom set ",num+1," is ", getState(), " and set is ", state);
		writeln(tomTom[num]);
		return(true);
	}
}
//Crash Switches


class CrashSwitch : Switch{
	int num;
	
	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch c){
		setState(state);
		if(state == true){
			crashC[num]++;
		}
		else{
			crashC[num]--;
		}
		writeln("Crash set ", num+1, " is ", getState(), " and set is ", state);
		writeln(crashC[num]);
		return(true);
	}
}
//Ride Switches


class RideSwitch : Switch{
	int num;
	
	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch c){
		setState(state);
		if(state == true){
			rideC[num]++;
		}
		else{
			rideC[num]--;
		}
		writeln("Ride set ", num+1, "is ", getState(), " and set is ", state);
		writeln(rideC[num]);
		return(true);
	}
}
//Skip Switches


class SkipSwitch : Switch{
	int num;
	
	this(int num){
		this.num = num;
		super();
		addOnStateSet(&onStateSet);
	}
	
	bool onStateSet(bool state, Switch c){
		setState(state);
		if(state == true){
			skip[num]++;
		}
		else{
			skip[num]--;
		}
		writeln("Skip set ", num+1, " is ", getState(), " and set is ", state);
		writeln(skip[num]);
		return(true);
	}
}

