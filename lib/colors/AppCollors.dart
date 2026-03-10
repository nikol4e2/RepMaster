import 'package:flutter/material.dart';

class AppColors {
  // ── Backgrounds ─────────────────────────────────
  static const Color background         = Color(0xFF0F0F0F);     // almost black – main scaffold
  static const Color surface            = Color(0xFF161616);     // cards, sheets, elevated surfaces
  static const Color surfaceDim         = Color(0xFF121212);     // slightly darker variant
  static const Color surfaceBright      = Color(0xFF1E1E1E);     // for selected / active areas

  // ── Primary accent (orange – energy, action) ────
  static const Color primary            = Color(0xFFFF6200);     // vivid orange – main CTA
  static const Color primaryContainer   = Color(0xFFFF8A3D);     // lighter variant
  static const Color onPrimary          = Color(0xFFFFFFFF);     // text/icons on primary

  // ── Secondary accent (red – intensity, completed sets) ──
  static const Color secondary          = Color(0xFFFF2D55);     // vivid red – danger / done / highlights
  static const Color secondaryContainer = Color(0xFFFF5C7A);
  static const Color onSecondary        = Color(0xFFFFFFFF);

  // ── Neutral text & icons ────────────────────────────────
  static const Color textPrimary        = Color(0xFFFFFFFF);     // main body text
  static const Color textSecondary      = Color(0xFFB3B3B3);     // subtitles, hints, secondary info
  static const Color textTertiary       = Color(0xFF808080);     // very subtle / disabled

  // ── Status / feedback ───────────────────────────────────
  static const Color success            = Color(0xFF00D084);     // green – set completed, success
  static const Color error              = Color(0xFFFF3B30);     // red – error / too much rest
  static const Color warning            = Color(0xFFFFCC00);     // yellow – attention / adjust reps
  static const Color info               = Color(0xFF5E9CFF);     // blue – tips / info panels

  // ── Dividers, borders, disabled ─────────────────────────
  static const Color divider            = Color(0xFF2A2A2A);
  static const Color outline            = Color(0xFF444444);
  static const Color disabled           = Color(0xFF555555);

  // ── Special / progress ──────────────────────────────────
  static const Color progressActive     = Color(0xFFFF6200);     // orange progress bar
  static const Color progressInactive   = Color(0xFF444444);     // empty part of progress
  static const Color restTimer          = Color(0xFFFF8A3D);     // rest countdown accent
}