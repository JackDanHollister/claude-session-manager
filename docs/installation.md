# Installation Guide

## Prerequisites

Before installing Claude Session Manager, ensure you have:

- **Node.js 18+** - Required for ClaudePoint and Desktop Commander
- **Claude Desktop** - With MCP (Model Context Protocol) support
- **Git** - For cloning and version control
- **Desktop Commander** - For agentic file system operations

## Step-by-Step Installation

### 1. Install Required Tools

**ClaudePoint** (for checkpoint and safety features):
```bash
npm install -g claudepoint
```

**Desktop Commander** (for agentic capabilities):
```bash
npm install -g desktop-commander
```

Verify installations:
```bash
claudepoint --version
desktop-commander --version
```

### 2. Clone the Repository

```bash
git clone https://github.com/[your-username]/claude-project-system.git
cd claude-project-system
```

### 3. Run Setup Script

The setup script will configure everything automatically:

```bash
chmod +x setup.sh
./setup.sh
```

The script will:
- Detect your operating system
- Ask for your projects directory location
- Set up the master instructions file
- Guide you through Claude Desktop configuration

### 4. Configure Claude Desktop

The setup script will help you add ClaudePoint to your Claude Desktop configuration.

**Manual Configuration:**

Find your Claude Desktop config file:
- **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`
- **Linux**: `~/.config/Claude/claude_desktop_config.json`

Add both ClaudePoint and Desktop Commander to your `mcpServers` section:
```json
{
  "mcpServers": {
    "claudepoint": {
      "command": "sh",
      "args": ["-c", "cd /path/to/your/projects && claudepoint"]
    },
    "desktop_commander": {
      "command": "npx",
      "args": ["desktop-commander"]
    }
  }
}
```

### 5. Restart Claude Desktop

Completely quit and restart Claude Desktop for the configuration to take effect.

### 6. Test the System

In Claude Desktop, try the magic command:
```
Go to ~/.claude-session-manager.md and read this file to start the project system
```

Claude should respond with the system activation message and ask about new or existing projects.

## Multi-Computer Setup

### First Computer
Follow the complete installation above.

### Additional Computers

1. **Clone the repository**:
   ```bash
   git clone https://github.com/[your-username]/claude-project-system.git
   cd claude-project-system
   ```

2. **Run setup for existing user**:
   ```bash
   ./setup.sh --existing-user
   ```

3. **Configure Claude Desktop** (same as above)

4. **Sync your projects** (optional):
   If you want to sync projects across computers, you can:
   - Use cloud storage (Dropbox, iCloud, etc.) for your projects directory
   - Set up a Git repository for your projects
   - Use the system independently on each computer

## Troubleshooting

### ClaudePoint Not Found
```bash
# Check if Node.js is in PATH
node --version
npm --version

# Reinstall ClaudePoint
npm uninstall -g claudepoint
npm install -g claudepoint
```

### Claude Desktop Config Issues
1. Verify the config file location
2. Check JSON syntax validity
3. Ensure the path to your projects directory is correct
4. Restart Claude Desktop completely

### Permission Issues
```bash
# Make setup script executable
chmod +x setup.sh

# Fix npm global permissions (macOS/Linux)
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
```

### Master File Not Found
If the system can't find your master file:
1. Check the path: `ls -la ~/.claude-session-manager.md`
2. Re-run setup: `./setup.sh`
3. Verify file permissions: `chmod 644 ~/.claude-session-manager.md`

## Environment-Specific Notes

### macOS
- Uses `~/Documents/claude_projects` by default
- Claude Desktop config in `~/Library/Application Support/Claude/`

### Windows
- Uses `%USERPROFILE%\Documents\claude_projects` by default
- Claude Desktop config in `%APPDATA%\Claude\`
- May need to run setup in PowerShell or Git Bash

### Linux
- Uses `~/projects/claude_projects` by default
- Claude Desktop config in `~/.config/Claude/`

## Next Steps

Once installed:
1. Read the [Configuration Guide](configuration.md) for customization options
2. Check out [Template Reference](templates.md) for project types
3. Try creating your first project!
