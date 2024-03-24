part of 'chat_cubit.dart';

@immutable
sealed class ChatState {}

final class ChatInitial extends ChatState {}

class ChatgetResponseSuccess extends ChatState {
  final String response;

  ChatgetResponseSuccess(this.response);
}

class ChatgetResponseFailure extends ChatState {
  final String errorMessage;

  ChatgetResponseFailure(this.errorMessage);
}
