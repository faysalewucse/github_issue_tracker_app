import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:github_issue_tracker/controllers/issues_controller.dart';
import 'package:github_issue_tracker/helper/colors.dart';
import 'package:github_issue_tracker/helper/constant.dart';
import 'package:github_issue_tracker/helper/images.dart';
import 'package:github_issue_tracker/router/routes.dart';
import 'package:github_issue_tracker/utils/sizedbox_extension.dart';
import 'package:github_issue_tracker/widgets/cards/issue_card.dart';
import 'package:github_issue_tracker/widgets/issue/issues_search_bottom_sheet.dart';
import 'package:github_issue_tracker/widgets/loaders/custom_loader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final issuesController = Get.find<IssuesController>();

  int limit = 30;

  void _initCall() async {
    await issuesController.getRepoIssues();
    issuesScrolling();
  }

  void issuesScrolling() {
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        int page = issuesController.issuePage.value;

        if (!issuesController.loadingMoreIssues.value) {
          issuesController.issuePage(page + 1);

          if (page <= (issuesController.totalIssues.value / limit).ceil()) {
            await issuesController.getRepoIssues();
          }
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _initCall();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PURE_BLACK,
        title: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Obx(()=> Text(issuesController.repoUrl.value, style: Theme.of(context).textTheme.titleSmall)),
              16.kW,
              Container(
                decoration: BoxDecoration(
                    color: BG_GRAY_1, borderRadius: BorderRadius.circular(26)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
                child: Text(
                  "master",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              )
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showSearchBottomSheet(context);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(PhosphorIcons.magnifying_glass),
            ),
          )
        ],
      ),
      backgroundColor: PURE_BLACK,
      body: Container(
        color: CARD_COLOR,
        child: Obx(
          () => issuesController.getRepoIssuesLoading.isTrue
              ? const Center(
                  child: CustomLoader(),
                ) // Show loader when data is being fetched
              : issuesController.getRepoIssuesErrorMessage.isNotEmpty
                  ? Center(
                      child: Text(
                          issuesController.getRepoIssuesErrorMessage.value),
                    )
                  : issuesController.issues.isEmpty
                      ? Center(
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              AppImages.noProblemImage,
                              color: WHITE,
                              width: deviceWidth * 0.3,
                            ),
                            8.kH,
                            Text("No Issues Found", style: Theme.of(context).textTheme.titleSmall,)
                          ],
                        ))
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "Issue List",
                                style: Theme.of(context).textTheme.headlineLarge,
                              ),
                            ),
                            Expanded(
                              child: ListView.separated(
                                controller: _scrollController,
                                separatorBuilder: (_, i) => Container(
                                  color: BORDER_COLOR_1,
                                  height: 1,
                                ),
                                itemCount: issuesController.issues.length,
                                itemBuilder: (context, index) {
                                  final issue = issuesController.issues[index];
                                  return GestureDetector(
                                      onTap: () {
                                        Get.toNamed(AppRoutes.issueDetails,
                                            arguments: issue);
                                      },
                                      child: IssueCard(issue: issue));
                                },
                              ),
                            ),
                            // Use Padding or SizedBox instead of Positioned
                            Obx(
                              () => issuesController.loadingMoreIssues.value
                                  ? const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Center(
                                        child: SpinKitThreeBounce(
                                          size: 20,
                                          color: PRIMARY_COLOR,
                                        ),
                                      ),
                                    )
                                  : const SizedBox(),
                            )
                          ],
                        ),
        ),
      ),
    );
  }

  void showSearchBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const ContinuousRectangleBorder(
        side: BorderSide(
          color: Colors.transparent, // Border color
        ),
      ),
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SizedBox(
              height: deviceHeight * 0.5,
              child: const IssuesSearchBottomSheet()),
        );
      },
    );
  }
}
