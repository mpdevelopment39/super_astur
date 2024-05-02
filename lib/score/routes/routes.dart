import 'package:flutter/material.dart';
import 'package:super_dash/leaderboard/view/leaderboard_page.dart';
import 'package:super_dash/score/game_over/game_over_page.dart';
import 'package:super_dash/score/input_initials/view/input_initials_page.dart';
import 'package:super_dash/score/score.dart';
import 'package:super_dash/score/score_overview/view/score_overview_page.dart';

List<Page<void>> onGenerateScorePages(
  ScoreState state,
  List<Page<void>> pages,
) {
  return switch (state.status) {
    ScoreStatus.gameOver => [GameOverPage.page()],
    ScoreStatus.inputInitials => [InputInitialsPage.page()],
    ScoreStatus.scoreOverview => [ScoreOverviewPage.page()],
    ScoreStatus.leaderboard => [LeaderboardPage.page()],
  };
}
