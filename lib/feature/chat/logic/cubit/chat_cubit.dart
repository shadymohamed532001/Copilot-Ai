import 'package:chatgpt/feature/chat/data/repo/chat_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit(this.chatRepo) : super(ChatInitial());

  final ChatRepo chatRepo;
  Future<void> gptResponse(List<Map<String, dynamic>> messagesHistory) async {
    try {
      final response = await chatRepo.makeRequest(messagesHistory);
      emit(ChatgetResponseSuccess(response));
    } catch (e) {
      emit(ChatgetResponseFailure(e.toString()));
    }
  }
}
