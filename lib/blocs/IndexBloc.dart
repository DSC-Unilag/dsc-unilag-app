import 'dart:async';

import 'package:generic_bloc_provider/generic_bloc_provider.dart';

enum Page { Home, Technology }

class IndexBloc extends Bloc {
  StreamController _pageStreamController = StreamController<Page>.broadcast();

  Sink get indexPageSink => _pageStreamController.sink;

  Stream<Page> get indexPageStream => _pageStreamController.stream;

  double _elevation = 0.0;

  double get elevation => _elevation;

  void setElevation(double elevation) {
    _elevation = elevation;
  }

  StreamController _elevationStreamController =
      StreamController<double>.broadcast();

  Sink get elevationSink => _elevationStreamController.sink;

  Stream<double> get elevationStream => _elevationStreamController.stream;

  void setAppBarElevation(double elevation) {
    elevationSink.add(elevation);
  }

  changeCurrentPage(Page page) {
    indexPageSink.add(page);
  }

  @override
  void dispose() {
    _elevationStreamController?.close();
    _pageStreamController?.close();
  }
}
