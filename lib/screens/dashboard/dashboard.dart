import 'package:flutter/material.dart';
import 'package:sesa/components/custom_buttom_nav.dart';
import 'package:sesa/enum.dart';
import 'package:sesa/screens/dashboard/components/body.dart';
import '../../components/custom_buttom_sheet.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
      // routes:routes,
      bottomNavigationBar: const CustomBottomNav(selectedMenu: MenuState.home),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                          // <-- SEE HERE
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                        ),
              context: context,
              builder: (context) {
                return CustomBottomSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}



