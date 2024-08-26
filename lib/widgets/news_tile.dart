import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image?? 'https://scontent.fcai19-4.fna.fbcdn.net/v/t39.30808-6/457227382_539252645292821_693624585738234231_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=833d8c&_nc_ohc=JJESsouC-6AQ7kNvgGBEh2z&_nc_ht=scontent.fcai19-4.fna&oh=00_AYCOpUlUMHQFi2aeUq39MRTW1b0jh9Q7tsFKOlnL-eb2eA&oe=66D223A9',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}