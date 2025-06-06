# Claude Session Manager - Enhanced Workflow and Logging System

## Overview
This document describes the enhanced Claude Session Manager with improved logging and context management to prevent work loss and ensure project continuity across conversations.

## Key Improvements

### 1. Frequent Progress Logging
- **Every 3-5 actions**: Update project status instead of waiting for session end
- **Proactive updates**: Every 10-15 chat exchanges to prevent work loss
- **Immediate documentation**: Log progress right after completing tasks

### 2. Chat Length Management
Claude conversations have length limits that can cut off access. To prevent work loss:
- Proactively update PROJECT_STATUS.md every 10-15 exchanges
- Log progress frequently using ClaudePoint's `set_changelog`
- Warn user when approaching limits
- Never let significant work go unlogged

### 3. Enhanced PROJECT_STATUS.md
New template includes:
- **Instructions for Claude** section with project-specific guidance
- **Session Notes** for quick work session summaries
- **Current Working Areas** to track active files and experiments
- **Workflow Preferences** for user-specific approaches

## Workflow Rules for Claude

### Session Start Protocol
1. Always ask user which project they want to work on
2. Follow mandatory context loading protocol
3. Brief user on project status before doing anything else

### Context Loading Protocol (MANDATORY)
When continuing any existing project:
1. Read PROJECT_STATUS.md first - no exceptions
2. Read last 3-5 entries from relevant log files
3. Check recent ClaudePoint changelog
4. Summarize to user: "Last time we were working on X, current status is Y, next steps were Z"
5. Only then ask how to proceed

### Pre-Action Logging Rule
Before any significant action:
1. Use `set_changelog` to log what you're about to do
2. Example: "About to create new deep learning project structure for image classification"
3. Then perform the action

### Frequent Progress Updates
Template for frequent status updates:
```markdown
## Recent Progress
### [TIMESTAMP]: [Brief description]
- Completed: [specific actions taken]
- Current state: [where things stand now]
- Next: [what should happen next]
- Files modified: [list key files changed]
```

## Best Practices

### For Users
- Use the enhanced PROJECT_STATUS.md template for all new projects
- Fill out the "Instructions for Claude" section with project-specific guidance
- Update session notes regularly to help Claude understand context

### For Claude
- Read the "Instructions for Claude" section every time a project is opened
- Update PROJECT_STATUS.md frequently, not just at session end
- Use ClaudePoint changelog to track all significant actions
- Always load full context before suggesting next steps

## File Templates

See the main `claude-project-master.md` for complete templates including:
- Enhanced PROJECT_STATUS.md with Claude instructions section
- RESEARCH_LOG.md for experiment tracking
- WRITING_LOG.md for content creation
- ANALYSIS_LOG.md for data analysis projects

## Integration with ClaudePoint

The system leverages ClaudePoint's capabilities for:
- Checkpoint creation before major changes
- Changelog tracking for all actions
- Safe experimentation with rollback capability
- Development history across sessions

## Version History

- **v1.0**: Initial project system with basic templates
- **v2.0**: Enhanced with frequent logging, chat length management, and improved context loading

This enhanced system ensures that no work is lost due to chat length limits and provides seamless project continuity across conversations.
