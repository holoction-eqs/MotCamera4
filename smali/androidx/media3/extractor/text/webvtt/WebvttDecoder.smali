.class public final Landroidx/media3/extractor/text/webvtt/WebvttDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "SourceFile"


# instance fields
.field public final cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

.field public final parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>()V

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    return-void
.end method


# virtual methods
.method public final decode(IZ[B)Landroidx/media3/extractor/text/Subtitle;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget v3, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->$r8$clinit:I

    iget v3, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    const-string v7, "WEBVTT"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_44

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_2
    const/4 v4, -0x1

    move v8, v4

    move v9, v5

    :goto_3
    const/4 v11, 0x2

    if-ne v8, v4, :cond_6

    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    const-string v12, "STYLE"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v8, v11

    goto :goto_3

    :cond_4
    const-string v11, "NOTE"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v6

    goto :goto_3

    :cond_5
    const/4 v8, 0x3

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    if-eqz v8, :cond_43

    if-ne v8, v6, :cond_7

    :goto_4
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_4

    :cond_7
    if-ne v8, v11, :cond_3d

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3c

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    iget-object v8, v0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    iget-object v9, v8, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget v12, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    :goto_5
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3b

    iget-object v13, v1, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget-object v8, v8, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->styleInput:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v13, v14}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    invoke-virtual {v8, v12}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    invoke-static {v8}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v13, v8, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    iget v14, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v13, v14

    const-string/jumbo v14, "{"

    const-string v15, ""

    const/4 v7, 0x5

    if-ge v13, v7, :cond_8

    goto/16 :goto_a

    :cond_8
    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    const-string v13, "::cue"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_a

    :cond_9
    iget v7, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_a

    goto :goto_a

    :cond_a
    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    move-object v7, v15

    goto :goto_b

    :cond_b
    const-string v7, "("

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget v7, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    iget v13, v8, Landroidx/media3/common/util/ParsableByteArray;->limit:I

    move/from16 v16, v5

    :goto_7
    if-ge v7, v13, :cond_d

    if-nez v16, :cond_d

    iget-object v10, v8, Landroidx/media3/common/util/ParsableByteArray;->data:[B

    add-int/lit8 v16, v7, 0x1

    aget-byte v7, v10, v7

    int-to-char v7, v7

    const/16 v10, 0x29

    if-ne v7, v10, :cond_c

    move v7, v6

    goto :goto_8

    :cond_c
    move v7, v5

    :goto_8
    move/from16 v19, v16

    move/from16 v16, v7

    move/from16 v7, v19

    goto :goto_7

    :cond_d
    add-int/lit8 v7, v7, -0x1

    iget v10, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    sub-int/2addr v7, v10

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    const/4 v7, 0x0

    :goto_9
    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    const-string v13, ")"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    :goto_a
    const/4 v7, 0x0

    :cond_f
    :goto_b
    if-eqz v7, :cond_3a

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_21

    :cond_10
    new-instance v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;

    invoke-direct {v10}, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    goto :goto_e

    :cond_11
    const/16 v13, 0x5b

    invoke-virtual {v7, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v4, :cond_13

    sget-object v14, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-virtual {v11, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v11, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetVoice:Ljava/lang/String;

    :cond_12
    invoke-virtual {v7, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_13
    sget v11, Landroidx/media3/common/util/Util;->SDK_INT:I

    const-string v11, "\\."

    invoke-virtual {v7, v11, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v11, v7, v5

    const/16 v13, 0x23

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v4, :cond_14

    invoke-virtual {v11, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetId:Ljava/lang/String;

    goto :goto_c

    :cond_14
    iput-object v11, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetTag:Ljava/lang/String;

    :goto_c
    array-length v11, v7

    if-le v11, v6, :cond_16

    array-length v11, v7

    array-length v13, v7

    if-gt v11, v13, :cond_15

    move v13, v6

    goto :goto_d

    :cond_15
    move v13, v5

    :goto_d
    invoke-static {v13}, Lcom/adobe/xmp/XMPUtils;->checkArgument(Z)V

    invoke-static {v7, v6, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    new-instance v11, Ljava/util/HashSet;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v11, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v11, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->targetClasses:Ljava/util/Set;

    :cond_16
    :goto_e
    move v11, v5

    const/4 v7, 0x0

    :goto_f
    const-string/jumbo v13, "}"

    if-nez v11, :cond_38

    iget v7, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_18

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    goto :goto_10

    :cond_17
    move v14, v5

    goto :goto_11

    :cond_18
    :goto_10
    move v14, v6

    :goto_11
    if-nez v14, :cond_37

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    invoke-static {v8}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseIdentifier(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    goto/16 :goto_1f

    :cond_19
    const-string v4, ":"

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_1f

    :cond_1a
    invoke-static {v8}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->skipWhitespaceAndComments(Landroidx/media3/common/util/ParsableByteArray;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    :goto_12
    const-string v6, ";"

    if-nez v5, :cond_1e

    iget v0, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    move/from16 v17, v5

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    const/4 v0, 0x0

    goto :goto_15

    :cond_1b
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1d

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_13

    :cond_1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v17

    goto :goto_14

    :cond_1d
    :goto_13
    invoke-virtual {v8, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p0

    goto :goto_12

    :cond_1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_36

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto/16 :goto_1d

    :cond_1f
    iget v4, v8, Landroidx/media3/common/util/ParsableByteArray;->position:I

    invoke-static {v8, v9}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseNextToken(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    goto :goto_16

    :cond_20
    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_16
    const-string v4, "color"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v0

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontColor:I

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasFontColor:Z

    goto/16 :goto_1d

    :cond_21
    const/4 v4, 0x1

    const-string v5, "background-color"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v0, v4}, Landroidx/media3/common/util/ColorParser;->parseColorInternal(Ljava/lang/String;Z)I

    move-result v0

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->backgroundColor:I

    iput-boolean v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->hasBackgroundColor:Z

    goto/16 :goto_1d

    :cond_22
    const-string v5, "ruby-position"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    const-string v5, "over"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    goto/16 :goto_1d

    :cond_23
    const-string v4, "under"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x2

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->rubyPosition:I

    move v6, v0

    const/4 v5, 0x1

    goto/16 :goto_20

    :cond_24
    const-string v4, "text-combine-upright"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "all"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    const-string v4, "digits"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_17

    :cond_25
    const/4 v0, 0x0

    goto :goto_18

    :cond_26
    :goto_17
    const/4 v0, 0x1

    :goto_18
    iput-boolean v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->combineUpright:Z

    goto/16 :goto_1d

    :cond_27
    const-string v4, "text-decoration"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "underline"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->underline:I

    move v5, v0

    goto/16 :goto_1e

    :cond_28
    const-string v4, "font-family"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {v0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontFamily:Ljava/lang/String;

    goto/16 :goto_1d

    :cond_29
    const-string v4, "font-weight"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "bold"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v4, 0x1

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->bold:I

    goto/16 :goto_1d

    :cond_2a
    const/4 v4, 0x1

    const-string v5, "font-style"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const-string v5, "italic"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iput v4, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->italic:I

    goto/16 :goto_1d

    :cond_2b
    const-string v4, "font-size"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-static {v0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->FONT_SIZE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2c

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid font-size: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WebvttCssParser"

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1d

    :cond_2c
    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v6, 0x25

    if-eq v0, v6, :cond_31

    const/16 v6, 0xca8

    if-eq v0, v6, :cond_2f

    const/16 v6, 0xe08

    if-eq v0, v6, :cond_2d

    goto :goto_19

    :cond_2d
    const-string v0, "px"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_19

    :cond_2e
    const/4 v0, 0x2

    goto :goto_1a

    :cond_2f
    const-string v0, "em"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_19

    :cond_30
    const/4 v0, 0x1

    goto :goto_1a

    :cond_31
    const-string v0, "%"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    :goto_19
    const/4 v0, -0x1

    goto :goto_1a

    :cond_32
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_35

    const/4 v5, 0x1

    if-eq v0, v5, :cond_34

    const/4 v6, 0x2

    if-ne v0, v6, :cond_33

    iput v5, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    goto :goto_1c

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_34
    const/4 v6, 0x2

    move v0, v6

    goto :goto_1b

    :cond_35
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v0, 0x3

    :goto_1b
    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSizeUnit:I

    :goto_1c
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, v10, Landroidx/media3/extractor/text/webvtt/WebvttCssStyle;->fontSize:F

    goto :goto_20

    :cond_36
    :goto_1d
    const/4 v5, 0x1

    :goto_1e
    const/4 v6, 0x2

    goto :goto_20

    :cond_37
    :goto_1f
    move v5, v6

    goto :goto_1e

    :goto_20
    move-object/from16 v0, p0

    move v6, v5

    move-object v7, v11

    move v11, v14

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto/16 :goto_f

    :cond_38
    move v5, v6

    const/4 v6, 0x2

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    move-object/from16 v0, p0

    move v11, v6

    const/4 v4, -0x1

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_3a
    :goto_21
    move v5, v6

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_24

    :cond_3b
    move v5, v6

    move-object/from16 v0, p0

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_3c
    new-instance v0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string v1, "A style block was found after the first cue."

    invoke-direct {v0, v1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    move v5, v6

    const/4 v0, 0x3

    if-ne v8, v0, :cond_42

    sget-object v0, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    goto :goto_22

    :cond_3e
    sget-object v4, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v7, 0x0

    invoke-static {v7, v6, v1, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v0

    move-object v7, v0

    goto :goto_23

    :cond_3f
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_40

    goto :goto_22

    :cond_40
    invoke-virtual {v4, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v1, v2}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Ljava/lang/String;Ljava/util/regex/Matcher;Landroidx/media3/common/util/ParsableByteArray;Ljava/util/ArrayList;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object v7

    goto :goto_23

    :cond_41
    :goto_22
    const/4 v7, 0x0

    :goto_23
    if-eqz v7, :cond_42

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    :goto_24
    move-object/from16 v0, p0

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_43
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;

    invoke-direct {v0, v3}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/ArrayList;)V

    return-object v0

    :cond_44
    :try_start_1
    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected WEBVTT. Got "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Landroidx/media3/common/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Landroidx/media3/common/ParserException;)V

    throw v1
.end method
