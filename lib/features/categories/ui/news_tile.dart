import 'package:flutter/material.dart';
import 'package:kite/design/kite_color.dart';
import 'package:kite/features/cluster/ui/cluster_page.dart';
import 'package:kite/models/cluster.dart';

class NewsTile extends StatelessWidget {
  final Cluster cluster;

  const NewsTile({super.key, required this.cluster});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        cluster.markAsRead();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ClusterPage(cluster: cluster);
            },
          ),
        );
      },
      isThreeLine: true,
      contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      trailing: Icon(
        Icons.check_circle_rounded,
        color: cluster.didRead ? Colors.blue : Colors.white54,
      ),
      title: Text(
        cluster.category,
        style: TextStyle(
          color: KiteColor.getTopicColor(cluster.category),
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        cluster.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
