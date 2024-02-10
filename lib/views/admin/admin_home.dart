import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping/controllers/admin/admin_home_controller.dart';
import 'package:shopping/utils/constants/colors.dart';
import 'package:shopping/utils/constants/image_strings.dart';
import 'package:shopping/utils/constants/sizes.dart';
import 'package:shopping/utils/constants/text_strings.dart';


class AdminHome extends StatelessWidget {
  const AdminHome({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AdminHomeController());
    return Scaffold(
      // backgroundColor: TColors.primaryBackground,
      body: SafeArea(
        child: Row(
          children: [
            Expanded(flex: 3,child: Container(color: TColors.secondaryBackground, child: Column(children: [
              Container(
                padding: const EdgeInsets.all(TSizes.lg),
                child: Image.asset(TImages.iitMandiLogoDark, fit: BoxFit.contain, width: double.infinity,)),

              const Divider(height: 0.5, color: TColors.borderPrimary,),

              Material(
                color: Colors.transparent,
                child: ListView.builder(itemBuilder: (context, index) {
                  return TNavigationListTile(leading:  Icon(Icons.dashboard_outlined, color: TColors.borderPrimary,), text: TTexts.dashboard,
                    index: index, controller: controller,
                    );
                })
              )
            ]),),),
            Expanded(flex: 7,child: Container(color: TColors.secondaryBackground, margin: const EdgeInsets.only(left: TSizes.sm),),),
            Expanded(flex: 4,child: Container(color: TColors.secondaryBackground, margin: const EdgeInsets.only(left: TSizes.sm),),)
          ],
        )
      )
    );
  }
}

class TNavigationListTile extends StatelessWidget {
  const TNavigationListTile({
    super.key, required this.text, required this.leading, required this.controller, required this.index,
  });

  final String text;
  final Widget leading;
  final AdminHomeController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListTile(
        leading: leading,
        title: Text(text, style: Get.textTheme.titleSmall!.copyWith(color: TColors.grey),),
        hoverColor: TColors.primary.withOpacity(0.02),
        focusColor: TColors.primary.withOpacity(0.05),
        onTap: () => controller.activeScreenIndex.value = index,
        selected: controller.activeScreenIndex.value == index,
      ),
    );
  }
}