#!/bin/bash

# Claude Session Manager Setup Script
# Version 2.0

set -e

echo "🚀 Claude Session Manager Setup"
echo "==============================="

# Check if this is a new user or existing user setup
EXISTING_USER=false
if [[ "$1" == "--existing-user" ]]; then
    EXISTING_USER=true
fi

# Detect operating system
OS="unknown"
case "$(uname)" in
    Darwin) OS="macos" ;;
    Linux)  OS="linux" ;;
    MINGW*|CYGWIN*) OS="windows" ;;
esac

echo "📋 Detected OS: $OS"

# Set default project directory based on OS
case "$OS" in
    macos)   DEFAULT_PROJECTS_DIR="$HOME/Documents/programming/claude_projects" ;;
    linux)   DEFAULT_PROJECTS_DIR="$HOME/projects/claude_projects" ;;
    windows) DEFAULT_PROJECTS_DIR="$HOME/Documents/claude_projects" ;;
    *)       DEFAULT_PROJECTS_DIR="$HOME/claude_projects" ;;
esac

# Ask for projects directory
if [[ "$EXISTING_USER" == false ]]; then
    echo ""
    echo "📁 Where would you like to store your Claude projects?"
    echo "   Default: $DEFAULT_PROJECTS_DIR"
    read -p "   Path (press Enter for default): " PROJECTS_DIR
    
    if [[ -z "$PROJECTS_DIR" ]]; then
        PROJECTS_DIR="$DEFAULT_PROJECTS_DIR"
    fi
else
    PROJECTS_DIR="$DEFAULT_PROJECTS_DIR"
fi

echo "📁 Projects directory: $PROJECTS_DIR"

# Create projects directory if it doesn't exist
mkdir -p "$PROJECTS_DIR"

# Copy master instructions file
echo "📝 Setting up master instructions file..."
MASTER_FILE="$HOME/.claude-project-master.md"

if [[ -f "$MASTER_FILE" ]] && [[ "$EXISTING_USER" == false ]]; then
    echo "⚠️  Master file already exists. Backup? [y/N]"
    read -p "   " BACKUP
    if [[ "$BACKUP" =~ ^[Yy] ]]; then
        cp "$MASTER_FILE" "$MASTER_FILE.backup.$(date +%Y%m%d_%H%M%S)"
        echo "✅ Backup created"
    fi
fi

# Copy the master instructions template
cp templates/claude-project-master.md "$MASTER_FILE"

# Update the master file with user-specific information
if [[ "$EXISTING_USER" == false ]]; then
    # Get username
    USERNAME=$(whoami)
    
    # Update master file with actual paths and user info
    sed -i.bak "s|PROJECTS_DIRECTORY_PLACEHOLDER|$PROJECTS_DIR|g" "$MASTER_FILE"
    sed -i.bak "s|USERNAME_PLACEHOLDER|$USERNAME|g" "$MASTER_FILE"
    sed -i.bak "s|OS_PLACEHOLDER|$(uname)|g" "$MASTER_FILE"
    
    # Remove backup file
    rm "$MASTER_FILE.bak" 2>/dev/null || true
    
    echo "✅ Master instructions file configured"
else
    echo "✅ Master instructions file updated"
fi

# Claude Desktop configuration
echo ""
echo "🖥️  Claude Desktop Configuration"
echo "================================="

case "$OS" in
    macos)   CLAUDE_CONFIG="$HOME/Library/Application Support/Claude/claude_desktop_config.json" ;;
    linux)   CLAUDE_CONFIG="$HOME/.config/Claude/claude_desktop_config.json" ;;
    windows) CLAUDE_CONFIG="$APPDATA/Claude/claude_desktop_config.json" ;;
esac

if [[ -f "$CLAUDE_CONFIG" ]]; then
    echo "📋 Found existing Claude Desktop config"
    echo "   Location: $CLAUDE_CONFIG"
    echo ""
    echo "🔧 You need to add ClaudePoint to your Claude Desktop config."
    echo "   Add this to your mcpServers section:"
    echo ""
    echo "   \"claudepoint\": {"
    echo "     \"command\": \"sh\","
    echo "     \"args\": [\"-c\", \"cd $PROJECTS_DIR && claudepoint\"]"
    echo "   }"
    echo ""
    echo "   Would you like me to try to update it automatically? [y/N]"
    read -p "   " UPDATE_CONFIG
    
    if [[ "$UPDATE_CONFIG" =~ ^[Yy] ]]; then
        # Backup existing config
        cp "$CLAUDE_CONFIG" "$CLAUDE_CONFIG.backup.$(date +%Y%m%d_%H%M%S)"
        
        # Update config (this is a simplified version - in reality you'd want proper JSON parsing)
        echo "⚠️  Please manually update your Claude Desktop config for now."
        echo "   Automatic config update coming in future version."
    fi
else
    echo "⚠️  Claude Desktop config not found at: $CLAUDE_CONFIG"
    echo "   Please ensure Claude Desktop is installed and configured."
fi

# Check ClaudePoint installation
echo ""
echo "🔧 Checking ClaudePoint installation..."

if command -v claudepoint >/dev/null 2>&1; then
    echo "✅ ClaudePoint is installed: $(claudepoint --version)"
else
    echo "❌ ClaudePoint not found"
    echo "   Install with: npm install -g claudepoint"
    echo ""
    echo "   Install ClaudePoint now? [y/N]"
    read -p "   " INSTALL_CP
    
    if [[ "$INSTALL_CP" =~ ^[Yy] ]]; then
        echo "📦 Installing ClaudePoint..."
        npm install -g claudepoint
        echo "✅ ClaudePoint installed"
    fi
fi

# Final instructions
echo ""
echo "🎉 Setup Complete!"
echo "=================="
echo ""
echo "📋 Next Steps:"
echo "1. Restart Claude Desktop completely"
echo "2. Use this magic command to start the system:"
echo ""
echo "   Go to $MASTER_FILE and read this file to start the project system"
echo ""
echo "3. The system will guide you through creating or continuing projects"
echo ""
echo "📚 Documentation:"
echo "   - README.md for complete guide"
echo "   - docs/ folder for detailed documentation"
echo ""
echo "🚀 Happy coding with Claude!"

echo ""
echo "Master file location: $MASTER_FILE"
echo "Projects directory: $PROJECTS_DIR"
