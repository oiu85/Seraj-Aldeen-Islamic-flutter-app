<div align="center">

# 🕌 Seraj Al-Din Islamic App

### A Comprehensive Islamic Knowledge Platform
*Dedicated to the Legacy of Sheikh Abdullah Seraj Al-Din (May Allah have mercy on him)*

[![Flutter](https://img.shields.io/badge/Flutter-3.6.1-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-3.6.1-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev/)
[![License](https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey?style=for-the-badge)](https://flutter.dev/)

<img src="assets/images/splash_screen.png" alt="Seraj Al-Din App" width="200"/>

[Features](#-features) • [Architecture](#-architecture) • [Screenshots](#-screenshots) • [Installation](#-installation) • [Technologies](#-technologies) • [Contributing](#-contributing)

---

</div>

## 📖 About

**Seraj Al-Din** is a comprehensive Flutter-based Islamic knowledge platform that serves as a digital archive and learning hub for the teachings, works, and legacy of Sheikh Abdullah Seraj Al-Din (رحمه الله). This application provides Muslims worldwide with seamless access to authentic Islamic content including audio lectures, video sermons, digital books, scholarly articles, and more.

### 🎯 Mission

To preserve and disseminate Islamic knowledge by providing a modern, user-friendly platform that makes Sheikh Abdullah Seraj Al-Din's teachings accessible to everyone, anywhere, anytime.

---

## ✨ Features

### 🏠 **Core Features**

<table>
<tr>
<td width="50%">

#### 📚 **Digital Library**
- **Books Library**: Browse and read Islamic books in PDF format
- **Offline Reading**: Download books for offline access
- **Smart Search**: Find content across all books instantly
- **Category Organization**: Books organized by topic and theme

</td>
<td width="50%">

#### 🎧 **Audio Library**
- **Lecture Archive**: Extensive collection of audio lectures
- **Custom Audio Player**: Built-in player with playback controls
- **Background Playback**: Listen while using other apps
- **Categorized Content**: Organized by topic and series

</td>
</tr>
<tr>
<td width="50%">

#### 🎥 **Video Library**
- **Video Sermons**: High-quality Islamic video content
- **YouTube Integration**: Seamless video streaming
- **Playlist Support**: Organized video collections
- **HD Playback**: Support for multiple quality settings

</td>
<td width="50%">

#### 📝 **Articles & Fatwas**
- **Islamic Articles**: Scholarly articles and writings
- **Fatwas Archive**: Religious rulings and guidance
- **Category Browsing**: Organized by Islamic topics
- **Rich Text Viewer**: HTML-based content display

</td>
</tr>
</table>

### 🌟 **Advanced Features**

- **📷 Image Gallery**: Visual archive of Islamic events and gatherings
- **🔍 Global Search**: Search across all content types simultaneously
- **🌙 Dark Mode**: Eye-friendly dark theme with automatic switching
- **📱 Responsive Design**: Optimized for all screen sizes
- **🌐 Multi-language Support**: Arabic primary with English support
- **⚙️ Customization**: Font size adjustment and theme preferences
- **📤 Share Content**: Share articles, videos, and audio with others
- **🔗 Social Integration**: Connect with social media platforms
- **📞 Contact Us**: Direct communication with administrators

---

## 🏗️ Architecture

This app follows **Clean Architecture** principles with **BLoC (Business Logic Component)** pattern for state management, ensuring scalability, testability, and maintainability.

### 📐 Architecture Layers

```
┌─────────────────────────────────────────────────────────┐
│                  PRESENTATION LAYER                      │
│  ┌─────────────┐  ┌──────────┐  ┌──────────────────┐   │
│  │   Pages     │  │  Widgets │  │  BLoC / Events   │   │
│  │  (UI/UX)    │  │ (Reuse)  │  │  (State Mgmt)    │   │
│  └─────────────┘  └──────────┘  └──────────────────┘   │
└─────────────────────────────────────────────────────────┘
                          ▲
                          │
┌─────────────────────────▼───────────────────────────────┐
│                    DOMAIN LAYER                          │
│  ┌─────────────┐  ┌──────────────────────────────┐     │
│  │ Repositories│  │        Models                 │     │
│  │ (Abstract)  │  │   (Business Entities)         │     │
│  └─────────────┘  └──────────────────────────────┘     │
└─────────────────────────────────────────────────────────┘
                          ▲
                          │
┌─────────────────────────▼───────────────────────────────┐
│                     DATA LAYER                           │
│  ┌─────────────┐  ┌──────────┐  ┌──────────────────┐   │
│  │ Repositories│  │   Models │  │  Data Sources    │   │
│  │    (Impl)   │  │   (DTO)  │  │  (API/Local)     │   │
│  └─────────────┘  └──────────┘  └──────────────────┘   │
└─────────────────────────────────────────────────────────┘
```

### 🗂️ Project Structure

```
lib/
├── 📱 main.dart                    # App entry point
├── 🛤️  routes.dart                 # Navigation routes
├── ⚙️  config/                     # App configuration
│   ├── api_config.dart            # API endpoints
│   └── app_colors.dart            # Theme colors
├── 🎯 core/                        # Core functionality
│   ├── di/                        # Dependency injection
│   ├── network/                   # Network client
│   ├── theme/                     # App theming
│   ├── utils/                     # Utilities & helpers
│   ├── models/                    # Shared models
│   ├── responsive/                # Responsive design
│   └── shared/                    # Shared widgets
└── 🎨 features/                    # Feature modules
    ├── home/                      # Home feature
    │   ├── data/                  # Data layer
    │   │   ├── models/            # Data models
    │   │   ├── repositories/      # Repository impl
    │   │   └── di/                # DI setup
    │   ├── domain/                # Domain layer
    │   │   └── repositories/      # Repository interface
    │   └── presentation/          # Presentation layer
    │       ├── bloc/              # BLoC files
    │       ├── pages/             # UI pages
    │       └── widgets/           # UI widgets
    ├── biography/                 # Biography feature
    ├── books_library/             # Books feature
    ├── sounds_library/            # Audio feature
    ├── video_library/             # Video feature
    ├── benefits_fatwas/           # Articles feature
    ├── image_galary/              # Gallery feature
    ├── global_search/             # Search feature
    ├── settings/                  # Settings feature
    └── html_viewer/               # HTML viewer feature
```

---

## 🎨 Screenshots

<div align="center">

### Mobile Views

<table>
<tr>
<td align="center" width="33%">
<img src="assets/images/splash_screen.png" alt="Splash Screen" width="200"/><br />
<b>Splash Screen</b>
</td>
<td align="center" width="33%">
<img src="assets/images/main_card_background.png" alt="Home" width="200"/><br />
<b>Home Screen</b>
</td>
<td align="center" width="33%">
<img src="assets/images/book_card.png" alt="Library" width="200"/><br />
<b>Books Library</b>
</td>
</tr>
</table>

### Feature Highlights

| 🌙 Dark Mode | 🎨 Modern UI | 📱 Responsive |
|:------------:|:------------:|:-------------:|
| Beautiful dark theme for comfortable reading | Clean, intuitive interface design | Optimized for all devices |

</div>

---

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Flutter SDK**: `>=3.6.1`
- **Dart SDK**: `>=3.6.1`
- **Android Studio** or **VS Code** with Flutter extensions
- **Git** for version control

### 📥 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/oiu85/Seraj-Islamic-flutter-app.git
   cd Seraj-Islamic-flutter-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code** (for freezed, json_serializable, etc.)
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Generate assets** (icons, fonts, etc.)
   ```bash
   flutter pub run flutter_gen_runner
   ```

5. **Run the app**
   ```bash
   # For Android
   flutter run

   # For iOS
   flutter run -d ios

   # For Web
   flutter run -d chrome
   ```

### 🔧 Build for Production

```bash
# Android APK
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# Web
flutter build web --release
```

---

## 🛠️ Technologies

### 🎯 **State Management & Architecture**

| Package | Version | Purpose |
|---------|---------|---------|
| `flutter_bloc` | ^9.1.1 | BLoC pattern implementation |
| `get_it` | ^8.2.0 | Dependency injection |
| `injectable` | ^2.5.1 | Code generation for DI |
| `freezed` | ^3.0.0 | Immutable data classes |
| `dartz` | ^0.10.0 | Functional programming |
| `equatable` | ^2.0.7 | Value equality |

### 🌐 **Network & API**

| Package | Version | Purpose |
|---------|---------|---------|
| `dio` | ^5.9.0 | HTTP client |
| `pretty_dio_logger` | ^1.4.0 | Network logging |
| `cached_network_image` | ^3.4.1 | Image caching |

### 🎨 **UI Components**

| Package | Version | Purpose |
|---------|---------|---------|
| `flutter_screenutil` | ^5.9.3 | Responsive design |
| `flutter_svg` | ^2.2.0 | SVG support |
| `flutter_animate` | ^4.5.2 | Animations |
| `lottie` | ^3.3.1 | Lottie animations |
| `salomon_bottom_bar` | ^3.3.2 | Bottom navigation |
| `skeletonizer` | ^2.1.0 | Loading skeletons |

### 📚 **Media & Documents**

| Package | Version | Purpose |
|---------|---------|---------|
| `syncfusion_flutter_pdfviewer` | ^31.1.19 | PDF viewing |
| `audioplayers` | ^6.5.1 | Audio playback |
| `video_player` | ^2.8.2 | Video playback |
| `youtube_player_flutter` | ^9.1.2 | YouTube integration |
| `photo_view` | ^0.15.0 | Image viewer |

### 🗄️ **Storage**

| Package | Version | Purpose |
|---------|---------|---------|
| `shared_preferences` | ^2.5.3 | Local storage |
| `path_provider` | ^2.1.5 | File system access |

### 🔧 **Utilities**

| Package | Version | Purpose |
|---------|---------|---------|
| `url_launcher` | ^6.3.0 | URL handling |
| `share_plus` | ^11.1.0 | Share functionality |
| `permission_handler` | ^12.0.1 | Permission management |
| `talker_flutter` | ^5.0.0 | Logging framework |

---

## 📋 Design Patterns

### 🎯 **BLoC Pattern**

The app uses the **BLoC (Business Logic Component)** pattern for state management:

```dart
// Event
abstract class HomeEvent extends Equatable {
  const HomeEvent();
}

class LoadMenusEvent extends HomeEvent {
  const LoadMenusEvent();
  
  @override
  List<Object?> get props => [];
}

// State
class HomeState extends Equatable {
  final BlocStatus status;
  final List<Menu> menus;
  
  const HomeState({
    this.status = BlocStatus.initial,
    this.menus = const [],
  });
  
  @override
  List<Object?> get props => [status, menus];
}

// BLoC
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MenuRepository repository;
  
  HomeBloc({required this.repository}) : super(const HomeState()) {
    on<LoadMenusEvent>(_onLoadMenus);
  }
  
  Future<void> _onLoadMenus(
    LoadMenusEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));
    
    final result = await repository.getMenus();
    
    result.fold(
      (failure) => emit(state.copyWith(status: BlocStatus.error)),
      (menus) => emit(state.copyWith(
        status: BlocStatus.success,
        menus: menus,
      )),
    );
  }
}
```

### 🗂️ **Repository Pattern**

Clean separation between data sources and business logic:

```dart
// Domain Layer - Abstract Repository
abstract class MenuRepository {
  Future<Either<Exception, MenuResponse>> getBottomHeaderMenus();
}

// Data Layer - Repository Implementation
class MenuRepositoryImpl implements MenuRepository {
  final NetworkClient networkClient;
  
  MenuRepositoryImpl({required this.networkClient});
  
  @override
  Future<Either<Exception, MenuResponse>> getBottomHeaderMenus() async {
    try {
      final response = await networkClient.get(ApiConfig.menusBottomHeader);
      final menuResponse = MenuResponse.fromJson(response.data);
      return Right(menuResponse);
    } catch (e) {
      return Left(Exception('Failed to fetch menus'));
    }
  }
}
```

### 💉 **Dependency Injection**

Using **GetIt** for dependency management:

```dart
void setupAppDependencies() {
  // Core
  getIt.registerLazySingleton<NetworkClient>(() => NetworkClient());
  
  // Repository
  getIt.registerLazySingleton<MenuRepository>(
    () => MenuRepositoryImpl(networkClient: getIt()),
  );
  
  // BLoC
  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(repository: getIt()),
  );
}
```

---

## 🎯 Key Features Implementation

### 🌙 **Dark Mode**

```dart
class ThemeManager extends ChangeNotifier {
  bool _isDarkMode = false;
  
  bool get isDarkMode => _isDarkMode;
  
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    AppColors.setDarkMode(_isDarkMode);
    notifyListeners();
  }
}
```

### 📱 **Responsive Design**

```dart
// Responsive sizing with ScreenUtil
Container(
  width: 200.w,      // Responsive width
  height: 100.h,     // Responsive height
  padding: EdgeInsets.all(16.p),  // Responsive padding
  child: Text(
    'Responsive Text',
    style: TextStyle(fontSize: 14.f),  // Responsive font
  ),
)
```

### 🔍 **Global Search**

Unified search across all content types:

```dart
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository repository;
  
  Future<void> _onSearch(SearchEvent event, Emitter<SearchState> emit) async {
    // Search across books, audio, video, articles simultaneously
    final results = await repository.search(event.query);
    
    results.fold(
      (failure) => emit(SearchError(message: failure.message)),
      (data) => emit(SearchLoaded(
        books: data.books,
        audios: data.audios,
        videos: data.videos,
        articles: data.articles,
      )),
    );
  }
}
```

---

## 🌐 API Integration

### Base Configuration

```dart
class ApiConfig {
  static const String baseUrl = "https://srajalden.swbai.com/api";
  
  // Endpoints
  static const String menusBottomHeader = "/menus/position/bottom_header";
  static const String pages = "/pages";
  static const String articlesCategories = "/categories/articles/main";
  static const String soundsCategories = "/categories/sounds/main";
  static const String videosCategories = "/categories/videos/main";
  static const String booksCategories = "/categories/books/main";
  static const String photoGalleriesCategories = "/categories/photo_galleries/main";
  static const String search = "/search";
  static const String contactUs = "/contact-us";
}
```

### Network Client

```dart
class NetworkClient {
  final Dio _dio;
  static const String baseUrl = "https://srajalden.swbai.com/api";
  
  NetworkClient() : _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 15),
    receiveTimeout: const Duration(seconds: 15),
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    },
  ));
  
  Future<Response> get(String url, {Map<String, dynamic>? queryParameters}) {
    return _dio.get(url, queryParameters: queryParameters);
  }
  
  Future<Response> post(String url, {dynamic data}) {
    return _dio.post(url, data: data);
  }
}
```

---

## 📱 Supported Platforms

<div align="center">

| Platform | Minimum Version | Status |
|:--------:|:---------------:|:------:|
| 🤖 **Android** | API 21 (Android 5.0) | ✅ Fully Supported |
| 🍎 **iOS** | iOS 12.0+ | ✅ Fully Supported |
| 🌐 **Web** | Modern Browsers | ✅ Fully Supported |
| 🖥️ **Windows** | Windows 10+ | 🚧 In Development |
| 🐧 **Linux** | Ubuntu 20.04+ | 🚧 In Development |
| 🍎 **macOS** | macOS 10.14+ | 🚧 In Development |

</div>

---

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### 🔧 **Development Setup**

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Make your changes
4. Run tests and ensure code quality
5. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
6. Push to the branch (`git push origin feature/AmazingFeature`)
7. Open a Pull Request

### 📝 **Contribution Guidelines**

- Follow the existing code style and architecture
- Write meaningful commit messages
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting PR

### 🐛 **Bug Reports**

If you find a bug, please create an issue with:
- Clear description of the bug
- Steps to reproduce
- Expected vs actual behavior
- Screenshots if applicable
- Device/OS information

---

## 📄 Code Quality

### 🧪 **Testing**

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# View coverage report
genhtml coverage/lcov.info -o coverage/html
```

### 📊 **Code Analysis**

```bash
# Analyze code
flutter analyze

# Format code
flutter format .

# Check for outdated packages
flutter pub outdated
```

---

## 🔐 Security

- ✅ Secure API communication with HTTPS
- ✅ Input validation and sanitization
- ✅ Proper error handling
- ✅ No sensitive data in logs (production)
- ✅ Regular dependency updates

---

## 📈 Performance

### Optimization Strategies

- **🚀 Lazy Loading**: Load content on demand
- **💾 Caching**: Cache network images and API responses
- **🎨 Widget Optimization**: Use `const` constructors where possible
- **📦 Code Splitting**: Feature-based modular architecture
- **🔄 State Management**: Efficient BLoC implementation

---

## 📞 Contact & Support

<div align="center">

### 👨‍💻 Developer

**Abdullah Alatrash**

[![GitHub](https://img.shields.io/badge/GitHub-@oiu85-181717?style=for-the-badge&logo=github)](https://github.com/oiu85)
[![Facebook](https://img.shields.io/badge/Facebook-Profile-1877F2?style=for-the-badge&logo=facebook)](https://www.facebook.com/share/18p8PYoVDw/)
[![Instagram](https://img.shields.io/badge/Instagram-@85oiu-E4405F?style=for-the-badge&logo=instagram)](https://www.instagram.com/85oiu?igsh=MTF3bTR3ZWNveDEzYg==)

### 🌟 Support the Project

If you find this project useful, please consider:
- ⭐ Starring the repository
- 🐛 Reporting bugs
- 💡 Suggesting new features
- 🤝 Contributing to the code
- 📢 Sharing with others

</div>

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

```
MIT License

Copyright (c) 2025 Abdullah Alatrash

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
```

---

## 🙏 Acknowledgments

### Special Thanks To:

- **Sheikh Abdullah Seraj Al-Din (رحمه الله)** - For his invaluable Islamic teachings
- **Flutter Team** - For the amazing framework
- **Open Source Community** - For the incredible packages and tools
- **Contributors** - Everyone who has contributed to this project
- **Users** - For using and supporting this platform

---

## 🗺️ Roadmap

### ✅ **Completed**
- [x] Home screen with navigation
- [x] Books library with PDF viewer
- [x] Audio library with custom player
- [x] Video library with YouTube integration
- [x] Articles and Fatwas section
- [x] Image gallery
- [x] Global search functionality
- [x] Dark mode support
- [x] Responsive design
- [x] Settings and customization

### 🚀 **Upcoming Features**
- [ ] Offline mode for all content
- [ ] Bookmarks and favorites
- [ ] Notes and highlights
- [ ] Push notifications
- [ ] User authentication
- [ ] Community features (comments, discussions)
- [ ] Advanced audio player (sleep timer, speed control)
- [ ] Desktop applications (Windows, macOS, Linux)
- [ ] Apple Watch & Android Wear support
- [ ] Multi-language support (English, French, Urdu)

---

## 📊 Project Stats

<div align="center">

![GitHub repo size](https://img.shields.io/github/repo-size/oiu85/Seraj-Islamic-flutter-app?style=for-the-badge)
![GitHub stars](https://img.shields.io/github/stars/oiu85/Seraj-Islamic-flutter-app?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/oiu85/Seraj-Islamic-flutter-app?style=for-the-badge)
![GitHub issues](https://img.shields.io/github/issues/oiu85/Seraj-Islamic-flutter-app?style=for-the-badge)
![GitHub pull requests](https://img.shields.io/github/issues-pr/oiu85/Seraj-Islamic-flutter-app?style=for-the-badge)

</div>

---

## 💖 Support

<div align="center">

### Found this project helpful? Consider supporting:

⭐ **Star the repo** to show your support!

💝 **Spread the word** - Share with fellow developers and Muslims!

🤲 **Make Dua** - Pray for the Sheikh and all those who benefit from this work!

---

### بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ

*"And say: My Lord! Increase me in knowledge."* 
**[Quran 20:114]**

---

**Made with ❤️ by [Abdullah Alatrash](https://github.com/oiu85)**

**For the sake of Allah and Islamic knowledge dissemination**

---

</div>

<div align="center">

### 🌟 If you appreciate this work, please star the repository! 🌟

[![Star History Chart](https://api.star-history.com/svg?repos=oiu85/Seraj-Islamic-flutter-app&type=Date)](https://star-history.com/#oiu85/Seraj-Islamic-flutter-app&Date)

</div>
