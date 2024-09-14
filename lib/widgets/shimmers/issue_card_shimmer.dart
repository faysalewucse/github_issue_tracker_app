import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';
import 'package:github_issue_tracker/helper/colors.dart';

class IssueCardShimmer extends StatelessWidget {
  const IssueCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: shimmerLayout(context),
    );
  }

  Widget shimmerLayout(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 16.0,
                    color: Colors.grey[300],
                  ),
                  8.kH,
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        radius: 10,
                      ),
                      8.kW,
                      Container(
                        width: 80,
                        height: 14.0,
                        color: Colors.grey[300],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 50,
            height: 14.0,
            color: Colors.grey[300],
          ),
        ],
      ),
    );
  }
}
