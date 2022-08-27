import 'package:bookticket/screens/ticket_view.dart';
import 'package:bookticket/screens/utils/app_info_list.dart';
import 'package:bookticket/screens/utils/app_styles.dart';
import 'package:bookticket/screens/utils/ticket_info_list.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'hotel_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: Styles.headlineStyle3,),
                        const Gap(5),
                        Text("Buy Tickets", style: Styles.headlineStyle1,)
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage(
                              "assets/images/img_1.png"
                          )
                        )
                      ),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)
                  ),
                  child: Row(
                    children:  [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFbfc205),),
                      Text("Search", style: Styles.headlineStyle4,)
                    ],
                  ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headlineStyle2,),
                    InkWell(onTap: (){
                      print("You are tapped");
                    }, child: Text("View All", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headlineStyle2,),
                InkWell(onTap: (){
                  print("You are tapped");
                }, child: Text("View All", style: Styles.textStyle.copyWith(color: Styles.primaryColor),))
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 20),
              child:  Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              ))
        ],
      ),
    );
  }
}
