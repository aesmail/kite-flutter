import 'package:flutter/material.dart';
import 'package:kite/design/kite_color.dart';
import 'package:kite/features/cluster/ui/cluster_page.dart';
import 'package:kite/models/cluster.dart';

class NewsTile extends StatefulWidget {
  final Cluster cluster;

  const NewsTile({super.key, required this.cluster});

  @override
  State<NewsTile> createState() => _NewsTileState();
}

class _NewsTileState extends State<NewsTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        widget.cluster.markAsRead();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ClusterPage(cluster: widget.cluster);
            },
          ),
        );
        setState(() {});
      },
      isThreeLine: true,
      contentPadding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      trailing: Icon(
        Icons.check_circle_rounded,
        color: widget.cluster.didRead ? Colors.blue : Colors.white54,
      ),
      title: Text(
        widget.cluster.category,
        style: TextStyle(
          color: KiteColor.getTopicColor(widget.cluster.category),
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        widget.cluster.title,
        style: TextStyle(
          color: widget.cluster.didRead ? Colors.white54 : Colors.white,
          fontSize: 18,
          fontWeight:
              widget.cluster.didRead ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    );
  }
}
