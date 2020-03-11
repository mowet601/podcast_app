import 'package:equatable/equatable.dart';

abstract class PlayerEvent extends Equatable {
  const PlayerEvent();
}

class StartPlayer extends PlayerEvent {
  final String contentUrl;

  StartPlayer(this.contentUrl);

  @override
  List<Object> get props => [contentUrl];
}

class PausePlayer extends PlayerEvent {
  @override
  List<Object> get props => [];
}

class ResumePlayer extends PlayerEvent {
  @override
  List<Object> get props => [];
}

class ReplayPlayer extends PlayerEvent {
  final int milliseconds;

  ReplayPlayer(this.milliseconds);

  @override
  List<Object> get props => [milliseconds];
}

class ForwardPlayer extends PlayerEvent {
  final int milliseconds;

  ForwardPlayer(this.milliseconds);

  @override
  List<Object> get props => [milliseconds];
}
