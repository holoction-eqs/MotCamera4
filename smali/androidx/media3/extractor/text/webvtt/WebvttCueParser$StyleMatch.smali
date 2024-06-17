.class public final Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final score:I

.field public final style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;


# direct methods
.method public constructor <init>(ILandroidx/media3/extractor/text/webvtt/WebvttCssStyle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iput-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget p0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    iget p1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->score:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
