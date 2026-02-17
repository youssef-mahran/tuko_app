Toku App

A Simple & Interactive Japanese Learning App built with Flutter

Toku is a beginner-friendly Japanese learning application that helps users learn essential vocabulary through audio pronunciation and visual illustrations.

The app focuses on interactive learning using categorized vocabulary with native-style pronunciation sounds.

🌟 Overview

Toku is structured into organized learning categories to make vocabulary memorization simple and effective.

The application currently includes:

🔢 Numbers

👨‍👩‍👧 Family Members

🎨 Colors

💬 Common Phrases

Each item contains:

English word

Japanese translation

Associated image (where applicable)

Audio pronunciation

✨ Key Features

🎵 Play pronunciation audio using audioplayers

🖼 Image-supported vocabulary learning

📂 Categorized learning sections

📱 Clean and responsive UI

🎨 Custom gradient cards & modern UI styling

🔊 One-tap sound playback

🧱 Reusable components architecture

⚡ Lightweight and fast performance

🧠 Technical Implementation
🔹 Audio Handling

Implemented using audioplayers

Audio loaded via AssetSource

Separate model-based playback method inside:

ItemModel

ItemModelPhrases

Independent AudioPlayer instance per playback

🔹 Architecture Structure

Model Layer:

ItemModel

ItemModelPhrases

UI Components:

Item

ItemPhrases

Category

Screens:

HomePage

NumbersPage

ColorsPage

FamilyPage

PhrasesPage

Clean separation between:

Data (Models)

UI Components

Screens

Navigation Logic

📂 Project Structure
lib/
 ├── component/
 │    ├── item.dart
 │    ├── item_phrases.dart
 │    └── category.dart
 ├── models/
 │    ├── item_model.dart
 │    └── model_phrases.dart
 ├── screens/
 │    ├── home_page.dart
 │    ├── numbers_page.dart
 │    ├── colors_page.dart
 │    ├── family_page.dart
 │    └── phrases_page.dart
 └── main.dart
