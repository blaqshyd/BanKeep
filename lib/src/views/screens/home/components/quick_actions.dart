import 'package:flutter/material.dart';

import '../../../../../utils/constants/exports.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(
          iconMe.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleIcon(
                height: 60,
                width: 60.w,
                child: Icon(iconMe[index]),
              ),
              AppSizing.h10,
              Text(
                textMe[index],
                style: AppTextTheme.pTextStyle.copyWith(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:bankeep/utils/constants/exports.dart';

// class QuickActions extends StatelessWidget {
//   const QuickActions({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 110.h,
//       width: double.infinity,
//       child: ListView.builder(
//         // physics: const NeverScrollableScrollPhysics(),
//         itemCount: iconMe.length,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) => Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleIcon(
//                   height: 54,
//                   width: 54,
//                   child: Icon(iconMe[index]),
//                 ),
//                 AppSizing.h10,
//                 Text(
//                   textMe[index],
//                   style: AppTextTheme.pTextStyle.copyWith(
//                     fontSize: 13.sp,
//                     fontWeight: FontWeight.w300,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




