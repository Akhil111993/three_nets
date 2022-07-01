import 'package:three_nets/Models/text_data.dart';

List<TextData> textDataList = [
  TextData('The HashiCorp Stack',
      'Our tools provide a control plane for each layer of the cloud, enabling enterprises to make the shift to a cloud operating model. Each product addresses specific technical and organizational challenges of cloud infrastructure automation.'),
  TextData('Terraform',
      'Use reproducible infrastructure as code to provision any cloud, or infrastructure.\nInfrastructure as code\nMulti-cloud compliance and management\nSelf-service infrastructure\nLearn more\nGet started'),
  TextData('Vault',
      'Use reproducible infrastructure as code to provision any cloud, or infrastructure.\nInfrastructure as code\nMulti-cloud compliance and management\nSelf-service infrastructure\nLearn more\nGet started'),
];

String getHeadingFromList(int index) {
  return textDataList[index].heading;
}

String getDescFromList(int index) {
  return textDataList[index].desc;
}
