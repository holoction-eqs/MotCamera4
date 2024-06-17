.class public final Lcom/google/zxing/client/result/BizcardResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/zxing/client/result/BizcardResultParser;->$r8$classId:I

    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/google/zxing/Result;)Landroidx/transition/ViewOverlayApi14;
    .locals 3

    iget v0, p0, Lcom/google/zxing/client/result/BizcardResultParser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p0

    return-object p0

    .line 2
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object p0

    return-object p0

    .line 3
    :goto_0
    iget-object p0, p1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    .line 4
    check-cast p0, Ljava/lang/String;

    const-string p1, "MEBKM:"

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "TITLE:"

    const/16 v0, 0x3b

    const/4 v1, 0x1

    .line 6
    invoke-static {p1, p0, v0, v1}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object p1

    const-string v2, "URL:"

    .line 7
    invoke-static {v2, p0, v0, v1}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 8
    aget-object p0, p0, v0

    invoke-static {p0}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/zxing/client/result/BizcardResultParser;->$r8$classId:I

    const/16 v1, 0x20

    const/16 v2, 0x3b

    const-string v3, "N:"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 9
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "BIZCARD:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    .line 10
    :cond_0
    invoke-static {v3, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    const-string v6, "X:"

    invoke-static {v6, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    if-nez v3, :cond_1

    move-object v3, v6

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string v1, "T:"

    .line 12
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v20

    const-string v1, "C:"

    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v18

    const-string v1, "A:"

    .line 13
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v16

    const-string v1, "B:"

    .line 14
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v6, "M:"

    invoke-static {v6, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v6

    const-string v7, "F:"

    invoke-static {v7, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    const-string v8, "E:"

    invoke-static {v8, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v2, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v3, :cond_3

    move-object v3, v4

    goto :goto_1

    .line 16
    :cond_3
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 17
    new-instance v5, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz v1, :cond_4

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    move-object v10, v4

    goto :goto_2

    :cond_7
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v10, v1

    :goto_2
    const/4 v11, 0x0

    if-nez v0, :cond_8

    goto :goto_3

    .line 18
    :cond_8
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v12, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v6, v2

    move-object v7, v3

    .line 19
    invoke-direct/range {v6 .. v22}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v4, v2

    :goto_4
    return-object v4

    .line 20
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "MECARD:"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    goto/16 :goto_8

    .line 21
    :cond_9
    invoke-static {v3, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    goto/16 :goto_8

    :cond_a
    const/4 v6, 0x0

    .line 22
    aget-object v3, v3, v6

    const/16 v7, 0x2c

    .line 23
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    const-string v1, "SOUND:"

    .line 24
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    const-string v1, "TEL:"

    .line 25
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v11

    const-string v1, "EMAIL:"

    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v13

    const-string v1, "NOTE:"

    .line 26
    invoke-static {v1, v0, v2, v6}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v16

    const-string v1, "ADR:"

    .line 27
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v17

    const-string v1, "BDAY:"

    .line 28
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x8

    if-ne v8, v7, :cond_c

    sget-object v7, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_c

    move v6, v5

    :cond_c
    if-nez v6, :cond_d

    move-object/from16 v20, v4

    goto :goto_6

    :cond_d
    move-object/from16 v20, v1

    :goto_6
    const-string v1, "URL:"

    .line 30
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v22

    const-string v1, "ORG:"

    .line 31
    invoke-static {v1, v0, v2, v5}, Lcom/google/zxing/client/result/ResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v19

    .line 32
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    if-nez v3, :cond_e

    goto :goto_7

    .line 33
    :cond_e
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    :goto_7
    move-object v8, v4

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v7, v0

    .line 34
    invoke-direct/range {v7 .. v23}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object v4, v0

    :goto_8
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
