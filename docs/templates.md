 interface, data viz
- **Framework preference**: React, Flask, Streamlit, Gradio
- **Model integration needed**: yes/no

### Framework-Specific Structures

#### Streamlit Demo
```
demo*name/
├── app.py              # Main Streamlit app
├── pages/              # Multi-page app structure
├── components/         # Reusable components
├── models/            # Model files
├── static/            # Images, CSS
├── requirements.txt   # Python dependencies
└── .checkpoints/
```

#### Flask Demo
```
demo*name/
├── app.py              # Flask application
├── templates/          # Jinja2 templates
├── static/            # CSS, JS, images
├── models/            # Model files
├── requirements.txt   # Python dependencies
└── .checkpoints/
```

#### React Demo
```
demo*name/
├── src/
│   ├── components/     # React components
│   ├── pages/         # Page components
│   └── App.js         # Main app
├── public/            # Static assets
├── package.json       # Node dependencies
└── .checkpoints/
```

### Best Practices
- Keep models separate from UI code
- Use static/ for all assets
- Document API endpoints
- Create checkpoints before UI changes
- Test on different devices/browsers

## Customizing Templates

### Adding New Templates

1. **Define in master file**: Add template to Available Templates section
2. **Create structure logic**: Define directory creation and file templates
3. **Add setup questions**: Customize the user experience
4. **Test thoroughly**: Ensure all paths and files are created correctly

### Modifying Existing Templates

You can customize templates by:
- Editing the master instructions file
- Adding new directories to the structure
- Modifying default file templates
- Changing setup questions

### Template File Examples

#### PROJECT_STATUS.md for Research
```markdown
# Project: [PROJECT_NAME]

## Goal
[Research objective and hypothesis]

## Current Status
- ✅ Data collection (5k samples)
- 🚧 Model training (epoch 15/50)
- ❌ Paper writing

## Technical Details
- Framework: PyTorch 2.0
- Model: ResNet-50 + custom head
- Dataset: Custom microscopy images
- Environment: Local RTX 4090

## Recent Progress
Achieved 78% accuracy on validation set, improved from 72% baseline.

## Next Steps
1. Try data augmentation techniques
2. Experiment with different architectures
3. Start writing methodology section

## Notes for Claude
- Always checkpoint before architecture changes
- Save models as model_epoch_X_acc_Y.pth
- Focus on reproducible experiments

## Issues/Blockers
- Overfitting after epoch 15
- Need more diverse training data
```

#### RESEARCH_LOG.md Example
```markdown
# Research Experiment Log

## Experiment History

### 2025-06-01: Baseline Model
**Objective:** Establish baseline performance with ResNet-50
**Setup:** 
- Model: ResNet-50 pretrained on ImageNet
- Data: 4k training, 1k validation images
- Optimizer: Adam, lr=0.001
- Batch size: 32
**Results:** 
- Training accuracy: 85%
- Validation accuracy: 72%
- Training time: 2 hours
**Conclusions:** 
- Model overfits after epoch 15
- Need regularization techniques
**Next:** 
- Try data augmentation
- Add dropout layers
**Checkpoint:** baseline_resnet50_2025_06_01

### 2025-06-01: Data Augmentation
**Objective:** Reduce overfitting with data augmentation
**Setup:**
- Same model as baseline
- Added: rotation (±15°), horizontal flip, color jitter
- Increased dataset size effectively 4x
**Results:**
- Training accuracy: 82%
- Validation accuracy: 78%
- Less overfitting observed
**Conclusions:**
- Data augmentation helped significantly
- Model more robust to variations
**Next:**
- Try different architectures (EfficientNet)
- Experiment with learning rate scheduling
**Checkpoint:** augmented_data_2025_06_01
```

## Template Development Guidelines

### File Naming Conventions
- Use lowercase with asterisks: `my*project*name`
- Be descriptive but concise
- Include dates in checkpoint names
- Use semantic versioning for major changes

### Directory Organization
- Keep related files together
- Use clear, descriptive folder names
- Separate raw and processed data
- Maintain clean project structure

### Documentation Standards
- Always include README.md
- Maintain PROJECT_STATUS.md
- Log activities in appropriate log files
- Comment code thoroughly
- Document architectural decisions

### Version Control Integration
- Initialize Git in project root
- Use .gitignore for large files
- Tag important milestones
- Coordinate with ClaudePoint checkpoints

### Multi-Computer Considerations
- Use relative paths where possible
- Document environment setup
- Include dependency management
- Consider cloud storage for large files

## Template Troubleshooting

### Common Issues

**Missing Directories**
- Check template definition in master file
- Verify directory creation logic
- Ensure proper permissions

**Template Not Found**
- Verify template ID matches exactly
- Check spelling and syntax
- Restart Claude if needed

**File Creation Errors**
- Check write permissions
- Verify disk space
- Ensure parent directories exist

### Getting Help

If you encounter issues with templates:
1. Check the troubleshooting guide
2. Review the installation documentation
3. Verify your master file configuration
4. Test with a simple project first

## Contributing Templates

Want to add new templates? See the [Contributing Guide](contributing.md) for:
- Template development process
- Testing requirements
- Documentation standards
- Submission guidelines
