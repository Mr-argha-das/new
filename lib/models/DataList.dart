class Item {
  final num id;
  final String name;
  final String image;
  final String service;

  Item({
    required this.id,
    required this.name,
    required this.image,
    required this.service,
  });
}

class JobCart {
  static final items = [
    Item(id: 1,
        name: "Management Assignment Writing",
        image: "assets/TempImage/image1.jpeg",
        service: "What is Management Writing? Management Writing"
    ),
    Item(id: 2,
        name: "Technical Assignment Writing",
        image: "assets/TempImage/image2.jpeg",
        service: "What is Technical Writing Assignment"
    ),
    Item(id: 3,
        name: "Finance Assignment Writing",
        image: "assets/TempImage/image3.jpeg",
        service: "Financial writing is somewhat challenging. It involves"
    ),
    Item(id: 4,
        name: "Medical Nursing Writing",
        image: "assets/TempImage/image4.jpeg",
        service: "A writer who has to write on topics related to medical"
    ),
    Item(id: 5,
        name: "Law Writing",
        image: "assets/TempImage/image5.jpeg",
        service: "There are countless concepts in the law subject. Even"
    ),
    Item(id: 6,
        name: "Resume Writing",
        image: "assets/TempImage/image6.jpeg",
        service: "A resume reflects the personality of an individual"
    ),
    Item(id: 7,
        name: "Civil engineering writing",
        image: "assets/TempImage/image7.jpeg",
        service: "Civil engineering writing includes both technical and"
    ),
    Item(id: 8,
        name: "Mathematics and Statistics Projects",
        image: "assets/TempImage/image8.jpeg",
        service: "It is understandable that as a student, you do not get"
    ),
    Item(id: 9,
        name: "CV Writing Service",
        image: "assets/TempImage/image9.jpeg",
        service: "A curriculum vitae (CV) is an important document in a"
    ),
    Item(id: 10,
        name: "Essay Writing Service",
        image: "assets/TempImage/image10.jpeg",
        service: "Get Essay Writing Help From Our Best Essay"
    ),
  ];
}
