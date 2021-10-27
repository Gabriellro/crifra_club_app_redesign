import 'package:flutter/material.dart';

import 'package:crifra_club_app_redesign/src/shared/theme/app_colors.dart';
import 'package:crifra_club_app_redesign/src/shared/theme/app_images.dart';
import 'package:crifra_club_app_redesign/src/modules/login/login_controller.dart';
import 'package:crifra_club_app_redesign/src/shared/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.08,
            ),
            Stack(
              children: [
                Image.asset(AppImages.girlPlaying),
                Column(
                  children: [
                    SizedBox(height: size.height * 0.55),
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Mais de\n",
                            style:
                                Theme.of(context).textTheme.headline4?.copyWith(
                                      color: AppColors.primary,
                                    ),
                          ),
                          TextSpan(
                            text: "500 mil cifras",
                            style:
                                Theme.of(context).textTheme.headline4?.copyWith(
                                      color: AppColors.primary,
                                    ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Container(
                      width: 300,
                      child: Text(
                        "Busque a musica que você quer tocar. Sertanejo, rock, gospel e muito mais!",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.subtitle1,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(height: size.height * 0.06),
                    SocialLoginButton(
                      size: size,
                      onTap: () {
                        controller.googleSingIn(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
