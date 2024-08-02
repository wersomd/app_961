class OnboardingModel {
  final String title;
  final String subtitle;
  final String image;

  OnboardingModel({
    required this.title,
    required this.subtitle,
    required this.image,
  });
}

List<OnboardingModel> onboardingModel = [
  OnboardingModel(
    title: "Welcome to DWD",
    subtitle:
        "Welcome as you learn a world changing skill to get a better job.",
    image: "assets/images/onboarding/onboarding-1.png",
  ),
  OnboardingModel(
    title: "Choose Your Course",
    subtitle:
        "Choose the course of your choice and gain industry knowledge and experience in it.",
    image: "assets/images/onboarding/onboarding-2.png",
  ),
  OnboardingModel(
    title: "Get Certified",
    subtitle:
        "Start learning and get certified after your training to get a lucrative job",
    image: "assets/images/onboarding/onboarding-3.png",
  ),
];
