import 'package:edi_pro/config/theme/app_theme.dart';
import 'package:edi_pro/presentation/widgets/section_book/custom_card/info_card.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(
          color: Colors.black.withOpacity(0.08),
          spreadRadius: 1, 
          blurRadius: 2, 
          offset: const Offset(0,1)
          )],
      color:theme.cardColor,
        border: Border.all(
          color: theme.outlineButtonText
        )),
      height: 268,
      width: 311,
      child: Column(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/7747/da92/0aba2486169b1d51667e1c0bde53bae8?Expires=1713744000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=UVnta9bNynW3l0HVrhtck0hGHc89RFIRPCjcYLlYg7j5wY2nUwbANwxjTXIb4oBmx~CwBu5trj3tAfC1qDClWHaBDuhyRqtc8KilTksNYXTK0acWmekPp2eWVvapL6z346EVKa47S3Dc5annpdAYzuatBQ3PfpO47olOF59T0kyjD4Z8zgMplzGEaqQzWL1ZhbCC3CjENYcz4X~ksF~sF8Ho2T4ERRdOGU~6HKNpUvBPPQ-glK2lroQQ~AAGE17ts5dfBsbhBpQ8K2WE3QLBdWiAGLq4TL8a-c7UGnQZ~66DEC7sNO3Dl8onubi8VLnvL5FTjwVeOlXcDBU-E3evzQ__'),
          ),
          InfoCard(),
        ],
      ),
    );
  }
}



