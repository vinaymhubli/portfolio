import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:vinportfolio/constants/colors.dart';
import 'package:vinportfolio/utilities/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: AspectRatio(
        aspectRatio: Responsive.isMobile(context) ? 1.1 : 2,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/v1.jpg",
              fit: BoxFit.cover,
            ),
            Container(color: darkColor.withOpacity(0.30)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    "Vinay M",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                  Text(
                    'A Passionate Flutter Mobile Application Developer',
                    style: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyText2!.copyWith(
                             
                              color: Colors.white,
                            ),
                  ),
                  if (Responsive.isMobileLarge(context))
                    const SizedBox(height: defaultPadding / 2),
                  MyBuildAnimatedText(),
                SizedBox(height:10.0)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("Built ",style: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          "responsive mobile apps",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "complete quiz app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "fully functional news app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Language Translation App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Whatsapp-Clone app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Education Portal app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Mask-Detector App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Memer App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Express Pizza App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Zoom Clone App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Unique Login Designs",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Many More Apps",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "responsive mobile apps",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "complete quiz app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "fully functional news app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Language Translation App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Whatsapp-Clone app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Education Portal app",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Mask-Detector App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Memer App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Express Pizza App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Zoom Clone App",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Unique Login Designs",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        ),
        TyperAnimatedText(
          "Many More Apps",textStyle: Responsive.isDesktop(context)?
                    Theme.of(context).textTheme.headline6!.copyWith(
                              
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.bodyLarge!.copyWith(
                             
                              color: Colors.white,
                            ),
          speed: Duration(milliseconds: 125),
        )
      ],
      isRepeatingAnimation: true,
    );
  }
}

