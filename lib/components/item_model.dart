import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tuco/models/numbers.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Numbers item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.enName,  
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        const Spacer(flex: 1),
        IconButton(
          onPressed: () async {
            AudioCache.instance = AudioCache(prefix: '');
            final player = AudioPlayer();
            await player.play(AssetSource(item.sound));  
          },
          icon: const Icon(Icons.volume_up, color: Colors.white, size: 28),
        ),
      ],
    );
  }
}
