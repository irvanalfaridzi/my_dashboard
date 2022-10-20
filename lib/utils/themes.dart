import 'package:flutter/material.dart';

const Color blackColor = Color(0xff000000);
const Color whiteColor = Color(0xffffffff);
const Color mainColor = Color(0xff5843BE);
const Color greyColor = Color(0xfff0f1f3);
const Color strongGreyColor = Colors.grey;

const SizedBox gapHeight4 = SizedBox(height: 4);
const SizedBox gapWidth8 = SizedBox(width: 8);
const SizedBox gapHeight8 = SizedBox(height: 8);
const SizedBox gapWidth16 = SizedBox(width: 16);
const SizedBox gapHeight16 = SizedBox(height: 16);
const SizedBox gapWidth20 = SizedBox(width: 20);
const SizedBox gapHeight20 = SizedBox(height: 20);
const SizedBox gapHeight30 = SizedBox(height: 30);

double getDeviceHeight(BuildContext context, {double size = 1}) {
  return (MediaQuery.of(context).size.height / size);
}

double getDeviceWidth(BuildContext context, {double size = 1}) {
  return (MediaQuery.of(context).size.width / size);
}

const TextStyle regular12Grey = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: strongGreyColor,
);

const TextStyle regular14Grey = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: strongGreyColor,
);

const TextStyle regular14Red = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Colors.red,
);

const TextStyle bold14Grey = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: strongGreyColor,
);

const TextStyle regular14White = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: whiteColor,
);

const TextStyle bold14White = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);

const TextStyle bold14Black = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: blackColor,
);

const TextStyle bold14Green = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);

const TextStyle bold14Red = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.red,
);

const TextStyle bold16White = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: whiteColor,
);

const TextStyle regular16White = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: whiteColor,
);

const TextStyle bold20Black = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold,
  color: blackColor,
);
