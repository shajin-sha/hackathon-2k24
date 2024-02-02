import 'package:flutter/material.dart';
import 'package:openai_dart/openai_dart.dart';

class AskAIViewModel extends ChangeNotifier {
  String? prompt;
  bool isLoading = false;
  TextEditingController promptController = TextEditingController();
  String? result;

  List<ChatCompletionMessage> message = [
    const ChatCompletionMessage.system(
        content:
            """Act as an AI Fraud and spam detection system. and explainer who answers questions asked by common person about fraud and spam you have to use your knowable about given topic and also we will provide some data.

            YOU RESPONSES SHOULD BE IN VALID MARKDOWN AND IT SHOULD HAVE Headings and list, points etc..
            """,
        role: ChatCompletionMessageRole.system),
  ];

  final client = OpenAIClient(
      apiKey: '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');

  void sendPrompt(String prompt) async {
    message.add(ChatCompletionMessage.user(
        content: ChatCompletionUserMessageContent.string("$prompt.")));

    setIsLoading(true);
    final res = await client.createChatCompletion(
      request: CreateChatCompletionRequest(
        model: const ChatCompletionModel.modelId("gpt-3.5-turbo-1106"),
        messages: message,
      ),
    );

    result = res.choices.first.message.content;
    message.add(ChatCompletionMessage.system(
        content: result!, role: ChatCompletionMessageRole.system));

    notifyListeners();
    // Clear the prompt
    promptController.clear();
  }

  void setIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
