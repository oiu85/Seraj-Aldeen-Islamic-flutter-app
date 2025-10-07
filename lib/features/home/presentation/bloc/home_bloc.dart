import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repositories/menu_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final MenuRepository menuRepository;

  HomeBloc({required this.menuRepository}) 
      : super(HomeState(status: BlocStatus.initial())) {
    on<LoadMenusEvent>(_onLoadMenus);
  }

  Future<void> _onLoadMenus(
    LoadMenusEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(state.copyWith(status: BlocStatus.loading()));
      AppLogger.info('Loading menus from API');

      final result = await menuRepository.getBottomHeaderMenus();

      result.fold(
        (exception) {
          AppLogger.error('Failed to load menus: ${exception.toString()}');
          emit(state.copyWith(
            status: BlocStatus.fail(error: exception.toString()),
          ));
        },
        (response) {
          if (response.success == true && response.data != null && response.data!.isNotEmpty) {
            // Filter only active menus and create a mutable list
            final activeMenus = response.data!
                .where((menu) => menu.menusActive == true)
                .toList();
            
            // Sort by priority (already a mutable list from toList())
            activeMenus.sort((a, b) {
              final priorityA = a.menusPriority ?? 0;
              final priorityB = b.menusPriority ?? 0;
              return priorityA.compareTo(priorityB);
            });

            AppLogger.info('Loaded ${activeMenus.length} active menus');
            emit(state.copyWith(
              status: BlocStatus.success(),
              menus: activeMenus,
            ));
          } else {
            AppLogger.error('Invalid response from API');
            emit(state.copyWith(
              status: BlocStatus.fail(error: 'Invalid response from API'),
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Unexpected error in HomeBloc: $e');
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'Unexpected error: $e'),
      ));
    }
  }
}

