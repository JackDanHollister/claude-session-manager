# Claude Session Manager - Master Instructions

## System Overview
This file contains the complete instructions for Claude to manage session continuity and project creation across conversations and computers.

## Computer Registry
To use this system, add your computer information:
- Linux-jackh: /home/jackh/projects/claude_projects (ACTIVE)

## Project Location Registry
**CRITICAL RULE: Always check and update project locations**

### Known Project Locations
Add your project locations here:
- `project*name`: /path/to/your/projects/project*name

### Project Location Management Rules
1. **ALWAYS search beyond standard directory**: If projects not found in standard location, search broader file system
2. **Update registry when found**: Add actual location to registry above when project found elsewhere
3. **Ask user for confirmation**: When project found in unexpected location, confirm this is correct
4. **Handle missing projects gracefully**: If project can't be found anywhere, ask user for current location
5. **Track location changes**: Note when projects have been moved from previous known locations

## User Preferences
Customize these for your workflow:
- User: [Your Name] ([Your Role/Field])
- Project naming: lowercase with asterisks instead of spaces (e.g., my*research*project)
- Checkpoint frequency: Before major changes, experiments, and architecture modifications
- Experiment tracking: Simple markdown logs
- Paper writing: [Your preferred tool - Overleaf, LaTeX, Word, etc.]
- Compute: [Your setup - local GPUs, cloud, etc.]

## Workflow Commands for Claude
When user says: "Go to [path-to-this-file] and read this file to start the project system"

### Step 1: Computer Check
- Read this file to understand the system
- Check if current computer is in registry above
- If new computer, add it to registry and get projects directory location

### Step 2: Project Selection
Ask user: "New project or continue existing project?"

## CRITICAL RULES FOR CLAUDE

### Pre-Action Logging Rule
**BEFORE ANY SIGNIFICANT ACTION** (creating files, major edits, running experiments):
1. Use `set_changelog` to log what you're ABOUT to do
2. Example: "About to create new deep learning project structure for image classification"
3. Then perform the action
4. This creates a clear action trail for project continuity

### Frequent Progress Logging Rule
**CRITICAL FOR CHAT LENGTH LIMITS**:
- Log progress **every 3-5 actions** - don't wait for end of session
- Update PROJECT_STATUS.md **immediately after completing tasks**
- Use `set_changelog` **frequently** to track incremental progress
- **If chat is getting long (10+ exchanges), proactively update project status**
- Always log before doing anything that might take multiple steps

### Context Loading Protocol  
**EVERY TIME** continuing an existing project:
1. **MANDATORY**: Read PROJECT_STATUS.md first - no exceptions
2. **MANDATORY**: Read last 3-5 entries from relevant log file (RESEARCH_LOG.md, WRITING_LOG.md, etc.)
3. **MANDATORY**: Check recent ClaudePoint changelog with `get_changelog`
4. **MANDATORY**: Summarize to user: "Last time we were working on X, current status is Y, next steps were Z"
5. Only then ask how to proceed

### Session Start Protocol
At start of EVERY conversation:
1. Always ask user which project they want to work on
2. Follow Context Loading Protocol above  
3. Brief user on project status before doing anything else

### Startup File System
**PURPOSE**: Automated project-specific diagnostics and environment checks

#### Startup File Detection
When loading an existing project, Claude MUST:
1. **Search for startup files** in project directory using these patterns:
   - `startup_*.py` (e.g., startup_verification.py, startup_diagnostics.py)
   - `*_startup.py` (e.g., system_startup.py, env_startup.py)
   - `*_diagnostics.py` (e.g., system_diagnostics.py, robot_diagnostics.py)
   - `check_*.py` (e.g., check_environment.py, check_system.py)

2. **Present findings to user**:
   - "Found startup files: [list filenames]"
   - "These files will verify: [briefly describe what each does based on filename/content]"
   - "Run startup diagnostics? (recommended)"

3. **If user agrees to run startup**:
   - Execute startup files in logical order (diagnostics first, then verification)
   - Show results and any issues found
   - If startup fails, ask user how to proceed before continuing with project work
   - If startup succeeds, note "✅ Startup diagnostics passed" in session log

#### Startup File Execution Order
1. **System/Environment checks first** (e.g., *_diagnostics.py, check_*.py)
2. **Verification scripts second** (e.g., startup_verification.py)
3. **Project-specific startup last** (e.g., robot_startup.py, camera_startup.py)

#### Startup File Best Practices
Projects should include startup files that check:
- Required dependencies and environments
- Network connectivity to external systems
- Hardware availability (cameras, robots, GPUs)
- Authentication/SSH keys for remote systems
- Service availability (APIs, databases, etc.)
- Project-specific configuration files

#### If NEW PROJECT:
1. **Log action**: Use `set_changelog` to log "Creating new [PROJECT_TYPE] project: [PROJECT_NAME]"
2. Ask project name (remind: lowercase, use * for spaces)
3. Ask project type from available templates
4. Ask template-specific questions
5. **Log action**: "About to create project structure for [PROJECT_NAME]"
6. Create project structure
7. **Create startup files** (based on template requirements)
8. Initialize ClaudePoint
9. Create initial checkpoint
10. Create context files
11. **Add project instructions to PROJECT_STATUS.md**: Include specific instructions for Claude about this project
12. **Document startup files**: Add startup file descriptions to PROJECT_STATUS.md
13. **Log completion**: "Project [PROJECT_NAME] created and ready for work"

#### If EXISTING PROJECT:
1. **Log action**: Use `set_changelog` to log "Loading existing project for continuation"
2. **Check standard projects directory** for projects
3. **Check Project Location Registry** for known alternative locations
4. **If projects missing from expected locations**: 
   - Search broader file system using search_files tool
   - Ask user to confirm found locations
   - Update Project Location Registry with actual locations
5. **Read PROJECT_STATUS.md files** to show project menu with context
6. **Let user select project**
7. **MANDATORY STARTUP FILE CHECK**:
   - Look for startup files in project directory (startup_*.py, *_startup.py, *_diagnostics.py)
   - If startup files found, ask user: "Found startup files [list them]. Run startup diagnostics?"
   - If user agrees, run startup files and show results
   - If startup fails, ask user how to proceed
8. **MANDATORY CONTEXT LOADING**:
   - Read full PROJECT_STATUS.md
   - Read last 3-5 entries from project log files
   - Check recent ClaudePoint changelog
   - Summarize current state to user
9. **Ready to continue work** - ask user what they want to work on based on context

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
├── startup_verification.py  # Environment and tool checks
└── .checkpoints/     # ClaudePoint safety
```

**Startup files created:**
- `startup_verification.py` - Checks writing tools, image processing, spell check, platform APIs

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
├── startup_verification.py  # Environment and dependency checks
├── system_diagnostics.py    # GPU, CUDA, memory checks
└── .checkpoints/      # ClaudePoint safety
```

**Startup files created:**
- `startup_verification.py` - Checks Python environment, framework installation, dependencies
- `system_diagnostics.py` - Verifies GPU availability, CUDA, memory, storage space

### robotics*control
**Questions to ask:**
- Robot type/model? (TM5, UR5, custom, etc.)
- Communication method? (ROS2, TCP/IP, serial, etc.)
- Camera/vision system? (yes/no, what type)
- Main robotics framework? (ROS2, custom, manufacturer SDK)

**Creates structure:**
```
project*name/
├── robot_control/        # Robot movement and control scripts
├── camera_system/        # Camera capture and processing
├── working_system/       # Production-ready scripts
├── testing/             # Safe testing environment
├── logs/                # Operation and error logs
├── PROJECT_STATUS.md    # Project context for Claude
├── ROBOTICS_LOG.md      # Robot session and experiment tracking
├── README.md            # Project overview and usage
├── system_diagnostics.py    # Network, robot, camera connectivity
├── startup_verification.py  # Environment and dependency checks
├── quick_robot_check.py     # Fast robot status verification
├── requirements.txt     # Python dependencies
└── .checkpoints/        # ClaudePoint safety
```

**Startup files created:**
- `system_diagnostics.py` - Comprehensive network, robot, camera connectivity checks
- `startup_verification.py` - Environment, conda, dependencies verification
- `quick_robot_check.py` - Fast robot connectivity and status check

## System Status
- Status: Enhanced with Startup File System
- Version: 2.1 (Added automated project startup diagnostics and verification)
- Last Updated: 2025-07-16
- Projects Directory: [Configure for your system]
