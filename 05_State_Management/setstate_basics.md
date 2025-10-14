# setState Basics

Use `setState` inside a `StatefulWidget` to trigger a rebuild when data changes.

**Key rules:**
- Mutate the state inside `setState(() { ... })`
- Keep builds fast — avoid heavy work in `build`
- Lift state up when multiple widgets need it
