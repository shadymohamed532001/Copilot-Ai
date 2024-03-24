abstract class ChatRepo {
  Future<String> makeRequest(List<Map<String, dynamic>> messagesHistory);
}
