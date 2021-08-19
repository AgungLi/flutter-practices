import 'package:flutter_bloc/flutter_bloc.dart';

class MultiThemeBloc extends Cubit<bool> {
  MultiThemeBloc() : super(false);

  void changeTheme() => emit(!state);
}
