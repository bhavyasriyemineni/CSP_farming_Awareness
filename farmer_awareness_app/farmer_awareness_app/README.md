# Farmer Awareness App

A Flutter mobile app that helps farmers stay updated with agricultural news, government schemes, and market prices — powered by Firebase Firestore.

## Setup

1. Create a Firebase project at https://console.firebase.google.com
2. Add an Android/iOS app and download the config file:
   - Android: place `google-services.json` in `android/app/`
   - iOS: place `GoogleService-Info.plist` in `ios/Runner/`
3. Create three Firestore collections:
   - **news** → fields: `title` (string), `description` (string)
   - **schemes** → fields: `title` (string), `description` (string), `date` (string)
   - **prices** → fields: `crop` (string), `price` (string), `market` (string)
4. Run: `flutter pub get && flutter run`
