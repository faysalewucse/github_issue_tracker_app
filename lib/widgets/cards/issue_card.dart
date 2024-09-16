import 'package:flutter/material.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/models/issue/issue.dart';
import 'package:github_issue_tracker/utils/converter.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';

class IssueCard extends StatelessWidget {
  final Issue issue;
  final int index;
  const IssueCard({super.key, required this.issue, required this.index});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Text(index.toString()),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: deviceWidth * 0.7, // Limit the width to ensure wrapping
                    child: Text(
                      issue.title,
                      style: Theme.of(context).textTheme.titleSmall,
                      overflow: TextOverflow.visible, // Allow wrapping if overloaded
                    ),
                  ),
                  4.kH,
                  Row(
                    children: [
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(issue.user.avatarUrl), // Show user avatar
                        ),
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
            formatTime(issue.createdAt), // Display time or day
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
