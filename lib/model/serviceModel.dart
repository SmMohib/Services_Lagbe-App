class ServiceModel {
  ServiceModel(
      {this.description,
      this.image,
      this.rating,
      this.servicName,
      this.taka,
      this.model,
      this.mainimg});
  final String? servicName, description, taka, rating, mainimg;
  final List<String>? image;
  final ServiceModel? model;
}

String des =
    "Home Change in Dhaka We are reliable, safe and efficient home movers in Dhaka who can handle your move with success! We all wish to move to a new home without much stress and complication. We are the best house shifting service provider in dhaka.";

List<ServiceModel> ser = [
  ServiceModel(
    servicName: 'Home Change',
    mainimg:
        'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
    description: des,
    taka: '13,000',
    image: [
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.hourmaid.com/wp-content/uploads/2017/12/cleaning-services-1024x682.jpeg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg'
    ],
    rating: '8.9',
  ),
  ServiceModel(
    servicName: 'Home Clean',
    mainimg:
        'https://www.hourmaid.com/wp-content/uploads/2017/12/cleaning-services-1024x682.jpeg',
    description: des,
    taka: '13,000',
    image: [
      'https://dttdrlk9qx747.cloudfront.net/cms/thumbnails/00/445x300/sub/49822/images/bigstock-Curly-Caregiver-Cleaning-The-G-296802931.0000000000000.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPviWq2g5ZfhHna4RZL837FNa_7YbCQcCVA&usqp=CAU',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg'
    ],
    rating: '9.9',
  ),
  ServiceModel(
    servicName: 'Home Clean',
    mainimg:
        'https://www.hourmaid.com/wp-content/uploads/2017/12/cleaning-services-1024x682.jpeg',
    description: des,
    taka: '13,000',
    image: [
      'https://dttdrlk9qx747.cloudfront.net/cms/thumbnails/00/445x300/sub/49822/images/bigstock-Curly-Caregiver-Cleaning-The-G-296802931.0000000000000.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPviWq2g5ZfhHna4RZL837FNa_7YbCQcCVA&usqp=CAU',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg'
    ],
    rating: '9.9',
  )
];
List<ServiceModel> slider = [
  ServiceModel(
    image: [
      'https://dttdrlk9qx747.cloudfront.net/cms/thumbnails/00/445x300/sub/49822/images/bigstock-Curly-Caregiver-Cleaning-The-G-296802931.0000000000000.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvPviWq2g5ZfhHna4RZL837FNa_7YbCQcCVA&usqp=CAU',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg'
    ],
  )
];
