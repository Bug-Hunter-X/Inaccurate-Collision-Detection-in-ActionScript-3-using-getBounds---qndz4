function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean
{
    // Convert coordinates to stage coordinates
    var rect1:Rectangle = obj1.getBounds(stage);
    var rect2:Rectangle = obj2.getBounds(stage);

    return rect1.intersects(rect2);
}

This corrected version uses `stage` as the reference coordinate system for `getBounds()`. This ensures that collision detection is accurate, even for objects nested deeply within a complex display list hierarchy.  Alternatively, a common ancestor could be used as a consistent reference point if both objects share a parent.