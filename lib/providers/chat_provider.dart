import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../models/chat_message_model.dart';

final chatProvider = StateNotifierProvider<ChatNotifier, List<ChatMessage>>(
  (ref) => ChatNotifier(),
);

class ChatNotifier extends StateNotifier<List<ChatMessage>> {
  ChatNotifier() : super([]);

  void addMessage(String content, bool isUser) {
    final message = ChatMessage(
      id: const Uuid().v4(),
      content: content,
      isUser: isUser,
      timestamp: DateTime.now(),
    );
    state = [...state, message];

    // Simulate AI response
    if (isUser) {
      Future.delayed(const Duration(seconds: 2), () {
        addMessage(
          'This is a simulated AI response. Full API integration coming soon!',
          false,
        );
      });
    }
  }

  void deleteMessage(String id) {
    state = state.where((msg) => msg.id != id).toList();
  }

  void clearChat() {
    state = [];
  }
}