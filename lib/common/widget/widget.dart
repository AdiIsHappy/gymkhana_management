import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping/common/widget/chart.dart';
import 'package:shopping/request/form/form.dart';
import 'package:shopping/utils/constants/colors.dart';
import 'package:shopping/utils/constants/image_strings.dart';
import 'package:shopping/utils/constants/sizes.dart';
import 'package:shopping/utils/constants/text_strings.dart';

class Budget extends StatelessWidget {
  Budget({super.key});

  final List<String> _usageDetails = [
    "Monthly Usage",
    "Requests Approved",
    "Pending Requests",
  ];

  final List<Widget> _iconDetails = [
    SvgPicture.asset(TImages.dashboard),
    SvgPicture.asset(TImages.dashboard),
    SvgPicture.asset(TImages.dashboard),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(TSizes.md),
              margin: EdgeInsets.all(TSizes.sm),
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(TSizes.md),
              margin: EdgeInsets.all(TSizes.sm),
              decoration: const BoxDecoration(
                color: TColors.secondaryBackground,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    "Usage Details",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Chart(),
                  // Container(
                  //   padding: EdgeInsets.all(TSizes.sm),
                  //   decoration: BoxDecoration(
                  //     border: Border.all(
                  //       color: TColors.primary.withOpacity(0.15),
                  //     ),
                  //     borderRadius: const BorderRadius.all(
                  //       Radius.circular(TSizes.borderRadiusMd),
                  //     ),
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       SizedBox(
                  //         child: SvgPicture.asset(TImages.dashboard),
                  //       ),
                  //       Text(
                  //         "Monthly Usage",
                  //         maxLines: 1,
                  //         overflow: TextOverflow.ellipsis,
                  //       ),
                  //       Text("23"),
                  //       SizedBox(width: TSizes.defaultSpace),
                  //     ],
                  //   ),
                  // ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, inx) {
                        return StatusListTile(
                            leading: _iconDetails[inx],
                            text: _usageDetails[inx],
                            postText: "23");
                      },
                      itemCount: _usageDetails.length,
                    ),
                  ),
                  SizedBox(
                    height: TSizes.xs,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the form page when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyForm()),
                      );
                    },
                    child: Text("View in sheet"),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StatusListTile extends StatelessWidget {
  const StatusListTile({
    super.key,
    this.leading,
    required this.text,
    required this.postText,
  });
  final Widget? leading;
  final String text;
  final String postText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: leading,
        title: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Text(postText),
      ),
    );
  }
}
