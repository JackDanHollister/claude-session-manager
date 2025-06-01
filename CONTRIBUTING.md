# Contributing to Claude Project Management System

Thank you for your interest in contributing! This project aims to improve AI-human collaboration workflows.

## Ways to Contribute

### 🐛 Bug Reports
- Use GitHub Issues to report bugs
- Include steps to reproduce
- Describe expected vs actual behavior
- Include system information (OS, Node.js version, etc.)

### 💡 Feature Requests
- Use GitHub Issues with "enhancement" label
- Describe the use case and benefit
- Consider backward compatibility

### 📝 Documentation
- Improve existing documentation
- Add examples and tutorials
- Fix typos and clarify instructions

### 🔧 Code Contributions
- New project templates
- Setup script improvements
- Cross-platform compatibility fixes

## Development Process

### Getting Started
1. Fork the repository
2. Clone your fork locally
3. Test the system on your machine
4. Create a new branch for your changes

### Template Development
When adding new templates:

1. **Define the template** in the master instructions file
2. **Create example structures** showing the directory layout
3. **Add setup questions** for user customization
4. **Test thoroughly** on different operating systems
5. **Document the template** in the template reference

### Testing Guidelines
- Test on macOS, Windows, and Linux (if possible)
- Verify ClaudePoint integration works
- Test both new and existing project workflows
- Ensure backward compatibility

### Code Style
- Use clear, descriptive variable names
- Comment complex logic
- Follow existing patterns in the codebase
- Keep shell scripts POSIX-compatible where possible

## Submission Guidelines

### Pull Requests
1. Create a descriptive branch name (e.g., `feature/python-template` or `fix/windows-paths`)
2. Write clear commit messages
3. Update documentation if needed
4. Test your changes thoroughly
5. Submit pull request with detailed description

### Commit Messages
Use clear, descriptive commit messages:
- `feat: add Python data science template`
- `fix: resolve Windows path issues in setup script`
- `docs: improve installation instructions`
- `refactor: simplify template creation logic`

## Template Contribution Guidelines

### Template Requirements
New templates should include:
- Clear directory structure
- Appropriate default files
- Setup questions for customization
- Documentation explaining when to use it
- Example PROJECT_STATUS.md and log files

### Template Naming
- Use descriptive names with asterisks (e.g., `web*app*react`)
- Keep names lowercase
- Be specific about the use case

### Template Documentation
Each template needs:
- Description of when to use it
- Setup questions it asks
- Directory structure diagram
- Best practices section
- Example files

## Project Structure Guidelines

### File Organization
```
claude*project*system/
├── README.md              # Main documentation
├── setup.sh              # Installation script
├── LICENSE               # MIT license
├── .gitignore           # Git ignore rules
├── docs/                # Detailed documentation
│   ├── installation.md
│   ├── templates.md
│   └── troubleshooting.md
└── templates/           # Template files
    └── claude-project-master.md
```

### Documentation Standards
- Use clear, concise language
- Include code examples
- Add troubleshooting sections
- Keep documentation up to date

## Release Process

### Version Numbering
We use semantic versioning (semver):
- **Major** (1.0.0): Breaking changes
- **Minor** (0.1.0): New features, backward compatible
- **Patch** (0.0.1): Bug fixes, backward compatible

### Release Checklist
- [ ] Test on multiple platforms
- [ ] Update version numbers
- [ ] Update CHANGELOG.md
- [ ] Tag the release
- [ ] Update documentation

## Community Guidelines

### Code of Conduct
- Be respectful and inclusive
- Focus on constructive feedback
- Help newcomers learn the system
- Keep discussions on topic

### Getting Help
- Check existing documentation first
- Search GitHub issues for similar problems
- Ask questions in GitHub Discussions
- Be specific about your issue and environment

## Development Environment

### Prerequisites
- Node.js 18+ for ClaudePoint
- Git for version control
- Claude Desktop with MCP support
- Text editor or IDE

### Local Testing
1. Run the setup script in a test directory
2. Try creating projects with different templates
3. Test the Claude integration
4. Verify cross-platform compatibility

### Useful Commands
```bash
# Test setup script
./setup.sh --dry-run

# Validate JSON config files
cat config.json | python -m json.tool

# Check shell script syntax
shellcheck setup.sh
```

## Recognition

Contributors will be:
- Listed in the README.md contributors section
- Credited in release notes for significant contributions
- Acknowledged in documentation for template contributions

## Questions?

- 📧 Open a GitHub Issue for questions
- 💬 Use GitHub Discussions for general discussion
- 🐛 Report bugs through GitHub Issues
- 💡 Suggest features through GitHub Issues

Thank you for contributing to better AI-human collaboration! 🤖🤝👨‍💻
