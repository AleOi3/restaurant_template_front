import 'package:mobx/mobx.dart';
part 'home.g.dart';

class HomeMoxState = _HomeMoxState with _$HomeMoxState;

abstract class _HomeMoxState with Store {


  _HomeMoxState(){
    autorun((_){
      print("Verificando value");
      print(value);
    });
  }

  @observable
  int value = 0;

  @action
  increment() {
    value++;
  }
}