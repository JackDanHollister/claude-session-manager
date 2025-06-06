# Claude Project Master Instructions

## System Overview
This file contains the complete instructions for Claude to manage project creation and continuation across conversations and computers.

## Computer Registry
- MacBook-Jack: /Users/jack/Documents/programming/claude_projects (ACTIVE)

## Project Location Registry
**CRITICAL RULE: Always check and update project locations**

### Known Project Locations
- `master*image*classification`: /Users/jack/Documents/programming/claude_projects/master*image*classification
- `claude*project*system`: /Users/jack/Documents/programming/claude_projects/claude*project*system  
- `ClaudeDC_-_elephant_270PI`: /Users/jack/Documents/academic/nhm_work/robotics/ClaudeDC_-_elephant_270PI

### Project Location Management Rules
1. **ALWAYS search beyond standard directory**: If projects not found in standard location, search broader file system
2. **Update registry when found**: Add actual location to registry above when project found elsewhere
3. **Ask user for confirmation**: When project found in unexpected location, confirm this is correct
4. **Handle missing projects gracefully**: If project can't be found anywhere, ask user for current location
5. **Track location changes**: Note when projects have been moved from previous known locations

## User Preferences
- User: Jack (AI/Deep Learning Researcher)
- Project naming: lowercase with asterisks instead of spaces (e.g., my*research*project)
- Checkpoint frequency: Before major changes, experiments, and architecture modifications
- Experiment tracking: Simple markdown logs
- Paper writing: Overleaf (LaTeX)
- Compute: Primarily local GPUs, sometimes cloud

## Workflow Commands for Claude
When user says: "Go to /Users/jack/.claude-project-master.md and read this file to start the project system"

### Step 1: Computer Check
- Read this file to understand the system
- Check if current computer is in registry above
- If new computer, add it to registry and get projects directory location

### Step 2: Project Selection
Ask user: "New project or continue existing project?"

#### If NEW PROJECT:
1. Ask project name (remind: lowercase, use * for spaces)
2. Ask project type from available templates
3. Ask template-specific questions
4. Create project structure
5. Initialize ClaudePoint
6. Create initial checkpoint
7. Create context files

#### If EXISTING PROJECT:
1. **Check standard projects directory** for projects
2. **Check Project Location Registry** for known alternative locations
3. **If projects missing from expected locations**: 
   - Search broader file system using search_files tool
   - Ask user to confirm found locations
   - Update Project Location Registry with actual locations
4. **Read PROJECT_STATUS.md files** to show project menu with context
5. **Let user select project**
6. **Load project context** and brief user on current state
7. **Ready to continue work**

**Location Discovery Process:**
- Start with standard directory scan
- Check registered alternative locations
- If discrepancies found, perform system-wide search
- Update master file registry with actual locations
- Always confirm unusual locations with user

## Available Templates

### blog*writing
**Questions to ask:**
- Blog title/topic?
- Target platform? (Medium, personal blog, LinkedIn, etc.)
- Article type? (tutorial, case study, opinion, technical deep-dive)
- Estimated length? (short, medium, long-form)

**Creates structure:**
```
blog*title/
├── drafts/            # Multiple draft versions
├── sections/          # Individual article sections
├── images/           # Screenshots, diagrams, graphics
├── research/         # Background research and references
├── outlines/         # Article outlines and structure notes
├── PROJECT_STATUS.md # Blog writing progress
├── WRITING_LOG.md    # Writing session notes
├── final/            # Final published versions
└── .checkpoints/     # ClaudePoint safety
```

### deep*learning*research
**Questions to ask:**
- Research focus? (computer vision, NLP, reinforcement learning, other)
- Main framework? (PyTorch, TensorFlow, JAX)
- Brief description of research goal?

**Creates structure:**
```
project*name/
├── notebooks/          # Jupyter notebooks for experiments  
├── images/            # Plots, figures, visualizations
├── save*offs/         # Model checkpoints (user manages)
├── PROJECT_STATUS.md  # Project context for Claude
├── RESEARCH_LOG.md    # Experiment tracking
├── requirements.txt   # Python dependencies
├── README.md          # Project overview
└── .checkpoints/      # ClaudePoint safety
```

### paper*writing  
**Questions to ask:**
- Paper title?
- Target venue? (conference/journal name)
- Collaboration type? (solo, with team)

**Creates structure:**
```
paper*title/
├── sections/          # Individual LaTeX sections
├── figures/          # Figure files and sources  
├── references/       # BibTeX and reference materials
├── drafts/          # Full paper version history
├── notes/           # Research notes and ideas
├── PROJECT_STATUS.md # Paper progress context
├── WRITING_LOG.md   # Writing session notes
├── main.tex         # LaTeX main file template
└── .checkpoints/    # ClaudePoint safety
```

### data*analysis
**Questions to ask:**
- Data source type? (images, text, numerical, other)
- Analysis goal? (exploration, modeling, visualization, report)
- Expected output? (notebook, report, dashboard)

**Creates structure:**
```
analysis*name/
├── data/            # Raw and processed data
├── notebooks/       # Analysis notebooks
├── results/         # Output files and reports
├── images/         # Generated plots and figures
├── PROJECT_STATUS.md
├── ANALYSIS_LOG.md
└── .checkpoints/
```

### web*demo
**Questions to ask:**
- Demo purpose? (research showcase, model interface, data viz)
- Framework preference? (React, Flask, Streamlit, Gradio)
- Model integration needed? (yes/no)

**Creates structure:**
```
demo*name/
├── src/             # Source code
├── static/          # Static assets
├── models/          # Model files (if needed)
├── PROJECT_STATUS.md
└── .checkpoints/
```

### documentation*creator
**Questions to ask:**
- Documentation type? (API docs, user guides, technical specs, tutorial series)
- Source types? (websites, APIs, code repos, PDFs, existing docs)
- Output format? (Markdown, HTML, PDF, interactive site)
- Target audience? (developers, end-users, technical writers)

**Creates structure:**
```
docs*project*name/
├── sources/           # Raw scraped/collected source materials
├── scrapers/          # Web scraping scripts and tools
├── processors/        # Content processing and parsing scripts
├── templates/         # Documentation templates and themes
├── generated/         # Auto-generated documentation drafts
├── final/            # Finalized documentation output
├── assets/           # Images, diagrams, styling assets
├── config/           # Scraper configs and processing rules
├── PROJECT_STATUS.md # Documentation project progress
├── SCRAPING_LOG.md   # Source collection and processing log
├── requirements.txt  # Python dependencies
└── .checkpoints/     # ClaudePoint safety
```

## Standard File Templates

### PROJECT_STATUS.md Template
```markdown
# Project: [PROJECT_NAME]

## Goal
[Brief description of what we're building/researching]

## Current Status  
- ✅ Completed items
- 🚧 In progress items  
- ❌ Not started items

## Technical Details
- Framework: [PyTorch/TensorFlow/etc]
- Environment: [local GPU/cloud/etc]
- Key dependencies: [list main packages]

## Recent Progress
[What was accomplished in last session]

## Next Steps
1. [Priority 1]
2. [Priority 2] 
3. [Priority 3]

## Notes for Claude
- [Any specific instructions or preferences]
- [Code style preferences]
- [Things to be careful about]

## Issues/Blockers
- [Current problems or challenges]
```

### RESEARCH_LOG.md Template
```markdown
# Research Experiment Log

## Experiment History

### [DATE]: [Experiment Name]
**Objective:** [What you were testing]
**Setup:** [Model, data, hyperparameters]
**Results:** [Key metrics and observations]
**Conclusions:** [What you learned]
**Next:** [What to try next]
**Checkpoint:** [ClaudePoint checkpoint name if relevant]

---

[Additional experiments follow same format]
```

## Project Context Loading
When continuing existing project:
1. Read PROJECT_STATUS.md for current state
2. Read recent entries in research/writing/analysis logs  
3. Check ClaudePoint history for recent changes
4. Provide brief summary to user
5. Ask how to proceed

## Error Handling
- If projects directory doesn't exist, create it
- If project folder exists but missing key files, offer to repair/recreate
- If ClaudePoint not set up in project, offer to initialize
- Always create checkpoint before major structural changes

## Integration Notes
- Use ClaudePoint MCP tools for checkpoint management
- Respect user's model saving conventions in save*offs/
- For papers, remind about Overleaf sync if needed
- For experiments, encourage detailed logging for future paper writing

## Dependencies Templates

### Deep Learning Research requirements.txt
```
torch>=2.0.0
torchvision
numpy
matplotlib
seaborn
jupyter
pandas
scikit-learn
tqdm
pillow
opencv-python
tensorboard
```

### Paper Writing main.tex Template
```latex
\documentclass[conference]{IEEEtran}
\usepackage{amsmath,amsfonts}
\usepackage{graphicx}
\usepackage{cite}
\usepackage{url}

\title{[PAPER TITLE]}
\author{
\IEEEauthorblockN{Jack [Last Name]}
\IEEEauthorblockA{[Affiliation]\\
Email: [email]}
}

\begin{document}
\maketitle

\begin{abstract}
[Abstract content]
\end{abstract}

\section{Introduction}
[Introduction content]

\bibliographystyle{IEEEtran}
\bibliography{references}
\end{document}
```

## GitHub Integration Notes
- This master file should be version controlled
- Project templates can be shared across machines
- Consider .gitignore for large model files
- Sync strategy for multi-machine workflows

## System Status
- Status: Active on MacBook-Jack
- Version: 1.1
- Last Updated: 2025-06-06
- Projects Directory: /Users/jack/Documents/programming/claude_projects
