.class public final Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COLOR_SOLID_BLACK:I

.field public static final COLOR_SOLID_WHITE:I

.field public static final PEN_STYLE_BACKGROUND:[I

.field public static final PEN_STYLE_EDGE_TYPE:[I

.field public static final PEN_STYLE_FONT_STYLE:[I

.field public static final WINDOW_STYLE_FILL:[I

.field public static final WINDOW_STYLE_JUSTIFICATION:[I

.field public static final WINDOW_STYLE_PRINT_DIRECTION:[I

.field public static final WINDOW_STYLE_SCROLL_DIRECTION:[I

.field public static final WINDOW_STYLE_WORD_WRAP:[Z


# instance fields
.field public anchorId:I

.field public backgroundColor:I

.field public backgroundColorStartPosition:I

.field public final captionStringBuilder:Landroid/text/SpannableStringBuilder;

.field public defined:Z

.field public foregroundColor:I

.field public foregroundColorStartPosition:I

.field public horizontalAnchor:I

.field public italicsStartPosition:I

.field public justification:I

.field public penStyleId:I

.field public priority:I

.field public relativePositioning:Z

.field public final rolledUpCaptions:Ljava/util/ArrayList;

.field public row:I

.field public rowCount:I

.field public rowLock:Z

.field public underlineStartPosition:I

.field public verticalAnchor:I

.field public visible:Z

.field public windowFillColor:I

.field public windowStyleId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    invoke-static {v1, v1, v1, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    sput v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    const/4 v3, 0x3

    invoke-static {v1, v1, v1, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v4

    const/4 v5, 0x7

    new-array v6, v5, [I

    fill-array-data v6, :array_0

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_JUSTIFICATION:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_1

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_PRINT_DIRECTION:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_2

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_SCROLL_DIRECTION:[I

    new-array v6, v5, [Z

    fill-array-data v6, :array_3

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_WORD_WRAP:[Z

    new-array v6, v5, [I

    aput v2, v6, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aput v2, v6, v0

    aput v2, v6, v3

    const/4 v8, 0x4

    aput v4, v6, v8

    const/4 v9, 0x5

    aput v2, v6, v9

    const/4 v10, 0x6

    aput v2, v6, v10

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->WINDOW_STYLE_FILL:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_4

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_FONT_STYLE:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_5

    sput-object v6, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_EDGE_TYPE:[I

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v2, v5, v7

    aput v2, v5, v0

    aput v2, v5, v3

    aput v2, v5, v8

    aput v4, v5, v9

    aput v4, v5, v10

    sput-object v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->PEN_STYLE_BACKGROUND:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    return-void
.end method

.method public static getArgbColorFromCeaColor(IIII)I
    .locals 4

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/adobe/xmp/XMPUtils;->checkIndex(II)V

    invoke-static {p1, v0}, Lcom/adobe/xmp/XMPUtils;->checkIndex(II)V

    invoke-static {p2, v0}, Lcom/adobe/xmp/XMPUtils;->checkIndex(II)V

    invoke-static {p3, v0}, Lcom/adobe/xmp/XMPUtils;->checkIndex(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1

    const/4 v3, 0x3

    if-eq p3, v3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v0

    goto :goto_1

    :cond_1
    const/16 p3, 0x7f

    goto :goto_1

    :cond_2
    :goto_0
    move p3, v2

    :goto_1
    if-le p0, v1, :cond_3

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    if-le p1, v1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    move p1, v0

    :goto_3
    if-le p2, v1, :cond_5

    move v0, v2

    :cond_5
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final append(C)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->buildSpannableString()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v0, v1, :cond_1

    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    :cond_1
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v0, v1, :cond_2

    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    :cond_2
    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v0, v1, :cond_3

    iput v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    :cond_3
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    if-ge v0, v1, :cond_5

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-lt v0, v1, :cond_7

    :cond_5
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_7
    return-void
.end method

.method public final buildSpannableString()Landroid/text/SpannableString;
    .locals 6

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq v2, v4, :cond_1

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    if-eq v2, v4, :cond_2

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq v2, v4, :cond_3

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v0, v2, p0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rolledUpCaptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->row:I

    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defined:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->visible:Z

    const/4 v1, 0x4

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->priority:I

    iput-boolean v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->relativePositioning:Z

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->verticalAnchor:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->horizontalAnchor:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->anchorId:I

    const/16 v1, 0xf

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->rowLock:Z

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->justification:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowStyleId:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->penStyleId:I

    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->windowFillColor:I

    sget v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    return-void
.end method

.method public final setPenAttributes(ZZ)V
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-nez p1, :cond_1

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, p1, v0, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->italicsStartPosition:I

    :cond_1
    :goto_0
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    if-eq p1, v3, :cond_2

    if-nez p2, :cond_3

    new-instance p1, Landroid/text/style/UnderlineSpan;

    invoke-direct {p1}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, p1, p2, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->underlineStartPosition:I

    :cond_3
    :goto_1
    return-void
.end method

.method public final setPenColor(II)V
    .locals 6

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->captionStringBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    if-eq v0, p1, :cond_0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    sget v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_WHITE:I

    if-eq p1, v0, :cond_1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColorStartPosition:I

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->foregroundColor:I

    :cond_1
    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    if-eq p1, v3, :cond_2

    iget p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    if-eq p1, p2, :cond_2

    new-instance p1, Landroid/text/style/BackgroundColorSpan;

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    invoke-direct {p1, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    sget p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->COLOR_SOLID_BLACK:I

    if-eq p2, p1, :cond_3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColorStartPosition:I

    iput p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backgroundColor:I

    :cond_3
    return-void
.end method
