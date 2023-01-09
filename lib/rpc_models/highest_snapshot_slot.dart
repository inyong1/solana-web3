/// Imports
/// ------------------------------------------------------------------------------------------------

import 'package:solana_common/models/serializable.dart';
import 'package:solana_common/utils/types.dart' show u64;


/// Highest Snapshot Slot
/// ------------------------------------------------------------------------------------------------

class HighestSnapshotSlot extends Serializable {
  
  /// The highest slot information that the node has snapshots for.
  const HighestSnapshotSlot({
    required this.full,
    required this.incremental,
  });

  /// The highest full snapshot slot.
  final u64 full;

  /// The highest incremental snapshot slot based on [full].
  final u64? incremental;

  /// {@macro solana_common.Serializable.fromJson}
  factory HighestSnapshotSlot.fromJson(final Map<String, dynamic> json) => HighestSnapshotSlot(
    full: json['full'],
    incremental: json['incremental'],
  );

  /// {@macro solana_common.Serializable.tryFromJson}
  static HighestSnapshotSlot? tryFromJson(final Map<String, dynamic>? json) {
    return json != null ? HighestSnapshotSlot.fromJson(json) : null;
  }

  @override
  Map<String, dynamic> toJson() => {
    'full': full,
    'incremental': incremental,
  };
}