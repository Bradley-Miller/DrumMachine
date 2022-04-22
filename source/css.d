import gtk.CssProvider;
import gtk.StyleContext;

class CSS{
    CssProvider provider;
    string path = "source\\css\\Css.css";

    this(StyleContext styleContext){
        provider = new CssProvider();
        provider.loadFromPath(path);
        styleContext.addProvider(provider, GTK_STYLE_PROVIDER_PRIORITY_APPLICATION);
    }
}
