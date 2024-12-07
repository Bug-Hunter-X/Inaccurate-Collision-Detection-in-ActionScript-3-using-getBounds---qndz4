function checkCollision(obj1:DisplayObject, obj2:DisplayObject):Boolean
{
    var rect1:Rectangle = obj1.getBounds(obj1.parent);
    var rect2:Rectangle = obj2.getBounds(obj2.parent);

    return rect1.intersects(rect2);
}

This function is used to detect collisions between two DisplayObjects. The issue is that `getBounds()` is calculated relative to the object's parent.  If either `obj1` or `obj2` is not directly on the stage or has a complex parent-child hierarchy, the calculated bounds might be incorrect, leading to inaccurate collision detection.