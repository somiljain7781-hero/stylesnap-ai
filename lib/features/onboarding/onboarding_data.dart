class OnboardingData {
  final String title;
  final String subtitle;
  final String image;

  OnboardingData({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

final onboardingItems = [
  OnboardingData(
    title: "Create Stunning AI Photos",
    subtitle: "Turn your selfies into professional AI portraits instantly.",
    image: "assets/images/onboard1.png",
  ),
  OnboardingData(
    title: "Choose Your Favorite Style",
    subtitle: "Anime, Business, Wedding, Fantasy, Travel and much more.",
    image: "assets/images/onboard2.png",
  ),
  OnboardingData(
    title: "Generate in Seconds",
    subtitle: "One tap is all it takes to create amazing AI images.",
    image: "assets/images/onboard3.png",
  ),
];