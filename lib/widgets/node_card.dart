import 'package:fclash/models/proxies/proxies.dart';
import 'package:flutter/material.dart';

class NodeCard extends StatelessWidget {
  const NodeCard({
    super.key,
    required this.node,
    required this.selected,
    required this.onTap,
    required this.delayTest,
  });

  final Selectable node;
  final bool selected;
  final VoidCallback onTap;
  final VoidCallback delayTest;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: "${node.name}\n${node.type.name}",
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: selected
            ? BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [BoxShadow(blurRadius: 0)],
                color: Theme.of(context).colorScheme.tertiaryContainer,
              )
            : BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(blurRadius: 2, offset: Offset(2, 2))
                ],
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: onTap,
          child: Row(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      node.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: node.type == ProxyType.Selector ||
                                node.type == ProxyType.URLTest
                            ? Text(
                                (node as Selector).now,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            : Text(
                                node.type.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                      ),
                      if (node.type != ProxyType.Selector &&
                          node.type != ProxyType.URLTest)
                        Tooltip(
                          richMessage: TextSpan(children: [
                            const TextSpan(text: "Udp: "),
                            (node as Node).udp
                                ? TextSpan(
                                    text: "Enabled",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(color: Colors.green),
                                  )
                                : TextSpan(
                                    text: "Disabled",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(color: Colors.red),
                                  ),
                          ]),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              margin: const EdgeInsets.only(left: 5),
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (node as Node).udp
                                      ? Colors.green
                                      : Colors.red),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            node.delay == null
                ? IconButton(
                    icon: const Icon(Icons.speed_rounded),
                    onPressed: delayTest,
                  )
                : TextButton(
                    onPressed: delayTest,
                    child: node.delay == 0
                        ? Text("Err",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(color: Colors.red))
                        : Text(node.delay!.toString()),
                  )
          ]),
        ),
      ),
    );
  }
}
