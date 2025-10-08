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



## App Screenshots

<img width="989" height="524" alt="Screenshot 2025-10-08 at 2 11 24 PM" src="https://github.com/user-attachments/assets/b0880e34-5288-466d-a861-ab6ecd1bcfc9" />

<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-10-08 at 14 11 48" src="https://github.com/user-attachments/assets/6675917b-a160-4aba-ac67-f4de855084f0" />

<img width="1179" height="2556" alt="Simulator Screenshot - iPhone 16 - 2025-10-08 at 14 12 23" src="https://github.com/user-attachments/assets/ff35c52e-b651-478f-8cfb-bfdc7907a368" />

## How to Use

1. **View Birthdays**: See all saved birthdays sorted by date
2. **Add Friend**: Enter name and select birthday date in the bottom sheet
3. **Save**: Tap "Save" to store the birthday
4. **Today's Birthdays**: Friends celebrating today appear with a 🎉 icon and bold text

## Requirements

- iOS 17.0+
- Xcode 15.0+
- Swift 5.9+
