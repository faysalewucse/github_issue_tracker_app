import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';

class IssueDetails extends StatelessWidget {
  final Issue issue;
  const IssueDetails({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Issue #${issue.number} Details'),
      ),
      body: Container(
        color: CARD_COLOR,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              issue.title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(issue.user.avatarUrl),
                  radius: 20, // Adjust the size
                ),
                const SizedBox(width: 10),
                Text(
                  issue.user.login,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Created on: ${issue.createdAt}',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: issue.body != null && issue.body!.isNotEmpty
                  ? Markdown(
                data: issue.body!,
                styleSheet: MarkdownStyleSheet(
                  p: Theme.of(context).textTheme.titleSmall,
                ),
              )
                  : const Center(
                child: Text('No description available'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
