import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/constants/data_constants.dart';
import 'package:movie_app/features/ai_chat/providers/quiz_provider.dart';
import 'package:movie_app/features/ai_chat/repository/chat_repo.dart';
import 'package:movie_app/features/movie_tv_show_details/providers/movie_tv_show_details_provider.dart';
import 'package:movie_app/router/app_router.gr.dart';

class AiMobileScreen extends ConsumerWidget {
  const AiMobileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedAnswers = ref.watch(quizProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("AI Recommendation")),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(question.text,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  ...question.options.map<Widget>((option) {
                    return RadioListTile<String>(
                      title: Text(option),
                      value: option,
                      groupValue: selectedAnswers[index],
                      onChanged: (value) {
                        ref
                            .read(quizProvider.notifier)
                            .selectAnswer(index, value!);
                      },
                    );
                  })
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.check),
        onPressed: () async {
          String tmdbId = await generateText(selectedAnswers);

          ref
              .read(movieTvShowDetailsProvider.notifier)
              .setId(int.parse(tmdbId));

          context.router.push(MovieDetailRoute());

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ResultScreen()
          //   ),
          // );
        },
      ),
    );
  }
}
