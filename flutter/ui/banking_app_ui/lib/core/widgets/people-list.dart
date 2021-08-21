import 'package:banking_app_ui/core/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class PeopleList extends StatelessWidget {
  const PeopleList({
    Key? key,
    required List<Map<String, String>> people,
    this.gradient,
  })  : _people = people,
        super(key: key);

  final List<Map<String, String>> _people;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (Map<String, String> person in _people)
          Container(
            width: 52.0,
            height: 71.0,
            child: Column(
              children: [
                Container(
                  height: 52.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    gradient: person['name'] == 'Add'
                        ? LinearGradient(
                            colors: [
                              AppTheme().tertiaryUI!,
                              AppTheme().secondaryUI!,
                            ],
                          )
                        : null,
                  ),
                  child: Image.asset(person['avatarUrl']!),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Text(
                  person['name']!,
                  style: TextStyle(
                    color: AppTheme().primaryText,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}


// Container(
//           width: 52.0,
//           height: 71.0,
//           child: Column(
//             children: [
//               Container(
//                 height: 52.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadiusDirectional.circular(10.0),
//                   gradient: LinearGradient(
//                     colors: [
//                       AppTheme().tertiaryUI!,
//                       AppTheme().secondaryUI!,
//                     ],
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(14.0),
//                   child: Image.asset(
//                     'assets/images/person_placeholder.png',
//                     height: 20.0,
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 4.0,
//               ),
//               Text(
//                 'Add',
//                 style: TextStyle(
//                   color: AppTheme().primaryText,
//                   fontSize: 10.0,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ),
//             ],
//           ),
//         ),