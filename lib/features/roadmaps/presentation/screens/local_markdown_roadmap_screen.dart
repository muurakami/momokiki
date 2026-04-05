import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalMarkdownRoadmapScreen extends StatefulWidget {
  const LocalMarkdownRoadmapScreen({
    required this.filePath,
    required this.title,
    super.key,
  });

  final String filePath;
  final String title;

  @override
  State<LocalMarkdownRoadmapScreen> createState() => _LocalMarkdownRoadmapScreenState();
}

class _LocalMarkdownRoadmapScreenState extends State<LocalMarkdownRoadmapScreen> {
  String? _content;
  String? _errorMessage;
  bool _loading = true;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      final file = File(widget.filePath);
      if (!await file.exists()) {
        setState(() {
          _errorMessage = 'Roadmap file not found.';
          _loading = false;
        });
        return;
      }

      final content = await file.readAsString();
      if (!mounted) {
        return;
      }

      setState(() {
        _content = content;
        _loading = false;
      });
    } catch (error) {
      if (!mounted) {
        return;
      }

      setState(() {
        _errorMessage = 'Failed to load roadmap: $error';
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final filteredContent = _query.isEmpty || _content == null
        ? _content
        : _content!
            .split(RegExp(r'\n\n+'))
            .where((section) => section.toLowerCase().contains(_query.toLowerCase()))
            .join('\n\n');

    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: switch ((_loading, _errorMessage, _content)) {
        (true, _, _) => const Center(child: CircularProgressIndicator()),
        (false, final String message?, _) => Center(child: Text(message)),
        (false, _, final String _) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: TextField(
                  onChanged: (value) => setState(() => _query = value),
                  decoration: const InputDecoration(
                    labelText: 'Search roadmap',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Expanded(
                child: Markdown(
                  data: filteredContent ?? '',
                  selectable: true,
                  padding: const EdgeInsets.all(16),
                  onTapLink: (text, href, title) async {
                    if (href == null) {
                      return;
                    }

                    final uri = Uri.tryParse(href);
                    if (uri == null) {
                      return;
                    }

                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  },
                ),
              ),
            ],
          ),
        _ => const Center(child: Text('Roadmap content is empty.')),
      },
    );
  }
}
