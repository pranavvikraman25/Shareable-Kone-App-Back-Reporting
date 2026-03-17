# KONE Maintenance Mobile App (React Native / Expo)

This is the mobile version of the KONE Maintenance app, built with React Native and Expo.

## Prerequisites

- Node.js (LTS)
- npm or yarn
- Expo Go app on your phone (Android/iOS) OR Android Studio / Xcode for simulators.

## Setup

1. Navigate to the mobile directory:
   ```bash
   cd mobile
   ```

2. Install dependencies:
   ```bash
   npm install
   ```

## Running the App

Start the development server:

```bash
npx expo start
```

- **Scan the QR code** with the Expo Go app (Android) or Camera (iOS) to run on your device.
- **Press 'a'** to run on Android Emulator.
- **Press 'i'** to run on iOS Simulator (macOS only).
- **Press 'w'** to run in Web Browser (limited functionality for native modules).

## Features Implemented

- **Login Screen**: Simulated login (default: tech@kone.com).
- **Dashboard**: List of elevators with search.
- **Elevator Details**: View status and details.
- **Maintenance Session**:
  - Live timer.
  - Issue logging.
  - **Simulated Movement Tracking**: Tracks "technician position" every 5 seconds.
- **Reports & Heatmaps**:
  - **Vertical Heatmap**: Shows time spent on each floor.
  - **Floor Heatmap**: Shows positioning within the elevator car.

## Project Structure

- `app/`: Expo Router screens and layouts.
- `src/shared/`: Shared logic (types, demo data, Supabase client).
- `src/context/`: Auth context and state management.
- `src/components/`: Reusable UI components (if any).
