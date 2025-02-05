import 'package:bankeep/src/models/profile_model.dart';
import 'package:bankeep/utils/constants/exports.dart';
import 'package:flutter/material.dart';

final List<TransactionDetails> transaction = [
  TransactionDetails(
    title: 'Apple Store',
    tag: 'Entertainment',
    avatar: '${Assets.image}apple.png',
    price: 34.99,
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
    price: 299.99,
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
    price: 45.99,
  ),
];

//! Profile Settings
final List<ProfileModel> profileList = [
  ProfileModel(
    title: 'Personal Information',
    leading: const Icon(Iconsax.profile_2user),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
  ProfileModel(
    title: 'Payment Preferences',
    leading: const Icon(Iconsax.cards),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
  ProfileModel(
    title: 'Bank and Cards',
    leading: const Icon(Iconsax.card_edit),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
  ProfileModel(
    title: 'Notifications',
    leading: const Icon(Iconsax.notification),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
  ProfileModel(
    title: 'Message Center',
    leading: const Icon(Iconsax.message),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
  ProfileModel(
    title: 'Address',
    leading: const Icon(Iconsax.location),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
  ProfileModel(
    title: 'Settings',
    leading: const Icon(Iconsax.setting),
    trailing: const Icon(Iconsax.arrow_right_3),
  ),
];

//! Onboarding Contents

final List<OnboardContents> onboardContent = [
  OnboardContents(
    header: 'Fastest Payment in \nthe world',
    image: '${Assets.illustration}1.svg',
    desc:
        'Integrate multiple payment methods to help you up the process quickly',
  ),
  OnboardContents(
    header: 'The most Secure Platform \nfor Customer',
    image: '${Assets.illustration}2.svg',
    desc:
        'Built-in Fingerprint, face recognition and more, keeping you completely safe',
  ),
  OnboardContents(
    header: 'Paying for Everything is \nEasy and Convenient',
    image: '${Assets.illustration}3.svg',
    desc:
        'Built-in Fingerprint, face recognition and more, keeping you completely safe',
  )
];
