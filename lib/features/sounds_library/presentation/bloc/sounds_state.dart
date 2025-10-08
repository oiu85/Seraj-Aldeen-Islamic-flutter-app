import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/sound_model.dart';

class SoundsState extends Equatable {
  final BlocStatus status;
  final List<SoundCategory> categories;
  final PageInfo? pageInfo;

  const SoundsState({
    required this.status,
    this.categories = const [],
    this.pageInfo,
  });

  SoundsState copyWith({
    BlocStatus? status,
    List<SoundCategory>? categories,
    PageInfo? pageInfo,
  }) {
    return SoundsState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      pageInfo: pageInfo ?? this.pageInfo,
    );
  }

  @override
  List<Object?> get props => [status, categories, pageInfo];

  @override
  bool get stringify => true;
}
