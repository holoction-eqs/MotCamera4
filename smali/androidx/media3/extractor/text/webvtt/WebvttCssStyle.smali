.class public final Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public bold:I

.field public combineUpright:Z

.field public fontColor:I

.field public fontFamily:Ljava/lang/String;

.field public fontSize:F

.field public fontSizeUnit:I

.field public hasBackgroundColor:Z

.field public hasFontColor:Z

.field public italic:I

.field public final linethrough:I

.field public rubyPosition:I

.field public targetClasses:Ljava/util/Set;

.field public targetId:Ljava/lang/String;

.field public targetTag:Ljava/lang/String;

.field public targetVoice:Ljava/lang/String;

.field public underline:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->linethrough:I

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    iput v1, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    iput-boolean v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    return-void
.end method

.method public static updateScoreForMatch(Ljava/lang/String;IILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int v0, p1, p2

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p1
.end method
