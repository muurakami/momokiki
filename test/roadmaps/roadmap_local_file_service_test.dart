import 'package:flutter_test/flutter_test.dart';
import 'package:momokiki/features/roadmaps/domain/services/roadmap_local_file_service.dart';

void main() {
  final service = RoadmapLocalFileService();

  test('selects markdown viewer for md and txt files', () {
    expect(service.selectViewer('roadmap.md'), RoadmapViewerType.markdown);
    expect(service.selectViewer('notes.txt'), RoadmapViewerType.markdown);
  });

  test('selects html viewer for html files', () {
    expect(service.selectViewer('english_quest.html'), RoadmapViewerType.html);
  });

  test('returns unsupported for unknown files', () {
    expect(service.selectViewer('roadmap.pdf'), RoadmapViewerType.unsupported);
  });

  test('builds safe file uri', () {
    final uri = service.buildFileUri(r'C:\roadmaps\english quest.html');
    expect(uri.scheme, 'file');
    expect(uri.toString(), contains('english%20quest.html'));
  });
}
