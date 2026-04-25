// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_session_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$reviewSessionNotifierHash() =>
    r'4fbe63ba4e6eb3505c1a3b1ae9a20d093b7ed205';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ReviewSessionNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ReviewSessionState> {
  late final String deckId;

  FutureOr<ReviewSessionState> build(
    String deckId,
  );
}

/// See also [ReviewSessionNotifier].
@ProviderFor(ReviewSessionNotifier)
const reviewSessionNotifierProvider = ReviewSessionNotifierFamily();

/// See also [ReviewSessionNotifier].
class ReviewSessionNotifierFamily
    extends Family<AsyncValue<ReviewSessionState>> {
  /// See also [ReviewSessionNotifier].
  const ReviewSessionNotifierFamily();

  /// See also [ReviewSessionNotifier].
  ReviewSessionNotifierProvider call(
    String deckId,
  ) {
    return ReviewSessionNotifierProvider(
      deckId,
    );
  }

  @override
  ReviewSessionNotifierProvider getProviderOverride(
    covariant ReviewSessionNotifierProvider provider,
  ) {
    return call(
      provider.deckId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'reviewSessionNotifierProvider';
}

/// See also [ReviewSessionNotifier].
class ReviewSessionNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ReviewSessionNotifier,
        ReviewSessionState> {
  /// See also [ReviewSessionNotifier].
  ReviewSessionNotifierProvider(
    String deckId,
  ) : this._internal(
          () => ReviewSessionNotifier()..deckId = deckId,
          from: reviewSessionNotifierProvider,
          name: r'reviewSessionNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$reviewSessionNotifierHash,
          dependencies: ReviewSessionNotifierFamily._dependencies,
          allTransitiveDependencies:
              ReviewSessionNotifierFamily._allTransitiveDependencies,
          deckId: deckId,
        );

  ReviewSessionNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.deckId,
  }) : super.internal();

  final String deckId;

  @override
  FutureOr<ReviewSessionState> runNotifierBuild(
    covariant ReviewSessionNotifier notifier,
  ) {
    return notifier.build(
      deckId,
    );
  }

  @override
  Override overrideWith(ReviewSessionNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ReviewSessionNotifierProvider._internal(
        () => create()..deckId = deckId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        deckId: deckId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ReviewSessionNotifier,
      ReviewSessionState> createElement() {
    return _ReviewSessionNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ReviewSessionNotifierProvider && other.deckId == deckId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, deckId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ReviewSessionNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<ReviewSessionState> {
  /// The parameter `deckId` of this provider.
  String get deckId;
}

class _ReviewSessionNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ReviewSessionNotifier,
        ReviewSessionState> with ReviewSessionNotifierRef {
  _ReviewSessionNotifierProviderElement(super.provider);

  @override
  String get deckId => (origin as ReviewSessionNotifierProvider).deckId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
