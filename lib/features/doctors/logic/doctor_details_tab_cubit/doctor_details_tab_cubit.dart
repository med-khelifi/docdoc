import 'package:hydrated_bloc/hydrated_bloc.dart';

class DoctorDetailsTabCubit extends Cubit<int> {
  DoctorDetailsTabCubit() : super(0);
  void changeTab(int index) => emit(index);
}
