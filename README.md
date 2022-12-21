## Important commands

# Build : 

The first time:
```
meson build --prefix=/usr
```

Then in the `/build` directory:
```
ninja
./src/com.github.vykio.todo_app
```

# Activate debugging for styling (GTK Inspector)
Run the following to activate the keybinding
```
gsettings set org.gtk.Settings.Debug enable-inspector-keybinding true
```

And use `Ctrl+Shift+D`