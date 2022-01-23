import 'package:flutter/material.dart';
import 'package:odyssey/components/home_screen_attraction.dart';
import 'package:odyssey/components/home_screen_hero.dart';
import 'package:odyssey/components/home_screen_story.dart';
import 'package:odyssey/components/offer_card.dart';
import 'package:odyssey/constants.dart';

class StoryDetails {
  String name;
  AssetImage image;
  StoryDetails(this.name, this.image);
}

class AttractionDetails {
  String name;
  Image image;
  AttractionDetails(this.name, this.image);
}

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final optionsArray = [
    "ALL",
    "MUSEUMS",
    "HISTORICAL PLACES",
    "RESTAURANTS",
    "MALLS"
  ];

  List story = [
    StoryDetails(
      "Music Fest",
      const AssetImage('images/story1.png'),
    ),
    StoryDetails(
      "Concert",
      const AssetImage('images/story2.png'),
    ),
    StoryDetails(
      "Championship",
      const AssetImage('images/story3.png'),
    ),
    StoryDetails(
      "Ind Vs Eng",
      const AssetImage('images/story4.png'),
    ),
    StoryDetails(
      "Music Fest",
      const AssetImage('images/story1.png'),
    ),
    StoryDetails(
      "Concert",
      const AssetImage('images/story2.png'),
    ),
    StoryDetails(
      "Championship",
      const AssetImage('images/story3.png'),
    ),
    StoryDetails(
      "Ind Vs Eng",
      const AssetImage('images/story4.png'),
    ),
  ];
  List attractionArray = [
    AttractionDetails(
      "The London Bridge",
      const Image(
        image: AssetImage("images/attractionimage1.png"),
      ),
    ),
    AttractionDetails(
      "The Big Ben Tower",
      const Image(
        image: AssetImage("images/attractionimage2.png"),
      ),
    ),
    AttractionDetails(
      "The London Bridge",
      const Image(
        image: AssetImage("images/attractionimage1.png"),
      ),
    ),
    AttractionDetails(
      "The Big Ben Tower",
      const Image(
        image: AssetImage("images/attractionimage2.png"),
      ),
    ),
  ];
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Discover,",
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "London!",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                        ]),
                    const Icon(Icons.notifications_outlined, size: 28),
                  ],
                ),
              ),
              const HomeScreenHero(),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: SizedBox(
                  height: 30,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: optionsArray.length,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: [
                        selectedOption == index
                            ? Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: kPrimaryColor,
                                ),
                                child: Text(
                                  optionsArray[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                            : GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedOption = index;
                                  });
                                },
                                child: Text(
                                  optionsArray[index],
                                  style: kHomeScreenOptionsUnSelected,
                                ),
                              ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text("Live Events", style: kHomeScreenSubtitleStyle),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: story.length,
                    itemBuilder: (BuildContext context, int index) =>
                        HomeScreenStory(
                            name: story[index].name, image: story[index].image),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text("Top Attractions", style: kHomeScreenSubtitleStyle),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: 180,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: attractionArray.length,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: [
                        HomeScreenAttraction(
                          name: attractionArray[index].name,
                          image: attractionArray[index].image,
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text("Offers", style: kHomeScreenSubtitleStyle),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15),
                child: SizedBox(
                  height: 240,
                  child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: const [
                        OfferCard(),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Text("Recommended", style: kHomeScreenSubtitleStyle),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: const [
                    ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: Image(
                        image: AssetImage('images/recommended3.png'),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Image(
                          image: AssetImage('images/recommended2.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        child: Image(
                          image: AssetImage('images/recommended1.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, bottom: 3),
                      child: Text(
                        "Swipe Right",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
