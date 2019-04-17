## Example

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