import 'dart:io' show Platform;

void performPlatformSpecificTask() {
  // Import platform-specific files based on the platform
  if (Platform.isWindows) {
    import 'platform_win32.dart';
  } else {
    import 'platform_default.dart';
  }
}

void main() {
  // Call the platform-specific function
  performPlatformSpecificTask();
  
  runApp(const MyApp());
  Get.put(BalanceController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'Coinbase',
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
          primarySwatch: const MaterialColor(
            0xFF000000,
            <int, Color>{
              50: Color(0xFFE0E0E0),
              100: Color(0xFFB3B3B3),
              200: Color(0xFF808080),
              300: Color(0xFF4D4D4D),
              400: Color(0xFF262626),
              500: Color(0xFF000000),
              600: Color(0xFF000000),
              700: Color(0xFF000000),
              800: Color(0xFF000000),
              900: Color(0xFF000000),
            },
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
