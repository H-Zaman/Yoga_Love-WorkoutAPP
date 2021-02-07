import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class GridViewItemModel{
  String title;
  String description;
  String image;
  int time;
  bool fav;
  GridViewItemModel({
    @required this.title,
    @required this.image,
    @required this.description,
    @required this.time,
    this.fav = false
  });

  static final items = <GridViewItemModel>[
    GridViewItemModel(
      title: 'Cardio Burnout',
      description: r'''This isn’t your regular old leg workout—there are a few exercises in here that we bet you haven’t tried yet, like the runner’s-lunge-to-balance (great for speed and agility) and the corkscrew (a dynamic plank variation that’ll seriously test your core strength). Created by Amy Eisinger, C.P.T., this workout will test your endurance all the way through. And then just when you think you’re done, there’s a cardio burnout at the end that’ll give you one last challenge. You can make it easier or harder by tweaking the amount of rest you take between exercises in the circuit.''',
      image: 'https://images.unsplash.com/photo-1550259979-ed79b48d2a30?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=704&q=80',
      time: 20,
      fav: false
    ),
    GridViewItemModel(
      title: 'Light Up Your Core',
      description: r'''Yes, you can work your arms with just your bodyweight. And a great way to do that is through variations of the plank, where your shoulders and triceps really put in the work. Created by certified trainer Lita Lewis, this workout will start with skaters to get your blood pumping, and then take you to the floor for the next three plank-based moves: push-up, shoulder tap, and plank forearm reach. The second circuit is heavy on the plank variations too, with the plank jack and forearm plank. You’ll be tasked with holding the plank for a good chunk of time with these moves (since they’re back-to-back-to-back), so if it’s too hard to maintain with good form, drop to your knees to make it a bit easier.''',
      image: 'https://images.unsplash.com/photo-1606170750739-460f27c2d30d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
      time: 2,
      fav: false
    ),
    GridViewItemModel(
      title: 'Forward Lunge to Instep',
      description: r'''Start by stepping forward into a lunge with your left foot. Place your right forearm to the ground and your left elbow to the inside of your left foot and hold the stretch for two seconds. Then place your left hand outside of your foot and push your hips up, pointing your front toes up. Return to standing position and repeat by stepping out with your right foot. Continue alternating sides for a total of 10 reps.''',
      image: 'https://www.muscleandfitness.com/wp-content/uploads/2020/03/Young-Fitness-Female-Performing-Lunge-In-Living-Room.jpg?w=800&quality=86&strip=all',
      time: 15,
      fav: false
    ),
    GridViewItemModel(
      title: 'Wall Sits',
      description: r'''Stand a foot in front of a wall and sit down, back flat, as if you were sitting in an invisible chair. Hold for 30 seconds, working up to a minute.Because it’s one of the simplest, deceptively challenging bodyweight exercises you can find, challenging your quads and resetting your posture—which is important in our desk-based, sedentary culture.''',
      image: 'https://www.muscleandfitness.com/wp-content/uploads/2017/09/Wall-Sit-1109.jpg?w=800&quality=86&strip=all',
      time: 3,
      fav: false
    ),
    GridViewItemModel(
      title: 'Pullups',
      description: r'''Hanging from a bar with either an overhand or reverse (underhand) grip, pull your shoulder blades back and down to lift your body up. Finish by pulling with your arms. The key is to return to the fully extended position after each rep. You should do at least five–the Presidential standard for fourth graders–and work up to 10.''',
      image: 'https://www.muscleandfitness.com/wp-content/uploads/2017/12/Pullups-Man-Park-1109.jpg?w=800&quality=86&strip=all',
      time: 10,
      fav: false
    ),
    GridViewItemModel(
      title: 'Kettlebell Swing',
      description: r'''Stand holding a kettlebell with both hands in front of you with straight arms. Squat as you lower the kettlebell along an arc under and between your legs. Drive your hips and swing the kettlebell up until your arms are parallel to the floor. Remember to keep your arms straight and your shoulder blades drawn back and down throughout the swing. Do a set of 10.''',
      image: 'https://www.muscleandfitness.com/wp-content/uploads/2018/01/Bald-Man-Working-Out-Alone-With-Kettlebell.jpg?w=800&quality=86&strip=all',
      time: 10,
      fav: false
    ),
    GridViewItemModel(
      title: 'Farmer’s Carry',
      description: r'''Deadlift the weights so you’re standing upright. Don’t hunch over. Keep your shoulder blades pulled back and down, and fire your glutes as you walk. This can be a challenging move at first, but you’ll be surprised how quickly you’re able to walk further or increase the weight. Walk 10 yards out and 10 yards back.''',
      image: 'https://www.muscleandfitness.com/wp-content/uploads/2019/04/5MovesCoreAbDumbellFarmersWalk0.jpg?w=800&quality=86&strip=all',
      time: 15,
      fav: false
    ),
    GridViewItemModel(
      title: 'Burpees',
      description: r'''From a standing position, squat, place you hands on the ground, and “jump” your feet out into a pushup position. Perform a pushup and then jump your feet to your hands. Then jump as high as you can, throwing your hands over your head. Do a set of 10, and work your way up to 30 in subsequent workouts.''',
      image: 'https://www.muscleandfitness.com/wp-content/uploads/2019/04/1109-Burpees-GettyImages-1139035984.jpg?w=800&quality=86&strip=all',
      time: 30,
      fav: false
    ),
  ].obs;

}