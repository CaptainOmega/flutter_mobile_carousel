# Flutter carousel

Flutter carousel slider widget, allow render cells with Drag-and-drop animation.

## Features

- Easy to use API
- Drag and drop without lags
- Uniformly accelerated motion animation
- Available customize carousel cells and background  
- Auto size cells by horizontal
- Fix cells count
- Motion event handling

## Installation

Add `flutter_mobile_carousel: ^1.0.2` in your `pubspec.yaml` dependencies. Import the library via:

```dart
import 'package:flutter_mobile_carousel/carousel.dart';
```

## Run example
In repository directory run this commands in terminal:

```
cd example
flutter run
```

![demo.gif](example/demo.gif)

## Usage

Create simple `Carousel` widget:

```dart
Carousel(
  rowCount: 3,
  children: [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
  ].map((String itemText) {
    return DefaultCarouselItem(itemText);
  }).toList()
),
```

You can watch more examples in `example` directory

