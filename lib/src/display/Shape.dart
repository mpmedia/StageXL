part of stagexl;

class Shape extends DisplayObject {
  
  Graphics _graphics = new Graphics();

  Graphics get graphics => _graphics;
  set graphics(Graphics value) => _graphics = value;
  
  //-----------------------------------------------------------------------------------------------

  Rectangle getBoundsTransformed(Matrix matrix, [Rectangle returnRectangle]) {
    return _graphics._getBoundsTransformed(matrix);
  }

  //-----------------------------------------------------------------------------------------------

  DisplayObject hitTestInput(num localX, num localY) {
    return _graphics._hitTestInput(localX, localY) ? this : null;
  }

  //-----------------------------------------------------------------------------------------------

  void render(RenderState renderState) {
    _graphics.render(renderState);
  }

}
