# Birthdays 🎂

A SwiftUI app for tracking friends' birthdays with persistent data storage using SwiftData. Never forget an important birthday again!

## Features

- 🎉 **Birthday Tracking**: Store friends' names and birthdays
- 🎊 **Today's Birthdays**: Special party popper icon and bold text for today's celebrations
- 📅 **Date Picker**: Easy date selection with validation
- 💾 **Persistent Storage**: Uses SwiftData to save birthdays locally
- ✅ **Input Validation**: Ensures names aren't empty before saving
- 📋 **Sorted List**: Birthdays automatically sorted by date
- 🎨 **Clean UI**: Bottom sheet design for adding new friends

## What I Learned

Built while following the **Develop in Swift Tutorials**, this project demonstrates:

- **SwiftData** for data persistence
- `@Model` macro for data models
- `@Query` for fetching and sorting data
- `@Environment(\.modelContext)` for database operations
- Date formatting and manipulation
- Calendar calculations (`isDateInToday`)
- Form validation and user feedback
- `NavigationStack` and list views
- `.safeAreaInset` for overlay UI
- Real-time UI updates with data changes

## How to Use

1. **View Birthdays**: See all saved birthdays sorted by date
2. **Add Friend**: Enter name and select birthday date in the bottom sheet
3. **Save**: Tap "Save" to store the birthday
4. **Today's Birthdays**: Friends celebrating today appear with a 🎉 icon and bold text

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+
