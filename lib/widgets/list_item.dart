import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final Map item;
  const ListItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 0), color: Color(0xFFaeaeae), blurRadius: 4
          )
        ]
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: (item["color"] as Color).withOpacity(0.2),
                child: Icon(Icons.spoke_outlined, color: item["color"]),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${item["name"]}", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: item["color"]
                    )),
                    const SizedBox(height: 2),
                    Text("${item["oz"]} oz", style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: const Color(0xFF959595)
                    ))
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("\$${item["price"]}", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    )),
                  const SizedBox(height: 2),
                  Text("${item["percent"]} %", style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: const Color(0xFF959595)
                    ))
                ],
              ),
            ],
          ),
          const SizedBox(height: 4,),
          Divider(
            color: Colors.grey[200],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Metal Price", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF959595)
                    )),
                  const SizedBox(height: 2),
                  Text("\$${item["metalPrice"]}", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black
                    ))
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Change", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: const Color(0xFF959595)
                    )),
                  const SizedBox(height: 2),
                  Text("${item["change"]} %", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.brown
                    ))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}