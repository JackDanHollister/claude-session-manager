# Claude Session Manager - Master Instructions

## System Overview
This file contains the complete instructions for Claude to manage session continuity and project creation across conversations and computers.

## Computer Registry
To use this system, add your computer information:
- [Computer-Name]: [your/projects/directory/path] (ACTIVE)

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
