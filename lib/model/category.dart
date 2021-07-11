
class Category {
  final String name;
  final int numOfCourses;
  final String image;

  Category(this.name, this.numOfCourses, this.image);
}

List<Category> categories = categoriesData
    .map((item) => Category(item['name'], item['courses'], item['image']))
    .toList();

var categoriesData = [
  {"name": "Cyber Security", 'courses': 17, 'image': "assets/images/marketing.png"},
  {"name": "Data Science", 'courses': 25, 'image': "assets/images/ux_design.png"},
  {
    "name": "Flutter Development",
    'courses': 13,
    'image': "assets/images/photography.png"
  },
  {"name": "Internet Of Things", 'courses': 17, 'image': "assets/images/business.png"},
   {"name": "Artificial Intelligence", 'courses': 17, 'image': "assets/images/business.png"},
    {"name": "Block Chain ", 'courses': 17, 'image': "assets/images/business.png"},
     {"name": "Cloud Computing", 'courses': 17, 'image': "assets/images/business.png"},
      {"name": "EntrePreneruship", 'courses': 17, 'image': "assets/images/business.png"},
];
