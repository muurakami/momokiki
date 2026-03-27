import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: switch ((_loading, _errorMessage, _content)) {
        (true, _, _) => const Center(child: CircularProgressIndicator()),
        (false, final String message?, _) => Center(child: Text(message)),
        (false, _, final String content?) => Markdown(
            data: content,
            selectable: true,
            padding: const EdgeInsets.all(16),
          ),
        _ => const Center(child: Text('Roadmap content is empty.')),
      },
    );
  }
}
