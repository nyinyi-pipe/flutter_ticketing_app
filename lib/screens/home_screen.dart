import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // here: we can use with ;
      // Column Widget,
      // ListView Widget use (we want Scrollable Effect)
      // Container Widget use for Decoration(padding,etc) and Multiple Widgets inside it.
      // Expand Widget

      backgroundColor: AppStyles.bgColor, // entire bgColor for Home
      //   backgroundColor: Colors.red,
      body: ListView(
        children: [
          const SizedBox(height: 40), // spacing from very top(Material) and 1st block
          // 1st Top block
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // Solve Alignments Issue
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: AppStyles.headLineStyle3,
                        ),
                        const SizedBox(
                            height: 5), // const is ok because of Static place
                        Text(
                          // const will be error "Invalid Const"  because of Dynamic place
                          "Book Tickets",
                          style: AppStyles.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(AppMedia.logo),
                        ), // logo
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                // search row
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ), // Icon's color
                      Text("Search")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
