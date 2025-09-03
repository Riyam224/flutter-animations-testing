

# Flutter Animation Gallery 🎨✨



---

## 📂 Project Structure

```
lib/
 ├── main.dart            # Entry point, HomeScreen with topic list
 ├── intro_demo.dart      # #1 Intro & Setup
 ├── built_in_demo.dart   # #2 Built-in Animations
 ├── tween_builder.dart   # #3 Tween Animation Builder
 ├── hero_demo.dart       # #4 Hero Animations
 ├── mixins_demo.dart     # #5 Dart Mixins (SingleTickerProviderStateMixin)
 ├── controller_demo.dart # #6 Animation Controllers
 ├── tween_sequence.dart  # #7 Tween Sequences
 ├── curves_demo.dart     # #8 Curves
 ├── animated_list.dart   # #9 Animated List
 ├── staggered_list.dart  # #10 Staggered List Animations
```

---

## 🚀 Features

### **#1 Intro & Setup**

* Welcome screen with app description.

### **#2 Built-in Animations**

* `AnimatedContainer`
* `AnimatedOpacity`
* Smooth implicit animations by simply updating widget properties.

### **#3 Tween Animation Builder**

* Uses `TweenAnimationBuilder` to animate values between a start → end over time.

### **#4 Hero Animations**

* Shared element transitions between screens using `Hero` and a `tag`.

### **#5 Dart Mixins (Primer)**

* Demonstrates `SingleTickerProviderStateMixin` to provide a `Ticker` for an `AnimationController`.
* Rotating box with `RotationTransition`.

### **#6 Animation Controllers**

* Full control over animations (`start`, `stop`, `reverse`, `repeat`).
* Scales a box up and down.

### **#7 Tween Sequences**

* Combines multiple tweens into a sequence.
* Box scales 0 → 1, then shrinks 1 → 0.5.

### **#8 Curves**

* Demonstrates easing functions like `Curves.bounceOut`.
* Box grows with a “bounce” effect.

### **#9 Animated List**

* Adds/removes list items with animated transitions.
* Insert/remove items with fade + size transitions.

### **#10 Staggered List Animations**

* Displays a list where each item animates in sequence (delayed fade/slide).

---

## 🛠️ Installation

1. **Clone the repo**

   ```bash
   git clone https://github.com/yourusername/flutter_animation_gallery.git
   cd flutter_animation_gallery
   ```

2. **Get dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   ```bash
   flutter run
   ```

---

## 📸 Screenshots

* **Home Menu:** List of all demos
* **Each Screen:** Interactive demo of the animation

(Add your own screenshots here)

---

## ⚡ Requirements

* Flutter SDK: **3.22+**
* Dart: **3.0+**
* Works on iOS Simulator, Android Emulator, and web.

---




* App implementation: Adapted into one gallery project.

---

