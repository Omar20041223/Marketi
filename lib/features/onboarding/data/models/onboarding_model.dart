class OnboardingModel{
  final String image;
  final String mainText;
  final String descriptionText;

  OnboardingModel({required this.image, required this.mainText, required this.descriptionText});
}
List<OnboardingModel> onboardingModel = [
  OnboardingModel(image: "assets/images/onboarding1.png", mainText: "Welcome to Marketi", descriptionText: "Discover a world of endless\npossibilities and shop from\nthe comfort of your fingertips\nBrowse through a wide range\nof products, from fashion\nand electronics to home."),
  OnboardingModel(image: "assets/images/onboarding2.png", mainText: "Easy to Buy", descriptionText: "Find the perfect item that suits your style and\nneeds With secure payment options and fast\ndelivery, shopping has never been easier."),
  OnboardingModel(image: "assets/images/onboarding3.png", mainText: "Wonderful User Experience", descriptionText: "Start exploring now and experience the\nconvenience of online shopping at its best."),
];