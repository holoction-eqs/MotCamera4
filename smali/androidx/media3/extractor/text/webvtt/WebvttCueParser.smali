.class public abstract Landroidx/media3/extractor/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field public static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field public static final DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

.field public static final DEFAULT_TEXT_COLORS:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xff

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "white"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "lime"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cyan"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "red"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "yellow"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "magenta"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "blue"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "black"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_white"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_lime"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_cyan"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_red"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_yellow"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "bg_magenta"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "bg_blue"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bg_black"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    return-void
.end method

.method public static applySpansForTag(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget v4, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    iget-object v6, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v11, 0x2

    const/4 v12, -0x1

    if-eqz v7, :cond_e

    const/16 v13, 0x69

    if-eq v7, v13, :cond_c

    const v13, 0x3291ee

    if-eq v7, v13, :cond_a

    const v13, 0x3595da

    if-eq v7, v13, :cond_8

    const/16 v13, 0x62

    if-eq v7, v13, :cond_6

    const/16 v13, 0x63

    if-eq v7, v13, :cond_4

    const/16 v13, 0x75

    if-eq v7, v13, :cond_2

    const/16 v13, 0x76

    if-eq v7, v13, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "v"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x5

    goto :goto_1

    :cond_2
    const-string v7, "u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x4

    goto :goto_1

    :cond_4
    const-string v7, "c"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move v6, v11

    goto :goto_1

    :cond_6
    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    const-string v7, "ruby"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x7

    goto :goto_1

    :cond_a
    const-string v7, "lang"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x6

    goto :goto_1

    :cond_c
    const-string v7, "i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x3

    goto :goto_1

    :cond_e
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    :goto_0
    move v6, v12

    goto :goto_1

    :cond_f
    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x21

    packed-switch v6, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-static {v3, v2, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v6

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v14, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->BY_START_POSITION_ASC:Lcom/motorola/camera/VideoFormat$$ExternalSyntheticLambda0;

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget v14, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v15, v9, :cond_15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    iget-object v9, v9, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget-object v9, v9, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const-string v8, "rt"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_4

    :cond_10
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    iget-object v9, v8, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {v3, v2, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I

    move-result v9

    if-eq v9, v12, :cond_11

    goto :goto_3

    :cond_11
    if-eq v6, v12, :cond_12

    move v9, v6

    goto :goto_3

    :cond_12
    const/4 v9, 0x1

    :goto_3
    iget-object v12, v8, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->startTag:Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    iget v12, v12, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->position:I

    sub-int v12, v12, v16

    iget v8, v8, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;->endPosition:I

    sub-int v8, v8, v16

    invoke-virtual {v0, v12, v8}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual {v0, v12, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    new-instance v8, Landroidx/media3/common/text/RubySpan;

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroidx/media3/common/text/RubySpan;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v8, v14, v12, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int v16, v8, v16

    move v14, v12

    :goto_4
    add-int/lit8 v15, v15, 0x1

    const/4 v12, -0x1

    goto :goto_2

    :pswitch_1
    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    goto :goto_7

    :pswitch_2
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v11}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_7

    :pswitch_3
    iget-object v6, v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_TEXT_COLORS:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v9, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_6

    :cond_14
    sget-object v9, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->DEFAULT_BACKGROUND_COLORS:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    new-instance v9, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v9, v8}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    :goto_6
    invoke-virtual {v0, v9, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    :pswitch_4
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_7
    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_15
    :pswitch_5
    invoke-static {v3, v2, v1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object v3, v3, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    if-nez v3, :cond_16

    const/4 v6, -0x1

    const/4 v9, 0x3

    const/4 v12, 0x1

    goto/16 :goto_16

    :cond_16
    iget v6, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_17

    iget v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v9, v8, :cond_17

    const/4 v8, -0x1

    goto :goto_b

    :cond_17
    const/4 v8, 0x1

    if-ne v6, v8, :cond_18

    move v6, v8

    goto :goto_9

    :cond_18
    const/4 v6, 0x0

    :goto_9
    iget v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v9, v8, :cond_19

    move v8, v11

    goto :goto_a

    :cond_19
    const/4 v8, 0x0

    :goto_a
    or-int/2addr v8, v6

    :goto_b
    const/4 v6, -0x1

    if-eq v8, v6, :cond_1d

    new-instance v8, Landroid/text/style/StyleSpan;

    iget v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    if-ne v9, v6, :cond_1a

    iget v10, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v10, v6, :cond_1a

    move v9, v6

    goto :goto_e

    :cond_1a
    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    move v9, v10

    goto :goto_c

    :cond_1b
    const/4 v9, 0x0

    :goto_c
    iget v12, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    if-ne v12, v10, :cond_1c

    move v10, v11

    goto :goto_d

    :cond_1c
    const/4 v10, 0x0

    :goto_d
    or-int/2addr v9, v10

    :goto_e
    invoke-direct {v8, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-static {v0, v8, v4, v5}, Landroidx/room/util/DBUtil;->addOrReplaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    :cond_1d
    iget v8, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->linethrough:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    move/from16 v18, v9

    goto :goto_f

    :cond_1e
    const/16 v18, 0x0

    :goto_f
    if-eqz v18, :cond_1f

    new-instance v8, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v8}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v8, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    iget v8, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    if-ne v8, v9, :cond_20

    const/4 v8, 0x1

    goto :goto_10

    :cond_20
    const/4 v8, 0x0

    :goto_10
    if-eqz v8, :cond_21

    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v8, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_21
    iget-boolean v8, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v8, :cond_23

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    iget-boolean v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    if-eqz v9, :cond_22

    iget v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontColor:I

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {v0, v8, v4, v5}, Landroidx/room/util/DBUtil;->addOrReplaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_11

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_11
    iget-boolean v8, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v8, :cond_25

    new-instance v8, Landroid/text/style/BackgroundColorSpan;

    iget-boolean v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    if-eqz v9, :cond_24

    iget v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->backgroundColor:I

    invoke-direct {v8, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-static {v0, v8, v4, v5}, Landroidx/room/util/DBUtil;->addOrReplaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    goto :goto_12

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_12
    iget-object v8, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    if-eqz v8, :cond_26

    new-instance v8, Landroid/text/style/TypefaceSpan;

    iget-object v9, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v8, v4, v5}, Landroidx/room/util/DBUtil;->addOrReplaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    :cond_26
    iget v8, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_29

    if-eq v8, v11, :cond_28

    const/4 v9, 0x3

    if-eq v8, v9, :cond_27

    const/4 v12, 0x1

    goto :goto_15

    :cond_27
    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    iget v10, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v10, v12

    invoke-direct {v8, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    goto :goto_13

    :cond_28
    const/4 v9, 0x3

    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    iget v10, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    invoke-direct {v8, v10}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    :goto_13
    const/4 v12, 0x1

    goto :goto_14

    :cond_29
    const/4 v9, 0x3

    new-instance v8, Landroid/text/style/AbsoluteSizeSpan;

    iget v10, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    float-to-int v10, v10

    const/4 v12, 0x1

    invoke-direct {v8, v10, v12}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    :goto_14
    invoke-static {v0, v8, v4, v5}, Landroidx/room/util/DBUtil;->addOrReplaceSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    :goto_15
    iget-boolean v3, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    if-eqz v3, :cond_2a

    new-instance v3, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    invoke-direct {v3}, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;-><init>()V

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2a
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_2b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/ArrayList;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    iget-object v4, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_2

    :cond_0
    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v1, v6, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->updateScoreForMatch(Ljava/lang/String;IILjava/lang/String;)I

    move-result v5

    iget-object v6, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v6, v5, v7, v4}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->updateScoreForMatch(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    iget-object v6, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->voice:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-static {v5, v4, v7, v6}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->updateScoreForMatch(Ljava/lang/String;IILjava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    iget-object v6, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->classes:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, v3, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    mul-int/2addr v5, v7

    add-int/2addr v4, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    if-lez v4, :cond_3

    new-instance v5, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    invoke-direct {v5, v4, v3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;-><init>(ILandroidx/media3/extractor/text/webvtt/WebvttCssStyle;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static getRubyPosition(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->getApplicableStyles(Ljava/util/List;Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, -0x1

    if-ge p1, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;

    iget-object p2, p2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StyleMatch;->style:Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    iget p2, p2, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    if-eq p2, v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;
    .locals 7

    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p3}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object p0

    iput-object p0, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    new-instance p0, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    invoke-virtual {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Landroidx/media3/common/text/Cue$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v2

    iget-wide v3, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iget-wide v5, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;-><init>(Landroidx/media3/common/text/Cue;JJ)V

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Skipping cue with bad header: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebvttCueParser"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseCueSettingsList(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "WebvttCueParser"

    sget-object v2, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v7, "line"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V

    goto :goto_0

    :cond_0
    const-string v7, "align"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "start"

    const-string v9, "end"

    const-string v10, "middle"

    const-string v11, "center"

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, -0x1

    const/4 v3, 0x0

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v15, v12

    goto :goto_1

    :sswitch_1
    const-string v3, "right"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v15, v13

    goto :goto_1

    :sswitch_2
    const-string v3, "left"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v15, v14

    goto :goto_1

    :sswitch_3
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v15, v5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v15, 0x1

    goto :goto_1

    :sswitch_5
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move v15, v3

    :goto_1
    packed-switch v15, :pswitch_data_0

    :try_start_1
    const-string v3, "Invalid alignment value: "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_0
    const/4 v3, 0x1

    goto :goto_3

    :pswitch_1
    move v3, v12

    goto :goto_3

    :pswitch_2
    move v3, v13

    goto :goto_3

    :pswitch_3
    move v3, v14

    goto :goto_3

    :goto_2
    :pswitch_4
    move v3, v5

    :goto_3
    iput v3, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    goto/16 :goto_0

    :cond_7
    const-string v7, "position"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/high16 v16, -0x80000000

    if-eqz v7, :cond_f

    const/16 v4, 0x2c

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v15, :cond_e

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_1

    :goto_4
    move v12, v15

    goto :goto_5

    :sswitch_6
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :sswitch_7
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    move v12, v13

    goto :goto_5

    :sswitch_8
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    move v12, v14

    goto :goto_5

    :sswitch_9
    const-string v8, "line-right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    move v12, v5

    goto :goto_5

    :sswitch_a
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    const/4 v12, 0x1

    goto :goto_5

    :sswitch_b
    const-string v8, "line-left"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_4

    :cond_c
    move v12, v3

    :cond_d
    :goto_5
    packed-switch v12, :pswitch_data_1

    :try_start_2
    const-string v5, "Invalid anchor value: "

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v5, v16

    goto :goto_6

    :pswitch_5
    const/4 v5, 0x1

    goto :goto_6

    :pswitch_6
    move v5, v3

    :goto_6
    :pswitch_7
    iput v5, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    invoke-virtual {v6, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_e
    invoke-static {v6}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    goto/16 :goto_0

    :cond_f
    const-string v3, "size"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v6}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    goto/16 :goto_0

    :cond_10
    const-string v3, "vertical"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "lr"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "rl"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "Invalid \'vertical\' value: "

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v3, v16

    goto :goto_7

    :cond_11
    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    move v3, v5

    :goto_7
    iput v3, v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    goto/16 :goto_0

    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown cue setting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Skipping bad cue setting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x4009266b -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6dd215c0 -> :sswitch_b
        -0x514d33ab -> :sswitch_a
        -0x4c1a40fd -> :sswitch_9
        -0x4009266b -> :sswitch_8
        0x188db -> :sswitch_7
        0x68ac462 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static parseCueText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance v4, Ljava/util/ArrayDeque;

    invoke-direct {v4}, Ljava/util/ArrayDeque;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ""

    if-ge v7, v8, :cond_29

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v11, 0x2

    const/16 v12, 0x3e

    const/4 v13, -0x1

    const/4 v14, 0x1

    const-string v15, " "

    const/16 v10, 0x3c

    const/16 v6, 0x26

    if-eq v8, v6, :cond_20

    if-eq v8, v10, :cond_0

    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v7, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v6, v8, :cond_2

    :cond_1
    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0x2f

    if-ne v8, v10, :cond_3

    move v8, v14

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v1, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :goto_3
    add-int/lit8 v12, v6, -0x2

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v10, :cond_5

    move v10, v14

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    :goto_4
    if-eqz v8, :cond_6

    move v13, v11

    goto :goto_5

    :cond_6
    move v13, v14

    :goto_5
    add-int/2addr v7, v13

    if-eqz v10, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v12, v6, -0x1

    :goto_6
    invoke-virtual {v1, v7, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v14

    invoke-static {v13}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    sget v13, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v13, "[ \\.]"

    invoke-virtual {v12, v13, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/16 v11, 0x62

    if-eq v13, v11, :cond_17

    const/16 v11, 0x63

    if-eq v13, v11, :cond_15

    const/16 v11, 0x69

    if-eq v13, v11, :cond_13

    const/16 v11, 0xe42

    if-eq v13, v11, :cond_11

    const v11, 0x3291ee

    if-eq v13, v11, :cond_f

    const v11, 0x3595da

    if-eq v13, v11, :cond_d

    const/16 v11, 0x75

    if-eq v13, v11, :cond_b

    const/16 v11, 0x76

    if-eq v13, v11, :cond_9

    goto :goto_7

    :cond_9
    const-string v11, "v"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_7

    :cond_a
    const/4 v11, 0x4

    goto :goto_8

    :cond_b
    const-string v11, "u"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_7

    :cond_c
    const/4 v11, 0x3

    goto :goto_8

    :cond_d
    const-string v11, "ruby"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_7

    :cond_e
    const/4 v11, 0x7

    goto :goto_8

    :cond_f
    const-string v11, "lang"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_7

    :cond_10
    const/4 v11, 0x6

    goto :goto_8

    :cond_11
    const-string v11, "rt"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_7

    :cond_12
    const/4 v11, 0x5

    goto :goto_8

    :cond_13
    const-string v11, "i"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_7

    :cond_14
    const/4 v11, 0x2

    goto :goto_8

    :cond_15
    const-string v11, "c"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_16

    goto :goto_7

    :cond_16
    move v11, v14

    goto :goto_8

    :cond_17
    const-string v11, "b"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_18

    :goto_7
    const/4 v11, -0x1

    goto :goto_8

    :cond_18
    const/4 v11, 0x0

    :goto_8
    packed-switch v11, :pswitch_data_0

    const/4 v11, 0x0

    goto :goto_9

    :pswitch_0
    move v11, v14

    :goto_9
    if-nez v11, :cond_19

    goto/16 :goto_1

    :cond_19
    if-eqz v8, :cond_1d

    :cond_1a
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1b

    goto/16 :goto_1

    :cond_1b
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {v3, v7, v0, v5, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    new-instance v8, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-direct {v8, v7, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$Element;-><init>(Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;I)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_1c
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_a
    iget-object v7, v7, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto/16 :goto_1

    :cond_1d
    if-nez v10, :cond_1

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v14

    invoke-static {v10}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    invoke-virtual {v7, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1e

    const/4 v12, 0x0

    goto :goto_b

    :cond_1e
    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_b
    const-string v10, "\\."

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v10, v7, v12

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    :goto_c
    array-length v12, v7

    if-ge v14, v12, :cond_1f

    aget-object v12, v7, v14

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_1f
    new-instance v7, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-direct {v7, v8, v10, v9, v11}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_20
    add-int/lit8 v7, v7, 0x1

    const/16 v9, 0x3b

    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/16 v11, 0x20

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    const/4 v6, -0x1

    if-ne v9, v6, :cond_21

    move v9, v13

    goto :goto_d

    :cond_21
    if-ne v13, v6, :cond_22

    goto :goto_d

    :cond_22
    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_d
    if-eq v9, v6, :cond_28

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    const-string v8, "nbsp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_23

    goto :goto_e

    :cond_23
    const/4 v6, 0x3

    goto :goto_e

    :sswitch_1
    const-string v8, "amp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    goto :goto_e

    :cond_24
    const/4 v6, 0x2

    goto :goto_e

    :sswitch_2
    const-string v8, "lt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_25

    goto :goto_e

    :cond_25
    move v6, v14

    goto :goto_e

    :sswitch_3
    const-string v8, "gt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_26

    goto :goto_e

    :cond_26
    const/4 v6, 0x0

    :goto_e
    packed-switch v6, :pswitch_data_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "ignoring unsupported entity: \'&"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ";\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WebvttCueParser"

    invoke-static {v7, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :pswitch_1
    move v12, v11

    goto :goto_f

    :pswitch_2
    const/16 v12, 0x26

    goto :goto_f

    :pswitch_3
    move v12, v10

    :goto_f
    :pswitch_4
    invoke-virtual {v3, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :goto_10
    if-ne v9, v13, :cond_27

    invoke-virtual {v3, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_27
    add-int/lit8 v7, v9, 0x1

    goto/16 :goto_0

    :cond_28
    invoke-virtual {v3, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_0

    :cond_29
    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {v3, v1, v0, v5, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_11

    :cond_2a
    new-instance v1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v9, v9, v4}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v1, v0, v4, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->applySpansForTag(Landroid/text/SpannableStringBuilder;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$StartTag;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v3}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_3
        0xd88 -> :sswitch_2
        0x179c4 -> :sswitch_1
        0x337f11 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static parseLineAttribute(Ljava/lang/String;Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;)V
    .locals 7

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "start"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "middle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v5, "center"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    const-string v3, "Invalid anchor value: "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebvttCueParser"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v6, -0x80000000

    goto :goto_1

    :pswitch_0
    move v6, v1

    goto :goto_1

    :pswitch_1
    move v6, v2

    :goto_1
    :pswitch_2
    iput v6, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_4
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result p0

    iput p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iput v1, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    goto :goto_2

    :cond_5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    iput p0, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iput v2, p1, Landroidx/media3/extractor/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_3
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
