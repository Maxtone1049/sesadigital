import 'package:flutter/material.dart';
import 'package:sesa/screens/Services/components/service_skin.dart';


class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ServiceSkin());
  }
}