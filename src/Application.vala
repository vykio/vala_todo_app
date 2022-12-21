public class Application : Gtk.Application {
    
    public Application() 
    {
        Object (
            application_id: "com.github.vykio.todo_app",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }
    
    protected override void activate() {
        var window = new TodoApp.Window(this);
        
        add_window(window);
    }
        
}

