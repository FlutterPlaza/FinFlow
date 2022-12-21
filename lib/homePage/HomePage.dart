import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
   radius: 30.0,
   backgroundImage:NetworkImage('https://picsum.photos/200/300'),   
     backgroundColor: Colors.transparent,), 
              Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(FpbIcons.eye_open, 
                  size: 20,
                  color: AppColors.secondaryColorW,),
                  SizedBox(
                    width: 10,
                  ),
                   Icon(FpbIcons.face_id, 
                  size: 20,
                  color: AppColors.secondaryColorW,),
                   SizedBox(
                    width: 10,
                  ),
                   Icon(FpbIcons.notification, 
                  size: 20,
                  color: AppColors.secondaryColorW,),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ), 
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Cash Balance',
                      ),
                      const Text(
                        'Unallocated',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:   [
                      Text(
                        '\$ 1.280.45',
                         style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: AppColors.secondaryColorW,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.023,
                         ),
                      ),
                      Icon(
                        FpbIcons.eye_open,
                        size: 17,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                          //git style: Theme.elevatedbuttontheme
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:   [
                              Icon(
                                Icons.add,
                                size: 5,
                                color: Colors.blue,
                              ),
                                Text(
                                "Add money",
                                 style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          color: AppColors.primaryColorW,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.013, 
                                // TextStyle(
                                //   fontSize: 7,
                                // ),
                              ),
                           ), ],
                          )),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          // style: ButtonStyle(
                          //   backgroundColor: MaterialStateProperty<Color>(Colors.grey)
                          // ),
                          onPressed: () {},
                          child: Row(
                            children: const [
                              Icon(
                                Icons.add,
                                size: 5,
                                color: Colors.blue,
                              ),
                                Text(
                                "Withdraw Funds",
                                style: TextStyle(fontSize: 7),
                              ),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment(.2, .2),
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.accentColorW,
                    boxShadow: [
      BoxShadow(
        color: AppColors.accentColorW.withOpacity(0.6),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(5, -5), // changes position of shadow
      ),
    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 320.50',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.secondaryColorW,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.043,
                                  ),
                            ),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text("Card Number"),
                        const SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                fourDots(),
                                fourDots(),
                                fourDots(),
                                Text("1234"), 
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [ 
                                    Text("Empty"),
                                    Text("CCV"),
                                    Text("          "),
                                    Text(" "),
                                ]),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:  [
                                      Text("04/2025"),
                                      Text("123"),
                                      Text("             "),
                                    Icon(
                                      FpbIcons.eye_open,
                                      color: AppColors.primaryColorW,
                                      size: 20,
                                    )
                                  ],
                                )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.cardColorW,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Latest Activity"),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey,
                          ),
                          child: Center(child: Text("2")),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: size.height * 0.35,
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index){
                          return activityCard();
                        }
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ),
         // activityCard(),
        ],
      ),
    );
  }
}
Widget activityCard (){
  return Container(
    height: 55,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      //color: AppColors.cardColorW,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
           // crossAxisAlignment: CrossAxisAlignment.start,
           // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
   radius: 25.0,
   backgroundImage: NetworkImage('https://picsum.photos/200/300'),   
       backgroundColor: Colors.transparent,),
           SizedBox(
            width: 25,
           ),
       Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("@john_merry",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          )),
          Text("August 3, 14:05",
          style: TextStyle(
            fontSize: 13
          ))
        ],
       ),
        ],
          ), 
       Column(
        children: [
          Text("\$ 14.6"),
          Icon(Icons.favorite_border_sharp,
          color: AppColors.secondaryColorW,
          size: 12,)
        ],
       )
  
          // SvgPicture.asset(
          //   SvgNames.authBackground )
        ],
      ),
    ),
  );
}
Widget fourDots() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.cardColorW,
        ),
      ),
      SizedBox(width: 2),
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.cardColorW,
        ),
      ),
      SizedBox(width: 2),
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.cardColorW,
        ),
      ),
      SizedBox(width: 2),
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.cardColorW,
        ),
      )
    ],
  );
}
