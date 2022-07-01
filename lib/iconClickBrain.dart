import 'enums/icon_data.dart';

class IconClickBrain {
  IconsData icondata = IconsData.athenahealth;

  IconClickBrain(this.icondata);

  String getHeading() {
    if (icondata == IconsData.athenahealth) {
      return 'Athenahealth keeps its partner and customer records in tip-top shape with Vault';
    } else if (icondata == IconsData.decathlon) {
      return 'Decathlon wins big with 30-minute infrastructure deployment from Terraform';
    } else if (icondata == IconsData.github) {
      return 'GitHub delivers mission-critical functionality faster and at lower cost with HashiCorp';
    } else if (icondata == IconsData.cruice) {
      return 'Cruise uses Terraform to rapidly build autonomous vehicle technology';
    } else if (icondata == IconsData.pandora) {
      return 'Pandora accelerates application delivery from days to minutes with HashiCorp';
    } else {
      return 'Ubisoft secures its global gaming platform with Vault';
    }
  }

  String getIcon() {
    if (icondata == IconsData.athenahealth) {
      return 'images/athenahealth_logo.svg';
    } else if (icondata == IconsData.decathlon) {
      return 'images/decathlon_logo.svg';
    } else if (icondata == IconsData.github) {
      return 'images/github_logo.svg';
    } else if (icondata == IconsData.cruice) {
      return 'images/cruise_logo.svg';
    } else if (icondata == IconsData.pandora) {
      return 'images/pandora_logo.svg';
    } else {
      return 'images/ubisoft_logo.svg';
    }
  }

  String getImage() {
    if (icondata == IconsData.athenahealth) {
      return 'images/athena.png';
    } else if (icondata == IconsData.decathlon) {
      return 'images/decathlon.png';
    } else if (icondata == IconsData.github) {
      return 'images/github.png';
    } else if (icondata == IconsData.cruice) {
      return 'images/cruise.png';
    } else if (icondata == IconsData.pandora) {
      return 'images/pandora.png';
    } else {
      return 'images/ubisoft.png';
    }
  }
}
