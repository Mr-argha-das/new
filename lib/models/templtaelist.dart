class Temp {
  final num id;
  final String name;
  final String image;
  final String service;
  
  Temp({
    required this.id,
    required this.name,
    required this.image,
    required this.service,
  });
}

class TemplateList{
  static final temps =[
    Temp(id: 1,
         name: "Writing & Proofreading Serv.",
         image: "assets/TempImage/Template/contract.png",
         service: "AHEC helps you to get proofread your assignments."
    ),
    Temp(id: 2,
        name: "Turnitin  Services",
        image: "assets/TempImage/Template/electric.png",
        service: "Share your solution file to Get the certified plagiarism report from Turnitin Application."
    ),
    Temp(id: 3,
        name: "Website Blogs and Content",
        image: "assets/TempImage/Template/businessman.png",
        service: "Hire us to write your website content or weekly blogs with Digital Marketing",
    ),
    Temp(id: 4,
        name: "Tutorial Classes",
        image: "assets/TempImage/Template/settings.png",
        service: "Book your tutorial classes of our professional and experienced tutors."
    ),
  ];
}  