import 'package:equatable/equatable.dart';

abstract class BiographyEvent extends Equatable {
  const BiographyEvent();

  @override
  List<Object?> get props => [];
}

class LoadPagesEvent extends BiographyEvent {
  final int page;
  final int perPage;

  const LoadPagesEvent({
    this.page = 1,
    this.perPage = 15,
  });

  @override
  List<Object?> get props => [page, perPage];
}

