import 'package:flutter/material.dart';
import 'package:photography_studio_website/social_media_bottom_sheet.dart';
import 'package:simple_icons/simple_icons.dart';

List<String> photoImages = [
  "https://images.unsplash.com/photo-1596005554384-d293674c91d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=898&q=80",
"https://images.unsplash.com/photo-1533645782036-997947a9d529?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/flagged/photo-1557828823-b5bb7f45d726?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/photo-1526381999948-730fa670e7d2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=673&q=80",
];List<String> gridPhotoImages = [
  "https://images.unsplash.com/photo-1596005554384-d293674c91d7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=898&q=80",
"https://images.unsplash.com/photo-1533645782036-997947a9d529?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/flagged/photo-1557828823-b5bb7f45d726?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/photo-1526381999948-730fa670e7d2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=673&q=80",
  "https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
  "https://images.unsplash.com/photo-1568675392503-1cf97bb81c23?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
"https://images.unsplash.com/photo-1515658323406-25d61c141a6e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=409&q=80",
"https://images.unsplash.com/photo-1519011985187-444d62641929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80",
"https://images.unsplash.com/photo-1529245019870-59b249281fd3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1566051587526-f62c8a4522ba?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
  "https://images.unsplash.com/photo-1613876215075-276fd62c89a4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
];

List<String> expertiseList = [
  "Wedding",
  "Birthday",
  "Corporate",
  "Baby Shower",
  "Anniversary",
  "House Warming",
  "Farewell",
  "Get Together",
  "Outdoor photoshoot",
  "Indoor photoshoot",
  "Outdoor video shoot",
];

List<SocialMediaLink> socialMediaLinks = [
  SocialMediaLink(icon: SimpleIcons.facebook, name: 'Facebook', color: Colors.blue),
  SocialMediaLink(icon: SimpleIcons.twitter, name: 'Twitter', color: Colors.blue),
  SocialMediaLink(icon: SimpleIcons.instagram, name: 'Instagram', color: Colors.pink),
  SocialMediaLink(icon: SimpleIcons.youtube, name: 'YouTube', color: Colors.red),
];