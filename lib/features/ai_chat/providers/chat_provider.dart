import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/ai_chat/repository/chat_repo.dart';
import 'package:movie_app/models/content/content.dart';
import 'package:movie_app/models/part/part.dart';

class ChatState {
  final List<Content> messages;
  final bool isTyping;

  ChatState({required this.messages, required this.isTyping});

  ChatState copyWith({List<Content>? messages, bool? isTyping}) {
    return ChatState(
        messages: messages ?? this.messages,
        isTyping: isTyping ?? this.isTyping);
  }

  factory ChatState.initial() {
    return ChatState(messages: [], isTyping: false);
  }
}

class ChatNotifier extends Notifier<ChatState> {
  @override
  ChatState build() {
    return ChatState.initial();
  }

  void addMessage(String textMsg) async {
    state = state.copyWith(isTyping: true);

    final part = Part(text: textMsg);
    final chatModel = Content(parts: [part], role: 'user');

    state = state.copyWith(messages: [...state.messages, chatModel]);

    ChatRepo chatService = ChatRepo.instance;

    final response = await chatService.generateText(state.messages);

    if (response.isNotEmpty) {
      state = state.copyWith(messages: [
        ...state.messages,
        Content(parts: [Part(text: response)], role: 'model')
      ]);
    }

    state = state.copyWith(isTyping: false);
  }
}

final chatProvider = NotifierProvider<ChatNotifier, ChatState>(
  () => ChatNotifier(),
);
