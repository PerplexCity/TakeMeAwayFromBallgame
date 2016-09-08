# TakeMeAwayFromBallgame
The main analysis in this article is done by using [Greg Stoll's parsing function] (https://gregstoll.dyndns.org/~gregstoll/baseball/parseretrosheet.txt) on [Retrosheet data](http://www.retrosheet.org/game.htm).

Once parsed, situations that described home teams in the ninth inning were written to a CSV, which was joined with the team-specific data (Yankees and Mets) and summarized in [an excel file](docs/Situations_RAW.xlsx).

The photobooth file is simply where summaries were pasted and screenshotted to make charts.

The situation frequency file shows the frequency and deviation from the norm of all the Yankees' and Mets' scenarios. It is fed into the R script to create the graphs.
