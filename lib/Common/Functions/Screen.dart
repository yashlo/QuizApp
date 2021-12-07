import 'package:flutter/material.dart';
class Screen {
  BuildContext _context;
  double _height;
  double _width;
  Screen(this._context) {
    MediaQueryData _queryData = MediaQuery.of(_context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
  }
  double rH(double v) {
    return _height * v;
  }
  double rW(double v) {
    return _width * v;
  }
}

