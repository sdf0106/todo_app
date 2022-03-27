import 'package:equatable/equatable.dart';

abstract class IntFailure extends Equatable {
  @override
  List<Object?> get props => [];
}

class StorageFailure extends IntFailure {}

