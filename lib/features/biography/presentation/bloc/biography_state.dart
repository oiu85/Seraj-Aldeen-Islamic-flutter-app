import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/models/biography_model.dart';

class BiographyState extends Equatable {
  final BlocStatus status;
  final List<PageModel> pages;
  final int currentPage;
  final int? lastPage;
  final int? total;
  final bool hasMore;

  const BiographyState({
    required this.status,
    this.pages = const [],
    this.currentPage = 1,
    this.lastPage,
    this.total,
    this.hasMore = false,
  });

  BiographyState copyWith({
    BlocStatus? status,
    List<PageModel>? pages,
    int? currentPage,
    int? lastPage,
    int? total,
    bool? hasMore,
  }) {
    return BiographyState(
      status: status ?? this.status,
      pages: pages ?? this.pages,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      total: total ?? this.total,
      hasMore: hasMore ?? this.hasMore,
    );
  }

  @override
  List<Object?> get props => [status, pages, currentPage, lastPage, total, hasMore];
}

