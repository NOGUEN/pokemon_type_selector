enum pokeTypes {
  normal,
  fighitng,
  poison,
  ground,
  flying,
  bug,
  rock,
  ghost,
  steel,
  fire,
  water,
  electric,
  grass,
  ice,
  phychic,
  dragon,
  dark,
  fairy
}

class Data {
  Map<String, String> typeIcons = {
    "Normal": "assets/icons/Normal_Type_Icon.png",
    "Fighting": "assets/icons/Fighting_Type_Icon.png",
    "Poison": "assets/icons/Poison_Type_Icon.png",
    "Ground": "assets/icons/Ground_Type_Icon.png",
    "Flying": "assets/icons/Flying_Type_Icon.png",
    "Bug": "assets/icons/Bug_Type_Icon.png",
    "Rock": "assets/icons/Rock_Type_Icon.png",
    "Ghost": "assets/icons/Ghost_Type_Icon.png",
    "Steel": "assets/icons/Steel_Type_Icon.png",
    "Fire": "assets/icons/Fire_Type_Icon.png",
    "Water": "assets/icons/Water_Type_Icon.png",
    "Electric": "assets/icons/Electric_Type_Icon.png",
    "Grass": "assets/icons/Grass_Type_Icon.png",
    "Ice": "assets/icons/Ice_Type_Icon.png",
    "Phychic": "assets/icons/Phychic_Type_Icon.png",
    "Dragon": "assets/icons/Dragon_Type_Icon.png",
    "Dark": "assets/icons/Dark_Type_Icon.png",
    "Fairy": "assets/icons/Fairy_Type_Icon.png"
  };

  List<List<int>> typeCompatibility = [
    [0, 1, 0, 0, 0, 0, 0, -2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0, -1, 1],
    [0, -1, -1, 1, 0, -1, 0, 0, 0, 0, 0, 0, -1, 0, 1, 0, 0, -1],
    [0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1, -2, 1, 1, 0, 0, 0, 0],
    [0, -1, 0, -2, 0, -1, 1, 0, 0, 0, 0, 1, -1, 1, 0, 0, 0, 0],
    [0, -1, 0, -1, 1, 0, 1, 0, 0, 1, 0, 0, -1, 0, 0, 0, 0, 0],
    [],
    [],
    []
  ];
}
