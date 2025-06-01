# Claude Agentic Project Management System

A comprehensive agentic project management system designed for seamless collaboration between humans and Claude AI across multiple conversations and computers.

## 🚀 Overview

This system creates a standardized workflow for AI-assisted development that enables:
- **Seamless conversation recovery** - Pick up exactly where you left off
- **Cross-computer compatibility** - Same workflow on any machine
- **Automated project setup** - Templates for different project types
- **Safe experimentation** - Integrated with ClaudePoint for instant rollbacks
- **Smart context preservation** - Claude always knows your project status

## ✨ Key Features

- 🎯 **Single Command Activation** - One magic command starts everything
- 📁 **Multiple Project Templates** - Research, papers, analysis, demos
- 🔄 **Conversation Continuity** - Never lose context between sessions
- 💾 **Automatic Checkpointing** - Safe experimentation with ClaudePoint
- 🖥️ **Multi-Computer Support** - Syncs your setup across machines
- 📊 **Progress Tracking** - Detailed logs and status tracking

## 🛠️ Installation

### Prerequisites
- Node.js 18+ (for ClaudePoint)
- Claude Desktop with MCP support
- ClaudePoint installed globally

### Quick Setup

1. **Install ClaudePoint**:
   ```bash
   npm install -g claudepoint
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/[your-username]/claude-agentic-project-management-system.git
   cd claude-agentic-project-management-system
   ```

3. **Run the setup script**:
   ```bash
   ./setup.sh
   ```

4. **Configure Claude Desktop** (see [Configuration Guide](#configuration))

## 📋 Usage

### Starting the System

Simply tell Claude:
```
Go to /Users/[username]/.claude-project-master.md and read this file to start the project system
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
- Overleaf integration ready

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

### Continuing Existing Projects

The system automatically:
- Scans your projects directory
- Shows project status and recent progress
- Loads context for immediate continuation
- Provides smart briefings on where you left off

## 🏗️ Project Structure

Each project follows a consistent structure:

```
your*project*name/
├── [template-specific folders]
├── PROJECT_STATUS.md      # Current state and context
├── [TYPE]_LOG.md         # Research/writing/analysis logs  
├── README.md             # Project documentation
└── .checkpoints/         # ClaudePoint safety net
```

## 📁 Available Templates

### Deep Learning Research Template
```
project*name/
├── notebooks/            # Jupyter notebooks
├── images/              # Plots and visualizations
├── save*offs/           # Model checkpoints
├── PROJECT_STATUS.md    # Current progress
├── RESEARCH_LOG.md      # Experiment tracking
├── requirements.txt     # Dependencies
└── .checkpoints/        # Version control
```

### Paper Writing Template  
```
paper*title/
├── sections/            # LaTeX sections
├── figures/            # Paper figures
├── references/         # Bibliography
├── drafts/            # Version history
├── notes/             # Research notes
├── PROJECT_STATUS.md  # Writing progress
├── WRITING_LOG.md     # Session notes
├── main.tex          # Main LaTeX file
└── .checkpoints/     # Version control
```

## ⚙️ Configuration

### Claude Desktop Setup

Add to your Claude Desktop config file:

**macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
**Windows**: `%APPDATA%\Claude\claude_desktop_config.json`

```json
{
  "mcpServers": {
    "claudepoint": {
      "command": "sh",
      "args": ["-c", "cd /path/to/your/projects && claudepoint"]
    }
  }
}
```

### Multi-Computer Setup

1. **First Computer**: Run initial setup
2. **Additional Computers**: 
   - Clone this repository
   - Run `./setup.sh --existing-user`
   - System automatically syncs your preferences

## 🔧 Advanced Features

### Smart Context Loading
- Automatic project status detection
- Recent activity summaries  
- Intelligent continuation suggestions
- Cross-session memory

### Experiment Tracking
- Detailed research logs
- Automatic checkpoint creation
- Progress milestone tracking
- Result visualization

### Safety Features
- Automatic backups before changes
- ClaudePoint integration
- Emergency restore capabilities
- Change history tracking

## 🚀 Getting Started Examples

### Create a Deep Learning Project
```
You: "Go to ~/.claude-project-master.md and read this file to start the project system"
Claude: [System activation...]
Claude: "New project or continue existing?"
You: "New project"
Claude: "Project name?"
You: "image*classification*study" 
Claude: "Project type?"
You: "deep*learning*research"
Claude: [Guided setup with questions]
```

### Continue Existing Work
```
You: [Magic command]
Claude: "Found these projects:
1. image*classification*study (Last: 2 days ago - Training CNN model)
2. paper*draft (Last: 1 week ago - Writing methodology)
Which project?"
You: "1"
Claude: "Loading image classification study... 
Current status: CNN model achieving 87% accuracy, working on data augmentation.
Ready to continue!"
```

## 📚 Documentation

- [Installation Guide](docs/installation.md)
- [Template Reference](docs/templates.md)
- [Configuration Options](docs/configuration.md)
- [Troubleshooting](docs/troubleshooting.md)
- [Contributing](docs/contributing.md)

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
