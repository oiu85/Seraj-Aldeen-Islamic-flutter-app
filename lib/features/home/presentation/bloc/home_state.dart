import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/menu_model.dart';

class HomeState extends Equatable {
  final BlocStatus status;
  final List<MenuModel> menus;

  const HomeState({
    required this.status,
    this.menus = const [],
  });

  HomeState copyWith({
    BlocStatus? status,
    List<MenuModel>? menus,
  }) {
    return HomeState(
      status: status ?? this.status,
      menus: menus ?? this.menus,
    );
  }

  @override
  List<Object?> get props => [status, menus];
}

