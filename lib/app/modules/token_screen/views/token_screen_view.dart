import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/token_screen_controller.dart';

class TokenScreenView extends GetView<TokenScreenController> {
  const TokenScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final TokenScreenController controller = Get.put(TokenScreenController());
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: controller.tabController,
          tabs: const <Widget>[
            Tab(
              // icon: Icon(Icons.add),
              text: 'user token',
            ),
            Tab(
              // icon: Icon(Icons.add),
              text: 'FCM',
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut().then(
                    (dynamic value) => Get.offAllNamed(Routes.GET_STARTED));
              },
              icon: const Icon(Icons.logout))
        ],
        title: const Text('TestView'),
        centerTitle: true,
      ),
      body: controller.obx((dynamic state) =>
          TabBarView(controller: controller.tabController, children: <Widget>[
            buildTokenView(controller),
            buildFCMTokenView(controller),
          ])),
    );
  }

  Center buildTokenView(TokenScreenController controller) {
    return Center(
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: const EdgeInsets.all(28.0),
        margin: const EdgeInsets.all(28.0),
        child: TextFormField(
          keyboardType: TextInputType.streetAddress,
          maxLines: 100,
          initialValue: controller.tok.toString(),
          onChanged: (String value) => controller.tok = value,
        ),
      ),
    );
  }

  Center buildFCMTokenView(TokenScreenController controller) {
    return Center(
      child: Container(
        decoration: BoxDecoration(border: Border.all()),
        padding: const EdgeInsets.all(28.0),
        margin: const EdgeInsets.all(28.0),
        child: TextFormField(
          keyboardType: TextInputType.streetAddress,
          maxLines: 100,
          initialValue: controller.fcmtok.toString(),
          onChanged: (String value) => controller.fcmtok = value,
        ),
      ),
    );
  }
}
