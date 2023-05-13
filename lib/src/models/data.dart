import 'package:my_project/src/models/txn_model.dart';
import 'package:my_project/utils/constants/exports.dart';

import 'onboard_model.dart';

final List<TransactionDetails> transaction = [
  TransactionDetails(
    title: 'Apple Store',
    tag: 'Entertainment',
    avatar: '${Assets.image}apple.png',
    price: 34.5,
  ),
  TransactionDetails(
    title: 'Spotify',
    tag: 'Music',
    avatar: '${Assets.image}spotify.png',
    price: 9.99,
  ),
  TransactionDetails(
    title: 'Money Transfer',
    tag: 'Transfer',
    avatar: '${Assets.image}transfer.png',
    price: 300,
  ),
  TransactionDetails(
    title: 'Grocery',
    tag: 'Shopping',
    avatar: '${Assets.image}grocery.png',
    price: 5.99,
  ),
  TransactionDetails(
    title: 'Netflix',
    tag: 'Entertainment',
    avatar: '${Assets.image}netflix.png',
    price: 45.4,
  ),
];

final List<OnboardContents> onboardContent = [
  OnboardContents(
    header: 'Fastest Payment in \nthe world',
    image: '${Assets.illustration}/1.svg',
    desc:
        'Integrate multiple payment methods to help you up the process quickly',
  ),
  OnboardContents(
    header: 'The most Secure Platform \nfor Customer',
    image: '${Assets.illustration}/2.svg',
    desc:
        'Built-in Fingerprint, face recognition and more, keeping you completely safe',
  ),
  OnboardContents(
    header: 'Paying for Everything is \nEasy and Convenient',
    image: '${Assets.illustration}/3.svg',
    desc:
        'Built-in Fingerprint, face recognition and more, keeping you completely safe',
  )
];
