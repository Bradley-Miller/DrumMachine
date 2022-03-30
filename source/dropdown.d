import std.stdio;
import gtk.ComboBoxText;
import grid;
import app;

//We can try to add images later...

class DropDown : ComboBoxText{
    int num;
    string[] type = ["Quarter", "Eight", "Sixteenth"];
    bool entryOn = false;
    
    this(int num){
        this.num = num;
        super(entryOn);

        foreach(type; type){
            appendText(type);
        }
        setActive(0);
        dropDownMenu[num] = getActiveText;

        addOnChanged(&doSomething);
    }

    void doSomething(ComboBoxText j){
    if(getIndex(getActiveText()) !is -1){
        dropDownMenu[num] = getActiveText;
        writeln("The tempo for column ", num + 1," is now ", getActiveText(), " note");
    }
    }
    
}
