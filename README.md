# Claude Session Manager

A comprehensive session management system that enables seamless collaboration between humans and Claude AI across multiple conversations and computers.

## 🚀 Overview

Claude Session Manager creates a standardized workflow for AI-assisted development that enables:
- **Seamless conversation recovery** - Pick up exactly where you left off
- **Cross-computer compatibility** - Same workflow on any machine
- **Automated project setup** - Templates for different project types
- **Safe experimentation** - Integrated with ClaudePoint for instant rollbacks
- **Smart context preservation** - Claude always knows your project status
- **🆕 Enhanced frequent logging** - Prevents work loss at chat length limits
- **🆕 Mandatory context loading** - Claude systematically loads all project context
- **🆕 Chat length management** - Proactive status updates every 10-15 exchanges

## 🤖 True Agentic Capabilities

Claude Session Manager leverages **Desktop Commander** integration to give Claude genuine agentic capabilities:

### 🔧 **File System Operations**
- **Autonomous file creation and editing** - Claude can directly create, modify, and organize project files
- **Smart directory management** - Automatically sets up complex project structures
- **Cross-platform file handling** - Works seamlessly across macOS, Windows, and Linux

### 💾 **Checkpoint Management** 
- **Automatic safety checkpoints** - Claude creates restore points before major changes
- **Intelligent rollback** - Can automatically restore previous states if something goes wrong
- **Experiment tracking** - Maintains detailed logs of all changes and decisions

### 🔍 **Context Awareness**
- **Project state analysis** - Claude can scan and understand your entire project structure
- **Progress tracking** - Automatically updates project status and next steps
- **Smart continuation** - Reads project history to seamlessly continue work across conversations

### 🎯 **Autonomous Workflow Execution**
- **End-to-end project setup** - From template selection to file creation to initial commits
- **Intelligent problem solving** - Can diagnose and fix common setup issues automatically
- **Adaptive responses** - Adjusts workflow based on your specific environment and preferences

**This isn't just AI assistance - it's true agentic collaboration where Claude acts as your development partner with real capabilities to modify your environment and manage your projects.**

## ✨ Key Features

- 🎯 **Single Command Activation** - One magic command starts everything
- 📁 **Multiple Project Templates** - Research, papers, analysis, demos
- 🔄 **Conversation Continuity** - Never lose context between sessions
- 💾 **Automatic Checkpointing** - Safe experimentation with ClaudePoint
- 🖥️ **Multi-Computer Support** - Syncs your setup across machines
- 📊 **Progress Tracking** - Detailed logs and status tracking

## 🛠️ Installation

### Prerequisites

Before installing the Claude Session Manager, you need to set up the required dependencies:

#### 1. **Claude Desktop** 
Claude Desktop is required for MCP (Model Context Protocol) support that enables agentic capabilities.

**Download and Install:**
- Visit [claude.ai/download](https://claude.ai/download)
- Download Claude Desktop for your operating system
- Install the application following the standard process for your OS
- Launch Claude Desktop and sign in with your Anthropic account

**Verify Installation:**
- Open Claude Desktop
- You should see the chat interface
- The app should be ready to accept MCP server configurations

#### 2. **Desktop Commander**
Desktop Commander provides Claude with file system access and command execution capabilities.

**Install via npm:**
```bash
npm install -g desktop-commander
```

**Verify Installation:**
```bash
desktop-commander --version
```

If you don't have Node.js installed, you'll need that first:
- **Node.js 18+**: Download from [nodejs.org](https://nodejs.org/) and install

#### 3. **ClaudePoint** 
ClaudePoint provides version control and checkpoint management for your projects.

**Install globally:**
```bash
npm install -g claudepoint
```

**Verify Installation:**
```bash
claudepoint --version
```

### Complete Setup Process

Once you have all prerequisites installed:

1. **Clone this repository**:
   ```bash
   git clone https://github.com/JackDanHollister/claude-session-manager.git
   cd claude-session-manager
   ```

2. **Run the setup script**:
   ```bash
   chmod +x setup.sh
   ./setup.sh
   ```

3. **Configure Claude Desktop MCP Integration** (see [Configuration Guide](#configuration) below)

4. **Verify Everything Works**:
   - Open Claude Desktop
   - Start a new conversation
   - Try: "List my current directory" (should work if Desktop Commander is connected)
   - Try: "Create a checkpoint called test" (should work if ClaudePoint is connected)

## 📋 Usage

### Starting the System

Simply tell Claude:
```
Go to /path/to/your/claude-session-manager.md and read this file to start the project system
```

Claude will then:
1. Check if it knows your computer setup
2. Ask if you want a new project or to continue existing work
3. Guide you through the appropriate workflow

### Creating New Projects

When creating a new project, you'll choose from templates:

#### 🧠 Deep Learning Research
Perfect for AI/ML research projects
- Jupyter notebook structure
- Experiment tracking
- Model checkpoint management
- TensorFlow/PyTorch ready

#### 📝 Paper Writing  
Academic paper writing with LaTeX
- Section-based organization
- Reference management
- Draft tracking
- Integration with writing tools

#### 📊 Data Analysis
Data exploration and analysis projects
- Structured data workflows
- Results documentation
- Visualization management

#### 🌐 Web Demo
Creating demos and interfaces
- Frontend/backend structure
- Model integration support
- Deployment ready

#### 📚 Software Documentation
Managing documentation projects
- Version tracking
- Multi-audience support
- Enhancement planning
- Automated workflows

### Continuing Existing Projects

The system automatically:
- Scans your projects directory
- Shows project status and recent progress
- Loads context for immediate continuation
- Provides smart briefings on where you left off

## ⚙️ Configuration

### Claude Desktop MCP Setup

This is the most critical step for enabling Claude's agentic capabilities. You need to configure Claude Desktop to connect to both ClaudePoint and Desktop Commander.

#### Step 1: Locate Claude Desktop Config File

**macOS**: 
```bash
~/Library/Application Support/Claude/claude_desktop_config.json
```

**Windows**: 
```bash
%APPDATA%\Claude\claude_desktop_config.json
```

**Linux**:
```bash
~/.config/Claude/claude_desktop_config.json
```

#### Step 2: Create or Edit the Config File

If the file doesn't exist, create it. Add the following configuration:

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

**Important**: Replace `/path/to/your/projects` with your actual projects directory path.

#### Step 3: Restart Claude Desktop

After editing the config file:
1. **Quit Claude Desktop completely**
2. **Restart the application**
3. **Verify connection** - You should see the MCP tools available in Claude

#### Step 4: Test the Setup

In Claude Desktop, try these commands to verify everything works:
- `List my current directory` (tests Desktop Commander)
- `Create a checkpoint` (tests ClaudePoint)

### Troubleshooting Configuration

**If MCP servers don't connect:**
1. Check that the config file syntax is valid JSON
2. Verify ClaudePoint and Desktop Commander are installed globally
3. Ensure the projects directory path is correct and exists
4. Check Claude Desktop logs for error messages

**Common Issues:**
- **Node.js not found**: Ensure Node.js is in your PATH
- **Permission errors**: Make sure the projects directory is writable
- **Path issues on Windows**: Use forward slashes `/` even on Windows in the config

## 🚀 Getting Started Examples

### Create a Deep Learning Project
```
You: "Go to /path/to/claude-session-manager.md and read this file to start the project system"
Claude: [System activation...]
Claude: "New project or continue existing?"
You: "New project"
Claude: "Project name?"
You: "image*classification*study" 
Claude: "Project type?"
You: "deep*learning*research"
Claude: [Guided setup with questions]
```

## 🔬 What Makes This Truly Agentic?

Unlike traditional AI assistants that only provide suggestions, this system gives Claude **real agency**:

### 🛠️ **Autonomous Development Actions**
- **Creates and modifies files directly** on your file system
- **Manages project structures** without manual intervention
- **Handles complex multi-step workflows** automatically

### 🧠 **Persistent Memory & Context**
- **Remembers your projects** across conversations and computers
- **Tracks development history** and decision-making
- **Maintains context** even when you switch between different work sessions

## 🤝 Contributing

This system is designed to be extensible. You can:
- Add new project templates
- Enhance existing workflows
- Improve documentation
- Share your configurations

See [Contributing Guide](docs/contributing.md) for details.

## 📄 License

MIT License - Use however you want!

## 🙏 Acknowledgments

- Built for the Claude AI community
- Integrates with [ClaudePoint](https://github.com/andycufari/ClaudePoint)
- Inspired by the need for better AI-human collaboration workflows

---

**Made with ❤️ for seamless AI collaboration**
