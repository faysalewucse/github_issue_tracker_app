import 'package:flutter/material.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/helper/dialog_helper.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';
import 'package:github_issue_tracker/utils/converter.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';

class IssueCard extends StatelessWidget {
  final Issue issue;
  const IssueCard({super.key, required this.issue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CARD_COLOR,
        borderRadius: BorderRadius.circular(0.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title text with wrapping
                  SizedBox(
                    width: deviceWidth * 0.8, // Limit the width to ensure wrapping
                    child: Text(
                      issue.title,
                      style: Theme.of(context).textTheme.titleSmall,
                      overflow: TextOverflow.visible, // Allow wrapping if overloaded
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(issue.user.avatarUrl), // Show user avatar
                      ),
                      8.kW,
                      Text(
                        issue.user.login,
                        style: const TextStyle(
                          color: Colors.grey, // Text color for username
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            formatTime(issue.createdAt), // Display time in 24-hour format
            style: const TextStyle(
              color: Colors.grey, // Text color for time
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
