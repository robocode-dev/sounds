# Sound files for Robocode Tank Royale

This repository contains sound files for the GUI application for Robocode Tank Royale.

The `sounds/` directory must be placed next to the `robocode-tankroyale-gui-x.y.z.jar` file:

```
[your tank royale directory]
├── robocode-tankroyale-gui-x.y.z.jar
└── sounds/
    ├── bots_collision.wav
    ├── bullet_hit.wav
    ├── bullets_collision.wav
    ├── death.wav
    ├── gunshot.wav
    └── wall_collision.wav
```

## Installation

### Windows

Run the PowerShell install script and enter your Tank Royale directory when prompted:

```powershell
.\install.ps1
```

### macOS / Linux

Make the script executable, then run it and enter your Tank Royale directory when prompted:

```bash
chmod +x install.sh
./install.sh
```

### Manual installation

Copy the `sounds/` folder into your Tank Royale directory:

```bash
# macOS / Linux
cp -r sounds/ /path/to/tank-royale/

# Windows (PowerShell)
Copy-Item -Path sounds -Destination C:\path\to\tank-royale\sounds -Recurse
```