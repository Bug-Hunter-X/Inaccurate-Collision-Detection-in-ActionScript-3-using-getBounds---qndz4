# ActionScript 3 Collision Detection Bug

This repository demonstrates a common bug in ActionScript 3 related to collision detection using the `getBounds()` method. The issue arises from an incorrect understanding of the coordinate system used by `getBounds()`.

## Problem Description

The provided `checkCollision` function uses `obj.getBounds(obj.parent)` to determine the bounding rectangle of each object. This is problematic when dealing with objects nested within complex display lists. The returned bounding rectangle is relative to the parent object, potentially leading to inaccurate collision detection if the parent object's position or transformation is not considered.

## Solution

The solution involves using the globalToLocal() and localToGlobal() methods to convert coordinates to a common coordinate system, such as the stage. This ensures that the bounding rectangles are accurately compared regardless of the object's position within the display list hierarchy.

## How to Run

1. Compile both `bug.as` and `bugSolution.as` using an ActionScript 3 compiler (like the one included with Flash Professional or Adobe Animate). 
2. Test both versions to observe the incorrect and correct collision behavior.