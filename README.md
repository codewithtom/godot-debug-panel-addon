# Godot Debug Panel Addon

A simple in-game debug overlay for displaying arbitrary debug data in your game at runtime.

## Installation

1. Copy the `addons` folder into the root of your Godot project.
2. Go to `Project -> Project Settings -> Plugins` and enable `DebugPanel`

## Usage

In any script, you can add a new Debug Panel item using the following code:

```gdscript
DebugPanel.add("fps_velocity", "Current Velocity", "(0, 0, 0)")
```

The first parameter defines the ID of the panel, this should always be unique.

The second parameter defines the Title of the panel.

The third parameter defines the initial Text of the panel.

Then, from anywhere in your code you can update the value of a panel by addressing it by it's unique ID and giving it the new content:

```gdscript
DebugPanel.update("fps_velocity", "%s" % velocity)
```

## Found a bug?

If you've encountered any issues or want to suggest improvements to this addon, please feel free to fork the code and raise a Pull Request.