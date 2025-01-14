# Take Me Away from the Ballgame
The main analysis in this article is done by using [Greg Stoll's parsing function] (https://gregstoll.dyndns.org/~gregstoll/baseball/parseretrosheet.txt) on [Retrosheet data](http://www.retrosheet.org/game.htm).

Once parsed, situations that described home teams in the ninth inning were written to a CSV, which was joined with the team-specific data (Yankees and Mets) and summarized in [an excel file](../master/Situations_RAW.xlsx).

The [situation frequency file](../master/sitch_freq.csv) shows the frequency and deviation from the norm of all the Yankees' and Mets' scenarios. It is fed into [the R script](../master/freq_graphs.R) to create the graphs.
