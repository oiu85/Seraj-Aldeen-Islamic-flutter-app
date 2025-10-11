abstract class SearchEvent {}

class PerformSearchEvent extends SearchEvent {
  final String query;

  PerformSearchEvent({required this.query});
}

class ClearSearchEvent extends SearchEvent {}



