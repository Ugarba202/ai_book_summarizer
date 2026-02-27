# AI Book Summarizer

## Overview
AI Book Summarizer is a modern Flutter application designed to provide quick, insightful summaries of your favorite books. Leveraging the power of AI, the app helps users grasp key concepts and takeaways from hundreds of books in just minutes. With a premium, aesthetic design and a focus on user experience, it's the ultimate companion forvoracious readers and lifelong learners.

## Project Goals
- **Instant Insights**: Provide high-quality book summaries powered by AI.
- **Premium UI/UX**: Deliver a "WOW" factor with modern, clean, and dynamic Flutter UI.
- **Ease of Discovery**: Help users find and save summaries effortlessly.
- **Personalized Experience**: Offer smart recommendations based on user preferences.

## Tech Stack
- **Framework**: [Flutter](https://flutter.dev/) (3.10.x+)
- **Language**: [Dart](https://dart.dev/)
- **UI Design**: Material 3 with Custom Themes
- **Typography**: [Google Fonts (Outfit)](https://fonts.google.com/specimen/Outfit)
- **Architecture**: Feature-first structure (Onboarding, Premium)
- **Assets**: Custom AI-generated illustrations

## Project Structure
```text
.
├── assets
│   ├── icons           # Custom app icons
│   └── images          # AI-generated illustrations
├── lib
│   ├── core            # Core utilities, theme, and constants
│   │   └── theme       # AppTheme and AppColors definitions
│   ├── features        # Feature-based modules
│   │   ├── onboarding  # Splash, Intro, and Welcome screens
│   │   └── premium     # Premium upgrade and pricing screens
│   ├── shared          # Shared widgets and components
│   └── main.dart       # App entry point
└── test                # Widget and unit tests
```

## Screenshots
📸 Screenshot:
![App Screenshot](https://github.com/Ugarba202/ai_book_summarizer/blob/0ead81c388c9c247de1aa0c83fbbdcd9afcf3278/Screenshot%20From%202026-02-28%2000-00-58.png)
live link https://ai-book-summarizer.globeapp.dev/

## Installation

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- [Dart SDK](https://dart.dev/get-started/install)
- An IDE (VS Code, Android Studio, or IntelliJ)

### Steps
1. **Clone the repository**:
   ```bash
   git clone https://github.com/your-username/ai_book_summarizer.git
   cd ai_book_summarizer
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Run the app**:
   ```bash
   flutter run
   ```

## Usage
- **Onboarding**: Swipe through the intro screens to learn about the app's features.
- **Discovery**: Use the search functionality to find any book you'd like to summarize.
- **Premium**: Visit the Premium screen to unlock lifetime access and advanced features.

## Features
- [x] AI-powered book summaries
- [x] Modern, interactive onboarding flow
- [x] Custom dark/light themed screens
- [x] Premium subscription plans
- [x] High-quality AI-generated illustrations
- [ ] Multi-language support (Roadmap)
- [ ] Audio summaries (Roadmap)

## Learning Resources
- [Flutter Documentation](https://docs.flutter.dev/)
- [Google Fonts for Flutter](https://pub.dev/packages/google_fonts)
- [Material 3 Design Guidelines](https://m3.material.io/)

## Roadmap
- [ ] Integration with GPT-4 for better summaries.
- [ ] Offline reading mode.
- [ ] Social sharing for key insights.
- [ ] User profiles and sync across devices.

## Testing
To run the automated tests:
```bash
flutter test
```

## Contributing
Contributions are welcome! If you'd like to improve the app, please:
1. Fork the repo.
2. Create your feature branch (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## Author
**Your Name/Handle**
- GitHub: [@yourusername](https://github.com/ugarba202)
- Twitter: [@yourhandle](https://twitter.com/code_warrior)
