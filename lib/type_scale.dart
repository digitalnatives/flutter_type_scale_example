import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'type_scale.freezed.dart';

@freezed
class TypeScaleType with _$TypeScaleType {
  const TypeScaleType._();
  const factory TypeScaleType.h1() = TypeScaleTypeH1;
  const factory TypeScaleType.h2() = TypeScaleTypeH2;
  const factory TypeScaleType.h3() = TypeScaleTypeH3;
  const factory TypeScaleType.h4() = TypeScaleTypeH4;
  const factory TypeScaleType.h5() = TypeScaleTypeH5;
  const factory TypeScaleType.h6() = TypeScaleTypeH6;
  const factory TypeScaleType.subtitle1() = TypeScaleTypeSubtitle1;
  const factory TypeScaleType.subtitle2() = TypeScaleTypeSubtitle2;
  const factory TypeScaleType.bodyText1() = TypeScaleTypeHBodyText1;
  const factory TypeScaleType.bodyText2() = TypeScaleTypeHBodyText2;
  const factory TypeScaleType.button() = TypeScaleTypeButton;
  const factory TypeScaleType.caption() = TypeScaleTypeCaption;
  const factory TypeScaleType.overline() = TypeScaleTypeOverline;
}

class TypeScale extends StatelessWidget {
  const TypeScale.h1(this.child, {Key? key, this.type = const TypeScaleType.h1()}) : super(key: key);
  const TypeScale.h2(this.child, {Key? key, this.type = const TypeScaleType.h2()}) : super(key: key);
  const TypeScale.h3(this.child, {Key? key, this.type = const TypeScaleType.h3()}) : super(key: key);
  const TypeScale.h4(this.child, {Key? key, this.type = const TypeScaleType.h4()}) : super(key: key);
  const TypeScale.h5(this.child, {Key? key, this.type = const TypeScaleType.h5()}) : super(key: key);
  const TypeScale.h6(this.child, {Key? key, this.type = const TypeScaleType.h6()}) : super(key: key);
  const TypeScale.subtitle1(this.child, {Key? key, this.type = const TypeScaleType.subtitle1()}) : super(key: key);
  const TypeScale.subtitle2(this.child, {Key? key, this.type = const TypeScaleType.subtitle2()}) : super(key: key);
  const TypeScale.bodyText1(this.child, {Key? key, this.type = const TypeScaleType.bodyText1()}) : super(key: key);
  const TypeScale.bodyText2(this.child, {Key? key, this.type = const TypeScaleType.bodyText2()}) : super(key: key);
  const TypeScale.button(this.child, {Key? key, this.type = const TypeScaleType.button()}) : super(key: key);
  const TypeScale.caption(this.child, {Key? key, this.type = const TypeScaleType.caption()}) : super(key: key);
  const TypeScale.overline(this.child, {Key? key, this.type = const TypeScaleType.overline()}) : super(key: key);

  final Widget child;
  final TypeScaleType type;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).textTheme;
    final TextStyle style = type.when(
      h1: () => themeData.headline1!,
      h2: () => themeData.headline2!,
      h3: () => themeData.headline3!,
      h4: () => themeData.headline4!,
      h5: () => themeData.headline5!,
      h6: () => themeData.headline6!,
      subtitle1: () => themeData.subtitle1!,
      subtitle2: () => themeData.subtitle2!,
      bodyText1: () => themeData.bodyText1!,
      bodyText2: () => themeData.bodyText2!,
      button: () => themeData.button!,
      caption: () => themeData.caption!,
      overline: () => themeData.overline!,
    );
    return DefaultTextStyle.merge(style: style, child: child);
  }
}
