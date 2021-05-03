import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typography',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: TextTheme(
          headline1: GoogleFonts.inter(fontSize: 96, height: 1.1, fontWeight: FontWeight.w100),
          headline2: GoogleFonts.inter(fontSize: 60, height: 1.2, fontWeight: FontWeight.w100),
          headline3: GoogleFonts.inter(fontSize: 36, height: 1.1, fontWeight: FontWeight.w100),
          headline4: GoogleFonts.inter(fontSize: 30, height: 1.2, fontWeight: FontWeight.w500),
          headline5: GoogleFonts.inter(fontSize: 24, height: 1.3, fontWeight: FontWeight.w500),
          headline6: GoogleFonts.inter(fontSize: 20, height: 1.3, fontWeight: FontWeight.w500),
          subtitle1: GoogleFonts.inter(fontSize: 12, height: 1.4, fontWeight: FontWeight.w500),
          subtitle2: GoogleFonts.inter(fontSize: 12, height: 1.4, fontWeight: FontWeight.w300),
          bodyText1: GoogleFonts.inter(fontSize: 16, height: 1.4, fontWeight: FontWeight.normal),
          bodyText2: GoogleFonts.inter(fontSize: 12, height: 1.4, fontWeight: FontWeight.normal),
          button: GoogleFonts.inter(fontSize: 16, height: 1.35, fontWeight: FontWeight.w500),
          caption: GoogleFonts.inter(fontSize: 12, height: 1.45, fontWeight: FontWeight.normal),
          overline: GoogleFonts.inter(fontSize: 12, height: 1.45, fontWeight: FontWeight.w500),
        ),
      ),
      home: const TypographyScreen(),
    );
  }
}

class TypographyScreen extends StatelessWidget {
  const TypographyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Typography'),
        backwardsCompatibility: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
              TextStyleDetails(text: 'H1', style: Theme.of(context).textTheme.headline1!),
              TextStyleDetails(text: 'H2', style: Theme.of(context).textTheme.headline2!),
              TextStyleDetails(text: 'H3', style: Theme.of(context).textTheme.headline3!),
              TextStyleDetails(text: 'H4', style: Theme.of(context).textTheme.headline4!),
              TextStyleDetails(text: 'H5', style: Theme.of(context).textTheme.headline5!),
              TextStyleDetails(text: 'H6', style: Theme.of(context).textTheme.headline6!),
              TextStyleDetails(text: 'subtitle1', style: Theme.of(context).textTheme.subtitle1!),
              TextStyleDetails(text: 'subtitle2', style: Theme.of(context).textTheme.subtitle2!),
              TextStyleDetails(text: 'bodyText1', style: Theme.of(context).textTheme.bodyText1!),
              TextStyleDetails(text: 'bodyText2', style: Theme.of(context).textTheme.bodyText2!),
              TextStyleDetails(text: 'button', style: Theme.of(context).textTheme.button!),
              TextStyleDetails(text: 'caption', style: Theme.of(context).textTheme.caption!),
              TextStyleDetails(text: 'overline', style: Theme.of(context).textTheme.overline!),
            ],
          ),
        ),
      ),
    );
  }
}

class TextStyleDetails extends StatelessWidget {
  const TextStyleDetails({Key? key, required this.text, required this.style}) : super(key: key);

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Text(text, style: style),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(style.fontFamily ?? 'no family info'),
                Text('fontSize: ${style.fontSize?.toString() ?? '-'}'),
                Text(style.fontWeight?.toString() ?? 'no weight info'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
