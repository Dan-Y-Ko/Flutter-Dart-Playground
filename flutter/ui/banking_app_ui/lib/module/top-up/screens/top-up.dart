import 'package:flutter/material.dart';

import '../../../core/utils/theme/theme.dart';
import '../../../core/widgets/back-arrow-widget.dart';
import '../../../core/widgets/credit-card-carousel.dart';
import '../../../core/widgets/header.dart';
import '../../../core/widgets/people-list.dart';
import '../models/contacts.dart';
import '../widgets/contacts-row.dart';
import '../widgets/topup-input.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  static const routeName = '/topup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme().primaryBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Header(
                leadingIcon: BackArrowButton(),
                appBarText: 'Top Up',
              ),
            ),
            SizedBox(
              height: 33.0,
            ),
            CreditCardCarousel(),
            SizedBox(
              height: 22.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                'Recent',
                style: TextStyle(
                  color: AppTheme().primaryText,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (Contacts contact in contactsList)
                    PeopleList(
                      avatarUrl: contact.avatarUrl,
                      name: contact.name.split(' ')[0],
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 27.0,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  color: AppTheme().tertiaryBackground,
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 27.0, 25.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'All Contacts',
                          style: TextStyle(
                            color: AppTheme().primaryText,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TopupInput(),
                        SizedBox(
                          height: 15.0,
                        ),
                        ContactsRow(
                          avatarUrl: 'assets/images/avatar_9.png',
                          title: 'Mahbuba Islam Rumpa',
                          subtitle: '+415829639069',
                        ),
                        ContactsRow(
                          avatarUrl: 'assets/images/avatar_9.png',
                          title: 'Mahfuzur Rahman Riyadh',
                          subtitle: '+415829639069',
                        ),
                        ContactsRow(
                          avatarUrl: 'assets/images/avatar_9.png',
                          title: 'Rizwan',
                          subtitle: '+415829639069',
                        ),
                        ContactsRow(
                          avatarUrl: 'assets/images/avatar_9.png',
                          title: 'Sagor Biswas',
                          subtitle: '+415829639069',
                        ),
                        ContactsRow(
                          avatarUrl: 'assets/images/avatar_9.png',
                          title: 'Sifat Prodan',
                          subtitle: '+415829639069',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
