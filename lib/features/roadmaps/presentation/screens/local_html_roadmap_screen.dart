import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LocalHtmlRoadmapScreen extends StatefulWidget {
  const LocalHtmlRoadmapScreen({
    required this.filePath,
    required this.title,
    super.key,
  });

  final String filePath;
  final String title;

  @override
  State<LocalHtmlRoadmapScreen> createState() => _LocalHtmlRoadmapScreenState();
}

class _LocalHtmlRoadmapScreenState extends State<LocalHtmlRoadmapScreen> {
  WebViewController? _controller;
  String? _errorMessage;
  double _progress = 0;

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
        });
        return;
      }

      final controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.disabled)
        ..setNavigationDelegate(
          NavigationDelegate(
            onProgress: (progress) {
              if (!mounted) {
                return;
              }
              setState(() {
                _progress = progress / 100;
              });
            },
            onNavigationRequest: (request) {
              final currentUri = Uri.tryParse(request.url);
              if (currentUri == null) {
                return NavigationDecision.prevent;
              }

              if (currentUri.scheme == 'file' || request.url.startsWith('about:blank')) {
                return NavigationDecision.navigate;
              }

              return NavigationDecision.prevent;
            },
            onWebResourceError: (error) {
              if (!mounted) {
                return;
              }
              setState(() {
                _errorMessage = 'WebView load failed: ${error.description}';
              });
            },
          ),
        )
        ..loadFile(file.path);

      if (!mounted) {
        return;
      }

      setState(() {
        _controller = controller;
      });
    } catch (error) {
      if (!mounted) {
        return;
      }
      setState(() {
        _errorMessage = 'Failed to open roadmap: $error';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: _errorMessage != null
          ? Center(child: Text(_errorMessage!))
          : _controller == null
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    if (_progress < 1) LinearProgressIndicator(value: _progress),
                    Expanded(child: WebViewWidget(controller: _controller!)),
                  ],
                ),
    );
  }
}
