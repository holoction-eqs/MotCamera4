.class public final Landroidx/media3/extractor/text/subrip/SubripDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# static fields
.field public static final SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

.field public static final SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;


# instance fields
.field public final tags:Ljava/util/ArrayList;

.field public final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    return-void
.end method

.method public static parseTimecode(Ljava/util/regex/Matcher;I)J
    .locals 9

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3c

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v1

    mul-long/2addr v5, v1

    mul-long/2addr v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v1

    mul-long/2addr v7, v3

    add-long/2addr v7, v5

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v3

    add-long/2addr v0, v7

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_1
    mul-long/2addr v0, v3

    return-wide v0
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 36

    move-object/from16 v0, p0

    const-string v1, "SubripDecoder"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/adobe/xmp/impl/ParseState;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Lcom/adobe/xmp/impl/ParseState;-><init>(I)V

    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v6, p1

    move-object/from16 v7, p3

    invoke-direct {v5, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUtfCharsetFromBom()Ljava/nio/charset/Charset;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_0
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    const-string v0, "Unexpected end"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2
    sget-object v10, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TIMING_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {v10, v9}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    const/4 v7, 0x6

    invoke-static {v10, v7}, Landroidx/media3/extractor/text/subrip/SubripDecoder;->parseTimecode(Ljava/util/regex/Matcher;I)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/adobe/xmp/impl/ParseState;->add(J)V

    iget-object v10, v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->textBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v11, v0, Landroidx/media3/extractor/text/subrip/SubripDecoder;->tags:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    :goto_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_3

    const-string v13, "<br>"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroidx/media3/extractor/text/subrip/SubripDecoder;->SUBRIP_TAG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    move v14, v8

    :goto_2
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    sub-int v7, v16, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int v8, v7, v15

    const-string v4, ""

    invoke-virtual {v13, v7, v8, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v14, v15

    const/4 v4, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableByteArray;->readLine(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x2

    const/4 v7, 0x6

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "\\{\\\\an[1-9]\\}"

    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_4
    const/16 v34, 0x0

    const/16 v21, 0x0

    const v30, -0x800001

    const/high16 v33, -0x80000000

    const/16 v31, 0x0

    const/high16 v32, -0x1000000

    if-nez v7, :cond_8

    new-instance v4, Landroidx/media3/common/text/Cue;

    move-object/from16 v17, v4

    const/high16 v24, -0x80000000

    move/from16 v23, v24

    move/from16 v33, v24

    move/from16 v27, v24

    move/from16 v26, v24

    const/16 v34, 0x0

    move-object/from16 v19, v21

    move-object/from16 v20, v21

    move/from16 v22, v30

    move/from16 v25, v30

    move/from16 v28, v30

    move/from16 v29, v30

    invoke-direct/range {v17 .. v34}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 v35, v5

    const/4 v9, 0x2

    goto/16 :goto_d

    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string/jumbo v14, "{\\an9}"

    const-string/jumbo v15, "{\\an8}"

    const-string/jumbo v8, "{\\an7}"

    const-string/jumbo v10, "{\\an6}"

    const-string/jumbo v11, "{\\an5}"

    const-string/jumbo v12, "{\\an4}"

    const-string/jumbo v13, "{\\an3}"

    const-string/jumbo v9, "{\\an2}"

    const-string/jumbo v0, "{\\an1}"

    const/16 v23, -0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x5

    goto :goto_6

    :sswitch_1
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v4, 0x8

    goto :goto_6

    :sswitch_2
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    goto :goto_6

    :sswitch_3
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x4

    goto :goto_6

    :sswitch_4
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x7

    goto :goto_6

    :sswitch_5
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x3

    goto :goto_6

    :sswitch_7
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x6

    goto :goto_6

    :sswitch_8
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move/from16 v4, v23

    :goto_6
    move-object/from16 v35, v5

    if-eqz v4, :cond_b

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    const/4 v5, 0x2

    if-eq v4, v5, :cond_b

    const/4 v5, 0x3

    if-eq v4, v5, :cond_a

    const/4 v5, 0x4

    if-eq v4, v5, :cond_a

    const/4 v5, 0x5

    if-eq v4, v5, :cond_a

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    const/4 v4, 0x2

    goto :goto_7

    :cond_b
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    goto :goto_8

    :sswitch_9
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x5

    goto :goto_9

    :sswitch_a
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x4

    goto :goto_9

    :sswitch_b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x3

    goto :goto_9

    :sswitch_c
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v7, 0x8

    goto :goto_9

    :sswitch_d
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x7

    goto :goto_9

    :sswitch_e
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x6

    goto :goto_9

    :sswitch_f
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x2

    goto :goto_9

    :sswitch_10
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x1

    goto :goto_9

    :sswitch_11
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v7, v23

    :goto_9
    if-eqz v7, :cond_e

    const/4 v0, 0x1

    if-eq v7, v0, :cond_e

    const/4 v0, 0x2

    if-eq v7, v0, :cond_e

    const/4 v0, 0x3

    if-eq v7, v0, :cond_d

    const/4 v0, 0x4

    if-eq v7, v0, :cond_d

    const/4 v0, 0x5

    if-eq v7, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    goto :goto_a

    :cond_e
    const/4 v0, 0x2

    :goto_a
    const v5, 0x3f6b851f    # 0.92f

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3da3d70a    # 0.08f

    if-eqz v4, :cond_11

    const/4 v9, 0x1

    if-eq v4, v9, :cond_10

    const/4 v9, 0x2

    if-ne v4, v9, :cond_f

    move/from16 v25, v5

    goto :goto_b

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    move/from16 v25, v7

    goto :goto_b

    :cond_11
    move/from16 v25, v8

    :goto_b
    if-eqz v0, :cond_14

    const/4 v9, 0x1

    if-eq v0, v9, :cond_13

    const/4 v9, 0x2

    if-ne v0, v9, :cond_12

    move/from16 v22, v5

    goto :goto_c

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_13
    const/4 v9, 0x2

    move/from16 v22, v7

    goto :goto_c

    :cond_14
    const/4 v9, 0x2

    move/from16 v22, v8

    :goto_c
    const/16 v23, 0x0

    new-instance v5, Landroidx/media3/common/text/Cue;

    move-object/from16 v17, v5

    const/16 v20, 0x0

    move-object/from16 v21, v20

    move-object/from16 v19, v20

    const v29, -0x800001

    move/from16 v28, v29

    move/from16 v30, v29

    const/16 v31, 0x0

    const/high16 v32, -0x1000000

    move/from16 v24, v0

    move/from16 v26, v4

    move/from16 v27, v33

    invoke-direct/range {v17 .. v34}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object v4, v5

    :goto_d
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_15
    move v9, v4

    move-object/from16 v35, v5

    const-string v0, "Skipping invalid timing: "

    :goto_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_0
    move v9, v4

    move-object/from16 v35, v5

    const-string v0, "Skipping invalid index: "

    goto :goto_e

    :goto_f
    move-object/from16 v0, p0

    move v4, v9

    move-object/from16 v5, v35

    goto/16 :goto_0

    :cond_16
    :goto_10
    move v0, v8

    new-array v0, v0, [Landroidx/media3/common/text/Cue;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/text/Cue;

    iget-object v1, v3, Lcom/adobe/xmp/impl/ParseState;->str:Ljava/lang/Object;

    check-cast v1, [J

    iget v2, v3, Lcom/adobe/xmp/impl/ParseState;->pos:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    new-instance v2, Landroidx/media3/extractor/text/ssa/SsaSubtitle;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0, v1}, Landroidx/media3/extractor/text/ssa/SsaSubtitle;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method
