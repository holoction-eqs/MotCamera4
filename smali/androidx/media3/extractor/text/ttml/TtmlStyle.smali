.class public final Landroidx/media3/extractor/text/ttml/TtmlStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public bold:I

.field public fontColor:I

.field public fontFamily:Ljava/lang/String;

.field public fontSize:F

.field public fontSizeUnit:I

.field public hasBackgroundColor:Z

.field public hasFontColor:Z

.field public id:Ljava/lang/String;

.field public italic:I

.field public linethrough:I

.field public multiRowAlign:Landroid/text/Layout$Alignment;

.field public rubyPosition:I

.field public rubyType:I

.field public shearPercentage:F

.field public textAlign:Landroid/text/Layout$Alignment;

.field public textCombine:I

.field public textEmphasis:Landroidx/media3/extractor/text/ttml/TextEmphasis;

.field public underline:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->underline:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->bold:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->italic:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    return-void
.end method


# virtual methods
.method public final chain(Landroidx/media3/extractor/text/ttml/TtmlStyle;)V
    .locals 4

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontColor:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontColor:I

    iput-boolean v1, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasFontColor:Z

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->bold:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->bold:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->bold:I

    :cond_1
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->italic:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->italic:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->italic:I

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    :cond_3
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    if-ne v0, v2, :cond_4

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->linethrough:I

    :cond_4
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->underline:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->underline:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->underline:I

    :cond_5
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyPosition:I

    :cond_6
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    :cond_7
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->multiRowAlign:Landroid/text/Layout$Alignment;

    :cond_8
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    if-ne v0, v2, :cond_9

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textCombine:I

    :cond_9
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    if-ne v0, v2, :cond_a

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSizeUnit:I

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->fontSize:F

    :cond_a
    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Landroidx/media3/extractor/text/ttml/TextEmphasis;

    if-nez v0, :cond_b

    iget-object v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Landroidx/media3/extractor/text/ttml/TextEmphasis;

    iput-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->textEmphasis:Landroidx/media3/extractor/text/ttml/TextEmphasis;

    :cond_b
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_c

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->shearPercentage:F

    :cond_c
    iget-boolean v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-nez v0, :cond_d

    iget-boolean v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    if-eqz v0, :cond_d

    iget v0, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->backgroundColor:I

    iput v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->backgroundColor:I

    iput-boolean v1, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->hasBackgroundColor:Z

    :cond_d
    iget v0, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    if-ne v0, v2, :cond_e

    iget p1, p1, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    if-eq p1, v2, :cond_e

    iput p1, p0, Landroidx/media3/extractor/text/ttml/TtmlStyle;->rubyType:I

    :cond_e
    return-void
.end method
