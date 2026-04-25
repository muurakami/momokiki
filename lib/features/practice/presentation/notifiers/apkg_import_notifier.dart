import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/di/injection.dart';
import '../../domain/models/apkg_import_preview.dart';
import '../../domain/repositories/practice_repository.dart';

part 'apkg_import_notifier.g.dart';

@riverpod
class ApkgImportNotifier extends _$ApkgImportNotifier {
  PracticeRepository get _repository => getIt<PracticeRepository>();

  @override
  FutureOr<ApkgImportPreview?> build() => null;

  Future<void> importFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['apkg'],
    );
    final filePath = result?.files.single.path;
    if (filePath == null) {
      return;
    }

    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _repository.importApkg(filePath));
  }
}
