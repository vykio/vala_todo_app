public class TodoApp.HeaderBar : Gtk.HeaderBar {

    public TodoApp.Window main_window {get; construct;}

    public HeaderBar (TodoApp.Window window) {
        Object(
            main_window: window
        );
    }

    construct {
        show_close_button = true;

        /*
            Add button
        */
        Gtk.Button add_button = new Gtk.Button.with_label("Add");
        add_button.get_style_context().add_class("suggested-action");
        add_button.valign = Gtk.Align.CENTER;
        pack_start (add_button);

        /*
            Preferences button
        */
        Gtk.Button menu_button = new Gtk.Button.from_icon_name ("open-menu");
        menu_button.valign = Gtk.Align.CENTER;
        pack_end (menu_button);

        /*
            Stack switcher
        */
        Gtk.StackSwitcher stack_switcher = new Gtk.StackSwitcher();
        stack_switcher.stack = main_window.stack;

        set_custom_title(stack_switcher);

    }

}