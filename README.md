MomoKiki is a free, open source mobile app for learning languages (English ↔ Japanese to start). 
Built as a Duolingo alternative with no paywalls: lesson engine with 4 block types, 
spaced repetition flashcards (SM-2), offline pronunciation assessment via Vosk, 
and rule-based weak spot analysis. Self-hostable. Plugin system for community languages coming in v2.

## Lesson Engine JSON

Minimal lesson example:

```json
{
  "id": "lesson_intro_1",
  "title": "Greetings Basics",
  "meta": {
    "title": "Greetings Basics",
    "description": "Learn the first greeting words.",
    "difficulty": 1,
    "rating": 4.8,
    "estimated_xp": 45
  },
  "blocks": [
    {
      "id": "b1",
      "type": "text",
      "title": "Hello",
      "content": "Konnichiwa is a common daytime greeting."
    },
    {
      "id": "b2",
      "type": "quiz",
      "question": "What does Konnichiwa mean?",
      "options": ["Hello", "Good night", "Thank you"],
      "correct_answer": "Hello"
    }
  ]
}
```

Supported block types:
- `text` - static content with optional bullets
- `quiz` - single-answer multiple choice validated by `correct_answer`
- `video` - external video URL with completion action
- `code` - prompt plus typed answer against `expected_answer`
- `choice` - option objects with `correct_option_id`

Local demo lessons live in `assets/lessons/lesson_intro_1.json` through `assets/lessons/lesson_intro_5.json`.

Supabase tables expected by the lesson engine:
- `lessons`
- `user_progress`
- `user_stats`

Drift local tables expected by the lesson engine:
- `lesson_cache_table`
- `lesson_progress_table`
- `user_stats_table`
- `lesson_sync_queue_table`
