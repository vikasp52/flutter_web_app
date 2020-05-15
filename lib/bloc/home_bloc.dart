import 'package:rxdart/rxdart.dart';

class HomeBloc{

  static final _scrollController = BehaviorSubject<int>();
  Stream<int> get scrollStream => _scrollController.stream;
  Function(int) get scrollSink => _scrollController.sink.add;

  
  
  void dispose(){
    _scrollController.close();
  }
}