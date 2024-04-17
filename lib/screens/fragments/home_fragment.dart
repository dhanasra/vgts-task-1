import 'package:flutter/material.dart';
import 'package:vgts_task_1/widgets/list_item.dart';

class HomeFragment extends StatelessWidget {
  final List items;
  const HomeFragment({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          padding: const EdgeInsets.fromLTRB(20, 4, 20, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$22,650.51", style: Theme.of(context).textTheme.headlineSmall,),
                  Container(
                    padding: const EdgeInsets.fromLTRB(32, 4, 24, 4),
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        Text("0.97 %", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        )),
                        const Icon(Icons.arrow_drop_up_outlined, color: Colors.green, size: 22)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Account Value", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white70
                  )),
                  Text("Since last purchase", style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.white70
                  )),
                ],
              ),

              const Divider(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cash Balance", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white70
                  )),
                  Text("Metal Holdings", style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white70
                  )),
                ],
              ),
              const SizedBox(height: 2,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("\$384.87", style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(width: 4),
                      const Icon(Icons.info_outline, size: 16, color: Colors.white70,)
                    ],
                  ),
                  Text("\$22,265.64", style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ],
          ),
        ),

        Stack(
          children: [
            Container(
              color: Theme.of(context).primaryColor,
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: items.map((e) => ListItem(item: e)).toList(),
              ),
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("Do More With OneGold", style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w800
          ))  
        )
      ],
    );
  }
}