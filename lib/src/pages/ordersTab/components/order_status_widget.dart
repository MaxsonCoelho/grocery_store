import 'package:flutter/material.dart';
import 'package:grocery_store/src/config/custom_colors.dart';

class OrederStatusWidget extends StatelessWidget {
  final String stauts;
  final bool isOverdue;

  const OrederStatusWidget({
    super.key,
    required this.stauts,
    required this.isOverdue,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _StatusDot(isActive: true, title: 'Teste de pagamento',),
        _StatusDot(isActive: false, title: 'efetuado',),
      ],
    );
  }
}

class _StatusDot extends StatelessWidget {
  final bool isActive;
  final String title;

  const _StatusDot({
    required this.isActive,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: CustomColors.customSwatchColor,
            ),
            color:
                isActive ? CustomColors.customSwatchColor : Colors.transparent,
          ),
          child: isActive
              ? const Icon(
                  Icons.check,
                  size: 13,
                  color: Colors.white,
                )
              : const SizedBox.shrink(),
        ),
        const SizedBox(width: 5,),
        Expanded(child: Text(title)),
      ],
    );
  }
}
