List<Map<String, dynamic>> myData = [
  {
    "id": 1,
    "name": "Aston",
    "skills": ["android", "flutter", "UI/UX", "Python", "SQL", "Analyst"],
    "university": "Amber University"
  },
  {
    "id": 2,
    "name": "Lambo",
    "skills": ["android", "flutter", "UI/UX", "Python", "SQL", "Analyst"],
    "university": "Boston University"
  },
  {
    "id": 3,
    "name": "Ferar",
    "skills": ["android", "flutter", "UI/UX", "Python", "SQL", "Analyst"],
    "university": "Cleveland University"
  },
  {
    "id": 4,
    "name": "Mercy",
    "skills": ["android", "flutter", "UI/UX", "Python", "SQL", "Analyst"],
    "university": "Japan University"
  },
  {
    "id": 5,
    "name": "Toyo",
    "skills": ["android", "flutter", "UI/UX", "Python", "SQL", "Analyst"],
    "university": "Japan University"
  }
];

List data = [];

List coba = myData.map((e) {
  return data.addAll(coba); 
} ).toList();
