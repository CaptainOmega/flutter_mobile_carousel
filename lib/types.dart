import 'package:flutter/material.dart';

/// Signature for when a pointer has contacted the screen and has begun to move.
///
/// The `details` object provides the position of the touch when it first
/// touched the surface.
typedef CarouselDragStartCallback = void Function(DragStartDetails details);

/// Signature for when a pointer that is in contact with the screen and moving
/// has moved again.
///
/// The `details` object provides the position of the touch and the distance it
/// has travelled since the last update.
typedef CarouselDragCallback = void Function(DragUpdateDetails details);

/// Signature for when a pointer that was previously in contact with the screen
/// and moving is no longer in contact with the screen.
///
/// The velocity at which the pointer was moving when it stopped contacting
/// the screen is available in the `details`.
typedef CarouselDragEndCallback = void Function(DragEndDetails details);