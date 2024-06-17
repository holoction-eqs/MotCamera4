.class public final Landroidx/media3/extractor/text/ssa/SsaDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# static fields
.field public static final SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final dialogueFormatFromInitializationData:Landroidx/media3/common/AudioAttributes$Builder;

.field public final haveInitializationData:Z

.field public screenHeight:F

.field public screenWidth:F

.field public styles:Ljava/util/LinkedHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    const v0, -0x800001

    iput v0, p0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->screenWidth:F

    iput v0, p0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->screenHeight:F

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->haveInitializationData:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->fromUtf8Bytes([B)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Format:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    invoke-static {v0}, Landroidx/media3/common/AudioAttributes$Builder;->fromFormatLine(Ljava/lang/String;)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Landroidx/media3/common/AudioAttributes$Builder;

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    sget-object p1, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/extractor/text/ssa/SsaDecoder;->parseHeader(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->haveInitializationData:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Landroidx/media3/common/AudioAttributes$Builder;

    :goto_0
    return-void
.end method

.method public static addCuePlacerholderByTime(JLjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_3
    add-int/lit8 p1, v0, -0x1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    invoke-virtual {p3, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v0
.end method

.method public static parseTimecodeUs(Ljava/lang/String;)J
    .locals 8

    sget-object v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->SSA_TIMECODE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    mul-long/2addr v6, v4

    add-long/2addr v6, v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v4

    add-long/2addr v0, v6

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 37

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v4, p1

    move-object/from16 v5, p3

    invoke-direct {v3, v5, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    iget-boolean v5, v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->haveInitializationData:Z

    if-nez v5, :cond_1

    invoke-virtual {v0, v3, v4}, Landroidx/media3/extractor/text/ssa/SsaDecoder;->parseHeader(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V

    :cond_1
    if-eqz v5, :cond_2

    iget-object v5, v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->dialogueFormatFromInitializationData:Landroidx/media3/common/AudioAttributes$Builder;

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_21

    const-string v7, "Format:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroidx/media3/common/AudioAttributes$Builder;->fromFormatLine(Ljava/lang/String;)Landroidx/media3/common/AudioAttributes$Builder;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v7, "Dialogue:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const-string v8, "SsaDecoder"

    if-nez v5, :cond_4

    const-string v7, "Skipping dialogue line before complete format: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, ","

    iget v10, v5, Landroidx/media3/common/AudioAttributes$Builder;->spatializationBehavior:I

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    if-eq v9, v10, :cond_5

    const-string v7, "Skipping dialogue line with fewer columns than format: "

    goto :goto_3

    :cond_5
    iget v9, v5, Landroidx/media3/common/AudioAttributes$Builder;->contentType:I

    aget-object v9, v7, v9

    invoke-static {v9}, Landroidx/media3/extractor/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v9, v11

    if-nez v13, :cond_6

    goto :goto_2

    :cond_6
    iget v13, v5, Landroidx/media3/common/AudioAttributes$Builder;->flags:I

    aget-object v13, v7, v13

    invoke-static {v13}, Landroidx/media3/extractor/text/ssa/SsaDecoder;->parseTimecodeUs(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v11, v13, v11

    if-nez v11, :cond_7

    :goto_2
    const-string v7, "Skipping invalid timing: "

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_7
    iget-object v6, v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->styles:Ljava/util/LinkedHashMap;

    const/4 v11, -0x1

    if-eqz v6, :cond_8

    iget v12, v5, Landroidx/media3/common/AudioAttributes$Builder;->usage:I

    if-eq v12, v11, :cond_8

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/text/ssa/SsaStyle;

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    iget v12, v5, Landroidx/media3/common/AudioAttributes$Builder;->allowedCapturePolicy:I

    aget-object v7, v7, v12

    sget-object v12, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v16

    move-object/from16 p2, v3

    const/4 v3, 0x1

    if-eqz v16, :cond_c

    invoke-virtual {v12, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->parsePosition(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v16, :cond_9

    move-object/from16 v15, v16

    :catch_0
    :cond_9
    move-object/from16 v16, v4

    :try_start_1
    sget-object v4, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->ALIGNMENT_OVERRIDE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_a
    const/4 v3, -0x1

    :goto_6
    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    move v11, v3

    move-object/from16 v4, v16

    move-object/from16 v3, p2

    goto :goto_5

    :catch_1
    :cond_b
    move-object/from16 v3, p2

    move-object/from16 v4, v16

    goto :goto_5

    :cond_c
    move-object/from16 v16, v4

    new-instance v3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;

    sget-object v3, Landroidx/media3/extractor/text/ssa/SsaStyle$Overrides;->BRACES_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\N"

    const-string v7, "\n"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\h"

    const-string/jumbo v7, "\u00a0"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->screenWidth:F

    iget v7, v0, Landroidx/media3/extractor/text/ssa/SsaDecoder;->screenHeight:F

    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/16 v34, 0x0

    const/16 v21, 0x0

    const v30, -0x800001

    const/high16 v33, -0x80000000

    const/16 v31, 0x0

    if-eqz v6, :cond_15

    iget-object v3, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->primaryColor:Ljava/lang/Integer;

    if-eqz v3, :cond_d

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v3

    move-object/from16 p1, v5

    const/16 v5, 0x21

    move-wide/from16 v35, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_d
    move-object/from16 p1, v5

    move-wide/from16 v35, v13

    :goto_7
    iget v0, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->borderStyle:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    iget-object v0, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->outlineColor:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/4 v5, 0x0

    const/16 v13, 0x21

    invoke-virtual {v12, v3, v5, v0, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    iget v0, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->fontSize:F

    const v3, -0x800001

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_f

    cmpl-float v3, v7, v3

    if-eqz v3, :cond_f

    div-float/2addr v0, v7

    const/4 v3, 0x1

    goto :goto_8

    :cond_f
    move/from16 v0, v30

    move/from16 v3, v33

    :goto_8
    iget-boolean v5, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->italic:Z

    iget-boolean v13, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->bold:Z

    if-eqz v13, :cond_10

    if-eqz v5, :cond_10

    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v13, 0x3

    invoke-direct {v5, v13}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v13

    const/16 v14, 0x21

    move/from16 p3, v0

    const/4 v0, 0x0

    invoke-virtual {v12, v5, v0, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    :cond_10
    move/from16 p3, v0

    if-eqz v13, :cond_11

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    goto :goto_9

    :cond_11
    if-eqz v5, :cond_12

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    :goto_9
    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v14, 0x21

    const/4 v13, 0x0

    invoke-virtual {v12, v0, v13, v5, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v0, v13

    goto :goto_a

    :cond_12
    const/16 v14, 0x21

    const/4 v0, 0x0

    :goto_a
    iget-boolean v5, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->underline:Z

    if-eqz v5, :cond_13

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v13

    invoke-virtual {v12, v5, v0, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_13
    iget-boolean v5, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->strikeout:Z

    if-eqz v5, :cond_14

    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v13

    invoke-virtual {v12, v5, v0, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    move/from16 v28, p3

    move/from16 v27, v3

    goto :goto_b

    :cond_15
    move-object/from16 p1, v5

    move-wide/from16 v35, v13

    move/from16 v28, v30

    move/from16 v27, v33

    :goto_b
    const/4 v0, -0x1

    if-eq v11, v0, :cond_16

    goto :goto_c

    :cond_16
    if-eqz v6, :cond_17

    iget v11, v6, Landroidx/media3/extractor/text/ssa/SsaStyle;->alignment:I

    goto :goto_c

    :cond_17
    move v11, v0

    :goto_c
    const-string v0, "Unknown alignment: "

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    invoke-static {v0, v11, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_d

    :pswitch_1
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_e

    :pswitch_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_e

    :pswitch_3
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_e

    :goto_d
    :pswitch_4
    const/4 v3, 0x0

    :goto_e
    move-object/from16 v19, v3

    const/high16 v3, -0x80000000

    packed-switch v11, :pswitch_data_1

    :pswitch_5
    invoke-static {v0, v11, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_f

    :pswitch_6
    const/4 v5, 0x2

    goto :goto_10

    :pswitch_7
    const/4 v5, 0x1

    goto :goto_10

    :pswitch_8
    const/4 v5, 0x0

    goto :goto_10

    :goto_f
    :pswitch_9
    move v5, v3

    :goto_10
    packed-switch v11, :pswitch_data_2

    :pswitch_a
    invoke-static {v0, v11, v8}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_11

    :pswitch_b
    const/4 v3, 0x0

    goto :goto_11

    :pswitch_c
    const/4 v0, 0x1

    goto :goto_12

    :pswitch_d
    const/4 v0, 0x2

    goto :goto_12

    :goto_11
    :pswitch_e
    move v0, v3

    :goto_12
    const v3, -0x800001

    if-eqz v15, :cond_18

    cmpl-float v6, v7, v3

    if-eqz v6, :cond_18

    cmpl-float v6, v4, v3

    if-eqz v6, :cond_18

    iget v3, v15, Landroid/graphics/PointF;->x:F

    div-float/2addr v3, v4

    iget v4, v15, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v7

    move/from16 v25, v3

    move/from16 v22, v4

    goto :goto_15

    :cond_18
    const v4, 0x3f733333    # 0.95f

    const/high16 v6, 0x3f000000    # 0.5f

    const v7, 0x3d4ccccd    # 0.05f

    const/4 v8, 0x1

    const/4 v11, 0x2

    if-eqz v5, :cond_1b

    if-eq v5, v8, :cond_1a

    if-eq v5, v11, :cond_19

    move v13, v3

    goto :goto_13

    :cond_19
    move v13, v4

    goto :goto_13

    :cond_1a
    move v13, v6

    goto :goto_13

    :cond_1b
    move v13, v7

    :goto_13
    if-eqz v0, :cond_1e

    if-eq v0, v8, :cond_1d

    if-eq v0, v11, :cond_1c

    goto :goto_14

    :cond_1c
    move v3, v4

    goto :goto_14

    :cond_1d
    move v3, v6

    goto :goto_14

    :cond_1e
    move v3, v7

    :goto_14
    move/from16 v22, v3

    move/from16 v25, v13

    :goto_15
    new-instance v3, Landroidx/media3/common/text/Cue;

    move-object/from16 v17, v3

    const/high16 v32, -0x1000000

    const/16 v23, 0x0

    move-object/from16 v18, v12

    move-object/from16 v20, v21

    move/from16 v24, v0

    move/from16 v26, v5

    move/from16 v29, v30

    invoke-direct/range {v17 .. v34}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    invoke-static {v9, v10, v2, v1}, Landroidx/media3/extractor/text/ssa/SsaDecoder;->addCuePlacerholderByTime(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    move-wide/from16 v4, v35

    invoke-static {v4, v5, v2, v1}, Landroidx/media3/extractor/text/ssa/SsaDecoder;->addCuePlacerholderByTime(JLjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v4

    :goto_16
    if-ge v0, v4, :cond_20

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_1f
    :goto_17
    move-object/from16 p2, v3

    move-object/from16 v16, v4

    move-object/from16 p1, v5

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_21
    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaSubtitle;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/media3/extractor/text/ssa/SsaSubtitle;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_9
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_e
        :pswitch_a
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public final parseHeader(Landroidx/media3/common/util/ParsableByteArray;Ljava/nio/charset/Charset;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    const-string v3, "[Script Info]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x5b

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    :catch_0
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v8, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v3, v8

    if-eqz v3, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->peekChar(Ljava/nio/charset/Charset;)C

    move-result v3

    if-eq v3, v6, :cond_0

    :cond_1
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-eq v3, v5, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, v0, v7

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "playresx"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "playresy"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroidx/media3/extractor/text/ssa/SsaDecoder;->screenHeight:F

    goto :goto_1

    :cond_4
    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v1, Landroidx/media3/extractor/text/ssa/SsaDecoder;->screenWidth:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_5
    const-string v3, "[V4+ Styles]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v8, "SsaDecoder"

    if-eqz v3, :cond_23

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_2
    const/4 v10, 0x0

    :goto_3
    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_22

    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v12, v2, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v0, v12

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/common/util/ParsableByteArray;->peekChar(Ljava/nio/charset/Charset;)C

    move-result v0

    if-eq v0, v6, :cond_22

    :cond_6
    const-string v0, "Format:"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v13, -0x1

    const/4 v14, 0x6

    const-string v15, ","

    if-eqz v0, :cond_13

    const/4 v0, 0x7

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v15}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    move v11, v7

    move v15, v13

    move/from16 v17, v15

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v25, v24

    :goto_4
    array-length v0, v10

    if-ge v11, v0, :cond_11

    aget-object v0, v10, v11

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v5, "outlinecolour"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    :cond_7
    const/16 v0, 0x9

    goto/16 :goto_6

    :sswitch_1
    const-string v5, "alignment"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_5

    :cond_8
    const/16 v0, 0x8

    goto/16 :goto_6

    :sswitch_2
    const-string v5, "borderstyle"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    const/4 v0, 0x7

    goto :goto_6

    :sswitch_3
    const-string v5, "fontsize"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    move v0, v14

    goto :goto_6

    :sswitch_4
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    const/4 v0, 0x5

    goto :goto_6

    :sswitch_5
    const-string v5, "bold"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_5

    :cond_c
    const/4 v0, 0x4

    goto :goto_6

    :sswitch_6
    const-string v5, "primarycolour"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    const/4 v0, 0x3

    goto :goto_6

    :sswitch_7
    const-string v5, "strikeout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_5

    :cond_e
    const/4 v0, 0x2

    goto :goto_6

    :sswitch_8
    const-string v5, "underline"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    move v0, v4

    goto :goto_6

    :sswitch_9
    const-string v5, "italic"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_5

    :cond_10
    move v0, v7

    goto :goto_6

    :goto_5
    move v0, v13

    :goto_6
    packed-switch v0, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    move/from16 v19, v11

    goto :goto_7

    :pswitch_1
    move/from16 v17, v11

    goto :goto_7

    :pswitch_2
    move/from16 v25, v11

    goto :goto_7

    :pswitch_3
    move/from16 v20, v11

    goto :goto_7

    :pswitch_4
    move v15, v11

    goto :goto_7

    :pswitch_5
    move/from16 v21, v11

    goto :goto_7

    :pswitch_6
    move/from16 v18, v11

    goto :goto_7

    :pswitch_7
    move/from16 v24, v11

    goto :goto_7

    :pswitch_8
    move/from16 v23, v11

    goto :goto_7

    :pswitch_9
    move/from16 v22, v11

    :goto_7
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    goto/16 :goto_4

    :cond_11
    if-eq v15, v13, :cond_12

    new-instance v0, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;

    array-length v5, v10

    move v13, v15

    move-object v15, v0

    move/from16 v16, v13

    move/from16 v26, v5

    invoke-direct/range {v15 .. v26}, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;-><init>(IIIIIIIIIII)V

    move-object v10, v0

    const/4 v5, 0x2

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_13
    const-string v0, "Style:"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    if-nez v10, :cond_14

    const-string v0, "Skipping \'Style:\' line before \'Format:\' line: "

    invoke-virtual {v0, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    :cond_14
    const-string v5, "\'"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v0, v14

    iget v15, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->length:I

    const-string v6, "SsaStyle"

    if-eq v0, v15, :cond_15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v5, v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v5, v11}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    invoke-static {v5, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_15
    :try_start_1
    new-instance v15, Landroidx/media3/extractor/text/ssa/SsaStyle;

    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->nameIndex:I

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->alignmentIndex:I

    if-eq v0, v13, :cond_16

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseAlignment(Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    goto :goto_8

    :cond_16
    move/from16 v29, v13

    :goto_8
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->primaryColorIndex:I

    if-eq v0, v13, :cond_17

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_9

    :cond_17
    const/16 v30, 0x0

    :goto_9
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->outlineColorIndex:I

    if-eq v0, v13, :cond_18

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseColor(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_a

    :cond_18
    const/16 v31, 0x0

    :goto_a
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->fontSizeIndex:I

    if-eq v0, v13, :cond_19

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_b

    :catch_1
    move-exception v0

    move-object v9, v0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Failed to parse font size: \'"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v9}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    const v0, -0x800001

    :goto_b
    move/from16 v32, v0

    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->boldIndex:I

    if-eq v0, v13, :cond_1a

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move/from16 v33, v4

    goto :goto_c

    :cond_1a
    const/16 v33, 0x0

    :goto_c
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->italicIndex:I

    if-eq v0, v13, :cond_1b

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move/from16 v34, v4

    goto :goto_d

    :cond_1b
    const/16 v34, 0x0

    :goto_d
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->underlineIndex:I

    if-eq v0, v13, :cond_1c

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move/from16 v35, v4

    goto :goto_e

    :cond_1c
    const/16 v35, 0x0

    :goto_e
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->strikeoutIndex:I

    if-eq v0, v13, :cond_1d

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/extractor/text/ssa/SsaStyle;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move/from16 v36, v4

    goto :goto_f

    :cond_1d
    const/16 v36, 0x0

    :goto_f
    iget v0, v10, Landroidx/media3/extractor/text/ssa/SsaStyle$Format;->borderStyleIndex:I

    if-eq v0, v13, :cond_20

    aget-object v0, v14, v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    if-eq v7, v4, :cond_1e

    const/4 v9, 0x3

    if-eq v7, v9, :cond_1e

    const/4 v9, 0x0

    goto :goto_10

    :cond_1e
    move v9, v4

    :goto_10
    if-eqz v9, :cond_1f

    move/from16 v37, v7

    goto :goto_11

    :catch_2
    :cond_1f
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring unknown BorderStyle: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move/from16 v37, v13

    :goto_11
    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v37}, Landroidx/media3/extractor/text/ssa/SsaStyle;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;FZZZZI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Skipping malformed \'Style:\' line: \'"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    const/4 v15, 0x0

    :goto_13
    if-eqz v15, :cond_21

    iget-object v0, v15, Landroidx/media3/extractor/text/ssa/SsaStyle;->name:Ljava/lang/String;

    invoke-interface {v3, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    :goto_14
    const/4 v5, 0x2

    const/16 v6, 0x5b

    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_22
    iput-object v3, v1, Landroidx/media3/extractor/text/ssa/SsaDecoder;->styles:Ljava/util/LinkedHashMap;

    goto/16 :goto_0

    :cond_23
    const-string v3, "[V4 Styles]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v0, "[V4 Styles] are not supported"

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    const-string v3, "[Events]"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_25
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_9
        -0x3d363934 -> :sswitch_8
        -0xb7325a4 -> :sswitch_7
        -0x43a3db2 -> :sswitch_6
        0x2e3a85 -> :sswitch_5
        0x337a8b -> :sswitch_4
        0x15d92cd0 -> :sswitch_3
        0x2dbc6505 -> :sswitch_2
        0x695fa1e3 -> :sswitch_1
        0x76840c8e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
