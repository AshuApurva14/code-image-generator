# 📸 Code Image Generator

Convert Python code snippets into beautiful, syntax-highlighted images with ease.

<div align="center">

![Python](https://img.shields.io/badge/Python-3.12+-blue.svg)
![Flask](https://img.shields.io/badge/Flask-3.1+-green.svg)
![License](https://img.shields.io/badge/license-GPL--3.0-orange.svg)

</div>

## ✨ Overview

A modern web application that transforms your Python code into stunning, shareable images. Perfect for:
- Documentation
- Social media posts
- Educational content
- Code presentations

## 🎯 Key Features

- **Live Preview**: See your styled code in real-time
- **Multiple Themes**: Choose from various syntax highlighting options
- **High Quality**: 2x scaled output for crystal clear images
- **Simple Interface**: User-friendly, three-step process
- **Quick Download**: One-click image saving
- **Session Support**: Your code persists between visits

## 🚀 Quick Start

### Prerequisites

- Python 3.12+
- pip package manager

### Setup

1. **Clone & Navigate**
```bash
git clone https://github.com/yourusername/code-image-generator.git
cd code-image-generator
```

2. **Create & Activate Virtual Environment**
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. **Install Dependencies**
```bash
pip install -r requirements.txt
```

4. **Generate Secret Key**
```bash
python secret_generator.py > .env
```

5. **Install Playwright Browsers**
```bash
playwright install webkit
```

### Running the App

1. **Start Flask Server**
```bash
python app.py
```

2. **Access in Browser**
Open `http://localhost:5000` in your web browser.

## 🎨 How to Use

1. **Enter Code**: Paste your Python code in the provided text area.
2. **Select Style**: Choose from a variety of syntax highlighting themes.
3. **Generate Image**: Click on "Create Image" to generate your code screenshot.
4. **Download Image**: Use the download button to save your image.

## 🛠️ Tech Stack

- [Flask](https://flask.palletsprojects.com/) - Web framework
- [Pygments](https://pygments.org/) - Syntax highlighting
- [Playwright](https://playwright.dev/) - Browser automation for screenshots
- [Python-dotenv](https://github.com/theskumar/python-dotenv) - Environment management

## 📝 License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details.

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to your branch
5. Open a Pull Request

## 🚧 Project Structure

```
code-image-generator/
├── app.py              # Main Flask application
├── utils.py           # Screenshot utilities
├── secret_generator.py # Secret key generator
├── static/
│   └── styles.css     # Application styles
└── templates/
    ├── base.html      # Base template
    ├── code_input.html    # Code input page
    ├── style_selection.html # Theme selection
    └── image.html     # Image output page
```
## Flow Diagram

[Flow Diagram](https://github.com/AshuApurva14/code-image-generator/blob/45110beed8bf168d6080e70b1e580561032ca0b3/code-image-generator/Flowdiagram.html)