import 'dart:convert';

class Cat {
    final String length;
    final String origin;
    final String imageLink;
    final int familyFriendly;
    final int shedding;
    final int generalHealth;
    final int playfulness;
    final int childrenFriendly;
    final int grooming;
    final int? intelligence;
    final int otherPetsFriendly;
    final double minWeight;
    final double maxWeight;
    final int minLifeExpectancy;
    final int maxLifeExpectancy;
    final String name;
    final int? meowing;
    final int? strangerFriendly;

    Cat({
        required this.length,
        required this.origin,
        required this.imageLink,
        required this.familyFriendly,
        required this.shedding,
        required this.generalHealth,
        required this.playfulness,
        required this.childrenFriendly,
        required this.grooming,
        this.intelligence,
        required this.otherPetsFriendly,
        required this.minWeight,
        required this.maxWeight,
        required this.minLifeExpectancy,
        required this.maxLifeExpectancy,
        required this.name,
        this.meowing,
        this.strangerFriendly,
    });

    factory Cat.fromRawJson(String str) => Cat.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        length: json["length"],
        origin: json["origin"],
        imageLink: json["image_link"],
        familyFriendly: json["family_friendly"],
        shedding: json["shedding"],
        generalHealth: json["general_health"],
        playfulness: json["playfulness"],
        childrenFriendly: json["children_friendly"],
        grooming: json["grooming"],
        intelligence: json["intelligence"],
        otherPetsFriendly: json["other_pets_friendly"],
        minWeight: json["min_weight"]?.toDouble(),
        maxWeight: json["max_weight"],
        minLifeExpectancy: json["min_life_expectancy"],
        maxLifeExpectancy: json["max_life_expectancy"],
        name: json["name"],
        meowing: json["meowing"],
        strangerFriendly: json["stranger_friendly"],
    );

    Map<String, dynamic> toJson() => {
        "length": length,
        "origin": origin,
        "image_link": imageLink,
        "family_friendly": familyFriendly,
        "shedding": shedding,
        "general_health": generalHealth,
        "playfulness": playfulness,
        "children_friendly": childrenFriendly,
        "grooming": grooming,
        "intelligence": intelligence,
        "other_pets_friendly": otherPetsFriendly,
        "min_weight": minWeight,
        "max_weight": maxWeight,
        "min_life_expectancy": minLifeExpectancy,
        "max_life_expectancy": maxLifeExpectancy,
        "name": name,
        "meowing": meowing,
        "stranger_friendly": strangerFriendly,
    };
}
