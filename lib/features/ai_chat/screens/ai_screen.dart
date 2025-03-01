import 'package:auto_route/annotations.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/features/ai_chat/screens/desktop/ai_desktop_screen.dart';
import 'package:movie_app/features/ai_chat/screens/mobile/ai_mobile_screen.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class AiScreen extends ConsumerWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ResponsiveBreakpoints.of(context).isDesktop
        ? const AiDesktopScreen()
        : const AiMobileScreen();
  }
}
