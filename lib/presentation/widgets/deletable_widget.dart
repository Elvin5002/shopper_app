import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class DeletableWidget extends StatelessWidget {
  const DeletableWidget({
    super.key,
    required this.child,
    required this.slidableKey,
    this.onDelete,
  });

  final Widget child;
  final Object slidableKey;
  final void Function(BuildContext)? onDelete;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: Key(slidableKey.toString()),
      startActionPane: ActionPane(
        motion: const StretchMotion(),
        dismissible: DismissiblePane(
          onDismissed: () => onDelete?.call(context),
        ),
        children: [
          SlidableAction(
            onPressed: onDelete,
            backgroundColor: const Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        dismissible: DismissiblePane(
          onDismissed: () => onDelete?.call(context),
        ),
        children: [
          SlidableAction(
            onPressed: onDelete,
            backgroundColor: const Color.fromARGB(255, 248, 219, 89),
            foregroundColor: Colors.black,
            icon: Icons.undo_rounded,
            label: 'Undo',
          ),
        ],
      ),
      child: child,
    );
  }
}
