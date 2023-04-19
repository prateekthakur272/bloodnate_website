import 'package:bloodnate_website/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkText extends StatelessWidget {
  final String label;
  final String url;
  final IconData icon;
  final Color color;
  const LinkText(
      {super.key,
      required this.label,
      required this.url,
      this.icon = Icons.link, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () async {
          final uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            launchUrl(uri);
          }
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon,color: color),
            const SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold,color: color),
            ),
          ],
        ));
  }
}
