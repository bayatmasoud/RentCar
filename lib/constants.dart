import 'dart:io';
import 'package:flutter/material.dart';

// Colors
const pageBackgroundColor = Color(0xFFE7EEFB);
const pageSidebarBackgroundColor = Color(0xFFF1F4FB);
const pageCardPopupBackgroundColor = Color(0xFFF5F8FF);
const pagePrimaryLabelColor = Color(0xFF242629);
const pageSecondaryLabelColor = Color(0xFF797F8A);
const pageShadowColor = Color.fromRGBO(72, 76, 82, 0.16);
const pageCourseElementIconColor = Color(0xFF17294D);

// Text Styles
var kLargeTitleStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  color: pagePrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kTitle1Style = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: pagePrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCardTitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  fontSize: 22.0,
  decoration: TextDecoration.none,
);
var kTitle2Style = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  color: pagePrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kHeadlineLabelStyle = TextStyle(
  fontSize: 17.0,
  fontWeight: FontWeight.w800,
  color: pagePrimaryLabelColor,
  fontFamily: 'SF Pro Text',
  decoration: TextDecoration.none,
);
var kSubtitleStyle = TextStyle(
  fontSize: 16.0,
  color: pageSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kBodyLabelStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.w800,
  color: pagePrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSecondaryCalloutLabelStyle = TextStyle(
  fontSize: 16.0,
  color: pageSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSearchPlaceholderStyle = TextStyle(
  fontSize: 13.0,
  color: pageSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kSearchTextStyle = TextStyle(
  fontSize: 13.0,
  color: pagePrimaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
var kCardSubtitleStyle = TextStyle(
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  color: Color(0xE6FFFFFF),
  fontSize: 13.0,
  decoration: TextDecoration.none,
);
var kCaptionLabelStyle = TextStyle(
  fontSize: 12.0,
  color: pageSecondaryLabelColor,
  fontFamily: Platform.isIOS ? 'SF Pro Text' : null,
  decoration: TextDecoration.none,
);
