.class public final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/client/result/TelResultParser;->$r8$classId:I

    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static addNumberVia(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "via="

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v3, v0

    move v2, v1

    :goto_0
    const/4 v4, 0x3

    if-gt v2, v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    invoke-static {v5, p1, v6, v1}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return-object v0

    :cond_2
    sget-object p0, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Landroidx/transition/ViewOverlayApi14;
    .locals 34

    move-object/from16 v0, p1

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/4 v3, 0x2

    move-object/from16 v4, p0

    iget v5, v4, Lcom/google/zxing/client/result/TelResultParser;->$r8$classId:I

    const/16 v6, 0x3b

    const/16 v7, 0x3a

    const/16 v8, 0xc

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x3

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v2, 0x1

    const/16 v16, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1c

    .line 1
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "SUMMARY"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "DTSTART"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "DTEND"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v1, "DURATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "LOCATION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v1, "ORGANIZER"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MAILTO:"

    const-string v4, "mailto:"

    if-eqz v1, :cond_3

    .line 2
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object/from16 v23, v1

    const-string v1, "ATTENDEE"

    .line 3
    invoke-static {v1, v0, v2, v15}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v7, v5, [Ljava/lang/String;

    move v8, v15

    :goto_0
    if-ge v8, v5, :cond_6

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    move-object/from16 v7, v16

    :cond_6
    if-eqz v7, :cond_9

    move v1, v15

    .line 4
    :goto_2
    array-length v5, v7

    if-ge v1, v5, :cond_9

    aget-object v5, v7, v1

    if-eqz v5, :cond_8

    .line 5
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    :cond_8
    aput-object v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    const-string v1, "DESCRIPTION"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v1, "GEO"

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v26, v0

    move-wide/from16 v28, v26

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_b

    goto :goto_4

    :cond_b
    :try_start_0
    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v28, v0

    move-wide/from16 v26, v3

    :goto_3
    :try_start_1
    new-instance v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    move-object/from16 v17, v0

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v29}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v16, v0

    :catch_0
    :goto_4
    return-object v16

    .line 7
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "urlto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "URLTO:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {v0, v7, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_d

    goto :goto_6

    :cond_d
    if-gt v1, v11, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    :goto_5
    move-object/from16 v3, v16

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v1, v0, v3}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_6
    return-object v16

    .line 8
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "smtp:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "SMTP:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_11

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_10

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_10
    move-object v1, v2

    :goto_7
    move-object v5, v1

    move-object/from16 v6, v16

    goto :goto_8

    :cond_11
    move-object/from16 v5, v16

    move-object v6, v5

    :goto_8
    new-instance v16, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-object v16

    .line 9
    :pswitch_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v0

    return-object v0

    .line 10
    :pswitch_4
    invoke-virtual/range {p0 .. p1}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v0

    return-object v0

    .line 11
    :pswitch_5
    iget-object v4, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    .line 12
    check-cast v4, Lcom/google/zxing/BarcodeFormat;

    .line 13
    sget-object v5, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq v4, v5, :cond_12

    if-eq v4, v6, :cond_12

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq v4, v5, :cond_12

    if-eq v4, v1, :cond_12

    goto/16 :goto_d

    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_13

    sget-object v1, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_a

    :cond_13
    move v1, v15

    :goto_a
    if-nez v1, :cond_14

    goto :goto_d

    :cond_14
    if-ne v4, v6, :cond_16

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v9, :cond_16

    sget v1, Lcom/google/zxing/oned/UPCEReader;->$r8$clinit:I

    new-array v1, v11, [C

    .line 16
    invoke-virtual {v0, v2, v10, v1, v15}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v4, v1, v13

    const-string v5, "00000"

    const-string v6, "0000"

    packed-switch v4, :pswitch_data_1

    invoke-virtual {v2, v1, v15, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_6
    invoke-virtual {v2, v1, v15, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v1, v1, v14

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_7
    invoke-virtual {v2, v1, v15, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v12, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_b

    :pswitch_8
    invoke-virtual {v2, v1, v15, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1, v3, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v9, :cond_15

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_16
    move-object v1, v0

    .line 17
    :goto_c
    new-instance v2, Lcom/google/zxing/client/result/ProductParsedResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v2

    :goto_d
    return-object v16

    .line 18
    :pswitch_9
    iget-object v2, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    .line 19
    check-cast v2, Lcom/google/zxing/BarcodeFormat;

    if-eq v2, v1, :cond_17

    goto :goto_e

    .line 20
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_18

    goto :goto_e

    :cond_18
    const-string v1, "978"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "979"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_e

    :cond_19
    new-instance v1, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v1, v0}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_e
    return-object v16

    .line 21
    :pswitch_a
    iget-object v1, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    .line 22
    check-cast v1, Lcom/google/zxing/BarcodeFormat;

    .line 23
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    if-eq v1, v4, :cond_1a

    goto/16 :goto_16

    :cond_1a
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v4, v15

    move-object/from16 v19, v16

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    :goto_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_49

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/TelResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1b

    goto/16 :goto_16

    :cond_1b
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move v3, v15

    :goto_10
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1d

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_1c

    invoke-static {v3, v7}, Lcom/google/zxing/client/result/TelResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1d

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_1c
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_11
    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x8

    goto :goto_10

    :cond_1d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0x600

    if-eq v6, v7, :cond_46

    const/16 v7, 0x601

    if-eq v6, v7, :cond_44

    const/16 v7, 0x61f

    if-eq v6, v7, :cond_42

    const/16 v7, 0x620

    if-eq v6, v7, :cond_40

    const/16 v7, 0x622

    if-eq v6, v7, :cond_3e

    const/16 v7, 0x624

    if-eq v6, v7, :cond_3c

    const/16 v7, 0x626

    if-eq v6, v7, :cond_3a

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    packed-switch v6, :pswitch_data_4

    packed-switch v6, :pswitch_data_5

    goto/16 :goto_12

    :pswitch_b
    const-string v6, "3933"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_12

    :cond_1e
    const/16 v6, 0x22

    goto/16 :goto_13

    :pswitch_c
    const-string v6, "3932"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto/16 :goto_12

    :cond_1f
    const/16 v6, 0x21

    goto/16 :goto_13

    :pswitch_d
    const-string v6, "3931"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_12

    :cond_20
    const/16 v6, 0x20

    goto/16 :goto_13

    :pswitch_e
    const-string v6, "3930"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_12

    :cond_21
    const/16 v6, 0x1f

    goto/16 :goto_13

    :pswitch_f
    const-string v6, "3923"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_12

    :cond_22
    const/16 v6, 0x1e

    goto/16 :goto_13

    :pswitch_10
    const-string v6, "3922"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_12

    :cond_23
    const/16 v6, 0x1d

    goto/16 :goto_13

    :pswitch_11
    const-string v6, "3921"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto/16 :goto_12

    :cond_24
    const/16 v6, 0x1c

    goto/16 :goto_13

    :pswitch_12
    const-string v6, "3920"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto/16 :goto_12

    :cond_25
    const/16 v6, 0x1b

    goto/16 :goto_13

    :pswitch_13
    const-string v6, "3209"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_12

    :cond_26
    const/16 v6, 0x1a

    goto/16 :goto_13

    :pswitch_14
    const-string v6, "3208"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto/16 :goto_12

    :cond_27
    const/16 v6, 0x19

    goto/16 :goto_13

    :pswitch_15
    const-string v6, "3207"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto/16 :goto_12

    :cond_28
    const/16 v6, 0x18

    goto/16 :goto_13

    :pswitch_16
    const-string v6, "3206"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto/16 :goto_12

    :cond_29
    const/16 v6, 0x17

    goto/16 :goto_13

    :pswitch_17
    const-string v6, "3205"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto/16 :goto_12

    :cond_2a
    const/16 v6, 0x16

    goto/16 :goto_13

    :pswitch_18
    const-string v6, "3204"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto/16 :goto_12

    :cond_2b
    const/16 v6, 0x15

    goto/16 :goto_13

    :pswitch_19
    const-string v6, "3203"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    goto/16 :goto_12

    :cond_2c
    const/16 v6, 0x14

    goto/16 :goto_13

    :pswitch_1a
    const-string v6, "3202"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    goto/16 :goto_12

    :cond_2d
    const/16 v6, 0x13

    goto/16 :goto_13

    :pswitch_1b
    const-string v6, "3201"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto/16 :goto_12

    :cond_2e
    const/16 v6, 0x12

    goto/16 :goto_13

    :pswitch_1c
    const-string v6, "3200"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    goto/16 :goto_12

    :cond_2f
    const/16 v6, 0x11

    goto/16 :goto_13

    :pswitch_1d
    const-string v6, "3109"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    goto/16 :goto_12

    :cond_30
    const/16 v6, 0x10

    goto/16 :goto_13

    :pswitch_1e
    const-string v6, "3108"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_12

    :cond_31
    const/16 v6, 0xf

    goto/16 :goto_13

    :pswitch_1f
    const-string v6, "3107"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto/16 :goto_12

    :cond_32
    const/16 v6, 0xe

    goto/16 :goto_13

    :pswitch_20
    const-string v6, "3106"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    goto/16 :goto_12

    :cond_33
    const/16 v6, 0xd

    goto/16 :goto_13

    :pswitch_21
    const-string v6, "3105"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    goto/16 :goto_12

    :cond_34
    const/16 v6, 0xc

    goto/16 :goto_13

    :pswitch_22
    const-string v6, "3104"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    goto/16 :goto_12

    :cond_35
    const/16 v6, 0xb

    goto/16 :goto_13

    :pswitch_23
    const-string v6, "3103"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_36

    goto/16 :goto_12

    :cond_36
    const/16 v6, 0xa

    goto/16 :goto_13

    :pswitch_24
    const-string v6, "3102"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    goto/16 :goto_12

    :cond_37
    const/16 v6, 0x9

    goto/16 :goto_13

    :pswitch_25
    const-string v6, "3101"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    goto/16 :goto_12

    :cond_38
    const/16 v6, 0x8

    goto/16 :goto_13

    :pswitch_26
    const-string v6, "3100"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_12

    :cond_39
    move v6, v10

    goto :goto_13

    :cond_3a
    const-string v6, "17"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto :goto_12

    :cond_3b
    move v6, v11

    goto :goto_13

    :cond_3c
    const-string v6, "15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_12

    :cond_3d
    move v6, v13

    goto :goto_13

    :cond_3e
    const-string v6, "13"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    goto :goto_12

    :cond_3f
    move v6, v14

    goto :goto_13

    :cond_40
    const-string v6, "11"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    goto :goto_12

    :cond_41
    move v6, v12

    goto :goto_13

    :cond_42
    const-string v6, "10"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    goto :goto_12

    :cond_43
    const/4 v6, 0x2

    goto :goto_13

    :cond_44
    const-string v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    goto :goto_12

    :cond_45
    move v6, v2

    goto :goto_13

    :cond_46
    const-string v6, "00"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    :goto_12
    const/4 v6, -0x1

    goto :goto_13

    :cond_47
    move v6, v15

    :goto_13
    packed-switch v6, :pswitch_data_6

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :pswitch_27
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v14, :cond_48

    goto :goto_16

    :cond_48
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual {v3, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_15

    :pswitch_28
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v28, v3

    goto :goto_15

    :pswitch_29
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LB"

    goto :goto_14

    :pswitch_2a
    invoke-virtual {v5, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KG"

    :goto_14
    move-object/from16 v27, v5

    move-object/from16 v26, v6

    move-object/from16 v25, v3

    goto :goto_15

    :pswitch_2b
    move-object/from16 v24, v3

    goto :goto_15

    :pswitch_2c
    move-object/from16 v23, v3

    goto :goto_15

    :pswitch_2d
    move-object/from16 v22, v3

    goto :goto_15

    :pswitch_2e
    move-object/from16 v21, v3

    goto :goto_15

    :pswitch_2f
    move-object/from16 v19, v3

    goto :goto_15

    :pswitch_30
    move-object/from16 v20, v3

    :goto_15
    :pswitch_31
    const/4 v3, 0x2

    const/16 v8, 0xc

    const/16 v9, 0x8

    goto/16 :goto_f

    :cond_49
    new-instance v16, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object/from16 v17, v16

    move-object/from16 v18, v0

    move-object/from16 v31, v1

    invoke-direct/range {v17 .. v31}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_16
    return-object v16

    .line 26
    :pswitch_32
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_19

    :cond_4a
    const-string v1, "NAME1:"

    const/16 v3, 0xd

    invoke-static {v1, v0, v3, v2}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v4, "NAME2:"

    invoke-static {v4, v0, v3, v2}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v20

    const-string v4, "TEL"

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const-string v4, "MAIL"

    invoke-static {v4, v0}, Lcom/google/zxing/client/result/TelResultParser;->matchMultipleValuePrefix(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const-string v4, "MEMORY:"

    invoke-static {v4, v0, v3, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v26

    const-string v4, "ADD:"

    invoke-static {v4, v0, v3, v2}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    move-object/from16 v27, v16

    goto :goto_17

    :cond_4b
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    :goto_17
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v1, :cond_4c

    goto :goto_18

    .line 27
    :cond_4c
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v16

    :goto_18
    move-object/from16 v18, v16

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v17, v0

    .line 28
    invoke-direct/range {v17 .. v33}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v16, v0

    :cond_4d
    :goto_19
    return-object v16

    .line 29
    :pswitch_33
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "TEL:"

    if-nez v1, :cond_4e

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_1b

    :cond_4e
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_4f
    const/16 v1, 0x3f

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_50

    invoke-virtual {v0, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_50
    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    new-instance v1, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-direct {v1, v0}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v1

    :goto_1b
    return-object v16

    .line 30
    :goto_1c
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_1e

    :cond_51
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S:"

    invoke-static {v1, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_1e

    :cond_52
    const-string v2, "P:"

    invoke-static {v2, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    const-string v3, "T:"

    invoke-static {v3, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_53

    const-string v3, "nopass"

    :cond_53
    const-string v4, "PH2:"

    invoke-static {v4, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    const-string v5, "H:"

    invoke-static {v5, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_55

    if-nez v4, :cond_54

    const-string v4, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    const-string v4, "false"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    :cond_54
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1d

    :cond_55
    move v4, v15

    :goto_1d
    const-string v5, "I:"

    invoke-static {v5, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    const-string v5, "A:"

    invoke-static {v5, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    const-string v5, "E:"

    invoke-static {v5, v0, v6, v15}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    new-instance v0, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v16, v0

    :cond_56
    :goto_1e
    return-object v16

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_33
        :pswitch_32
        :pswitch_a
        :pswitch_9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17ecde
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17f09f
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x180b24
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x180b43
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_31
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method public final parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 6

    iget p0, p0, Lcom/google/zxing/client/result/TelResultParser;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_5

    .line 31
    :pswitch_0
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "sms:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "SMS:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mms:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "MMS:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p0}, Lcom/google/zxing/client/result/ResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "subject"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "body"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move v0, v2

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const/16 v3, 0x3f

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, -0x1

    :goto_3
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2c

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-le v5, v2, :cond_4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/google/zxing/client/result/TelResultParser;->addNumberVia(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    move v2, v5

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v3, p0}, Lcom/google/zxing/client/result/TelResultParser;->addNumberVia(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    new-instance p0, Lcom/google/zxing/client/result/SMSParsedResult;

    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->EMPTY_STR_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    :goto_4
    return-object v1

    .line 32
    :goto_5
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "smsto:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "SMSTO:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "mmsto:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "MMSTO:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_6

    :cond_5
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-ltz p1, :cond_6

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_6
    new-instance p1, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-direct {p1, p0, v1}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    :goto_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
