import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mini_project_data_on/core/domain/usecases/use_case.dart';
import 'package:mini_project_data_on/core/extensions/dartz_extensions.dart';
import 'package:mini_project_data_on/feature/homepage/domain/usecases/load_university_usecase.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_event.dart';
import 'package:mini_project_data_on/feature/homepage/presentation/blocs/university_bloc/university_state.dart';

@injectable
class UniversityBloc extends Bloc<UniversityEvent, UniversityState> {
  UniversityBloc(this._loadUniversitys) : super(UniversityState.initial()) {
    on<LoadUniversitys>(_onLoadUniversitys);
    on<LoadUniversitysSearched>(_onLoadUniversitysSearched);
  }

  final LoadUniversityUsecase _loadUniversitys;

  FutureOr<void> _onLoadUniversitys(
    LoadUniversitys event,
    Emitter<UniversityState> emit,
  ) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _loadUniversitys(NoParams());
    if (result.isLeft()) {
      emit(
        state.copyWith(
            universitysOrFailureOption: optionOf(
              left(result.getLeft()!),
            ),
            status: Status.initial),
      );
    }
    if (result.isRight()) {
      emit(
        state.copyWith(
          universitysOrFailureOption: optionOf(
            right(result.getRight()!),
          ),
        ),
      );
      emit(
        state.copyWith(
          universitysOrFailureOption: none(),
          universitys: result.getRight()!,
          status: Status.success,
        ),
      );
      emit(
        state.copyWith(status: Status.initial),
      );
    }
  }

  FutureOr<void> _onLoadUniversitysSearched(
    LoadUniversitysSearched event,
    Emitter<UniversityState> emit,
  ) async {
    final universitySearched = state.universitys
        .where(
          (element) => element.name.toLowerCase().contains(
                event.keyword.toLowerCase(),
              ),
        )
        .toList();
    emit(
      state.copyWith(
        universitysSearched: universitySearched,
      ),
    );
  }
}
