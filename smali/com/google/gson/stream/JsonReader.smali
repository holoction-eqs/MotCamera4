.class public Lcom/google/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final buffer:[C

.field public final in:Ljava/io/Reader;

.field public lenient:Z

.field public limit:I

.field public lineNumber:I

.field public lineStart:I

.field public pathIndices:[I

.field public pathNames:[Ljava/lang/String;

.field public peeked:I

.field public peekedLong:J

.field public peekedNumberLength:I

.field public peekedString:Ljava/lang/String;

.field public pos:I

.field public stack:[I

.field public stackSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/InputMergerFactory$1;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Landroidx/work/InputMergerFactory$1;-><init>(I)V

    sput-object v0, Landroidx/work/InputMergerFactory$1;->INSTANCE:Landroidx/work/InputMergerFactory$1;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringReader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/4 v3, 0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iput-object p1, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    return-void
.end method


# virtual methods
.method public final beginArray()V
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final beginObject()V
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->push(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final checkLenient()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object p0, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final doPeek()I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/4 v9, 0x0

    const/16 v10, 0x27

    const/16 v11, 0x5d

    const/16 v12, 0x3b

    const/16 v13, 0x2c

    const/4 v14, 0x3

    const/4 v15, 0x6

    iget-object v6, v0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    const/4 v5, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sub-int/2addr v2, v4

    aput v5, v1, v2

    :cond_0
    :goto_0
    const/16 v5, 0xa

    const/4 v9, 0x7

    goto/16 :goto_3

    :cond_1
    if-ne v3, v5, :cond_4

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v13, :cond_0

    if-eq v1, v12, :cond_3

    if-ne v1, v11, :cond_2

    iput v7, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v7

    :cond_2
    const-string v1, "Unterminated array"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v9

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    :cond_4
    const/16 v5, 0x7d

    if-eq v3, v14, :cond_42

    if-ne v3, v8, :cond_5

    move v6, v4

    const/4 v4, 0x2

    goto/16 :goto_1a

    :cond_5
    if-ne v3, v7, :cond_8

    sub-int/2addr v2, v4

    aput v8, v1, v2

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_6
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v6, v1

    const/16 v5, 0x3e

    if-ne v2, v5, :cond_0

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_7
    const-string v1, "Expected \':\'"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v9

    :cond_8
    if-ne v3, v15, :cond_c

    iget-boolean v1, v0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v8

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v2, :cond_9

    invoke-virtual {v0, v8}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v2, v6, v1

    const/16 v9, 0x29

    if-ne v2, v9, :cond_b

    add-int/lit8 v2, v1, 0x1

    aget-char v2, v6, v2

    if-ne v2, v11, :cond_b

    add-int/lit8 v2, v1, 0x2

    aget-char v2, v6, v2

    if-ne v2, v5, :cond_b

    add-int/lit8 v2, v1, 0x3

    aget-char v2, v6, v2

    if-ne v2, v10, :cond_b

    add-int/lit8 v2, v1, 0x4

    aget-char v2, v6, v2

    const/16 v5, 0xa

    if-eq v2, v5, :cond_a

    goto :goto_2

    :cond_a
    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    :cond_b
    :goto_1
    const/16 v5, 0xa

    :goto_2
    iget-object v1, v0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    const/4 v9, 0x7

    aput v9, v1, v2

    :goto_3
    const/4 v1, 0x0

    :goto_4
    const/16 v2, 0x8

    goto :goto_5

    :cond_c
    const/16 v5, 0xa

    const/4 v9, 0x7

    const/4 v1, 0x0

    if-ne v3, v9, :cond_e

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_d

    const/16 v4, 0x11

    goto/16 :goto_1d

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v4

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    :cond_e
    const/16 v2, 0x8

    if-eq v3, v2, :cond_41

    :goto_5
    invoke-virtual {v0, v4}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v9

    const/16 v1, 0x22

    if-eq v9, v1, :cond_40

    if-eq v9, v10, :cond_3f

    if-eq v9, v13, :cond_3b

    if-eq v9, v12, :cond_3b

    const/16 v1, 0x5b

    if-eq v9, v1, :cond_3a

    if-eq v9, v11, :cond_39

    const/16 v1, 0x7b

    if-eq v9, v1, :cond_38

    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v4

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v6, v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_13

    const/16 v2, 0x54

    if-ne v1, v2, :cond_f

    goto :goto_7

    :cond_f
    const/16 v2, 0x66

    if-eq v1, v2, :cond_12

    const/16 v2, 0x46

    if-ne v1, v2, :cond_10

    goto :goto_6

    :cond_10
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_11

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_18

    :cond_11
    const-string v1, "null"

    const-string v2, "NULL"

    const/4 v9, 0x7

    goto :goto_8

    :cond_12
    :goto_6
    const-string v1, "false"

    const-string v2, "FALSE"

    move v9, v15

    goto :goto_8

    :cond_13
    :goto_7
    const-string v1, "true"

    const-string v2, "TRUE"

    move v9, v8

    :goto_8
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    move v10, v4

    :goto_9
    if-ge v10, v3, :cond_16

    iget v11, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v11, v10

    iget v12, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v11, v12, :cond_14

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v0, v11}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v11

    if-nez v11, :cond_14

    goto :goto_a

    :cond_14
    iget v11, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v11, v10

    aget-char v11, v6, v11

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_15

    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_16
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-lt v1, v2, :cond_17

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    :goto_a
    const/4 v9, 0x0

    goto :goto_b

    :cond_19
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iput v9, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    :goto_b
    if-eqz v9, :cond_1a

    return v9

    :cond_1a
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    const-wide/16 v9, 0x0

    move v13, v4

    move-wide v7, v9

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_c
    add-int v5, v1, v11

    if-ne v5, v2, :cond_1d

    array-length v1, v6

    if-ne v11, v1, :cond_1b

    goto/16 :goto_17

    :cond_1b
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_12

    :cond_1c
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_1d
    add-int v5, v1, v11

    aget-char v5, v6, v5

    const/16 v15, 0x2b

    if-eq v5, v15, :cond_33

    const/16 v15, 0x45

    if-eq v5, v15, :cond_31

    const/16 v15, 0x65

    if-eq v5, v15, :cond_31

    const/16 v15, 0x2d

    if-eq v5, v15, :cond_2f

    const/16 v15, 0x2e

    if-eq v5, v15, :cond_2e

    const/16 v15, 0x30

    if-lt v5, v15, :cond_27

    const/16 v15, 0x39

    if-le v5, v15, :cond_1e

    goto :goto_11

    :cond_1e
    if-eq v3, v4, :cond_26

    if-nez v3, :cond_1f

    goto :goto_10

    :cond_1f
    const/4 v15, 0x2

    if-ne v3, v15, :cond_23

    cmp-long v15, v7, v9

    if-nez v15, :cond_20

    goto/16 :goto_17

    :cond_20
    const-wide/16 v16, 0xa

    mul-long v16, v16, v7

    add-int/lit8 v5, v5, -0x30

    int-to-long v4, v5

    sub-long v16, v16, v4

    const-wide v4, -0xcccccccccccccccL

    cmp-long v4, v7, v4

    if-gtz v4, :cond_22

    if-nez v4, :cond_21

    cmp-long v4, v16, v7

    if-gez v4, :cond_21

    goto :goto_d

    :cond_21
    const/4 v4, 0x0

    goto :goto_e

    :cond_22
    :goto_d
    const/4 v4, 0x1

    :goto_e
    and-int/2addr v13, v4

    move-wide/from16 v7, v16

    goto/16 :goto_16

    :cond_23
    if-ne v3, v14, :cond_24

    const/4 v3, 0x4

    goto/16 :goto_16

    :cond_24
    const/4 v4, 0x5

    if-eq v3, v4, :cond_25

    const/4 v4, 0x6

    if-ne v3, v4, :cond_34

    goto :goto_f

    :cond_25
    const/4 v4, 0x6

    :goto_f
    const/4 v3, 0x7

    goto/16 :goto_16

    :cond_26
    :goto_10
    const/4 v4, 0x6

    add-int/lit8 v5, v5, -0x30

    neg-int v3, v5

    int-to-long v7, v3

    const/4 v3, 0x2

    goto :goto_16

    :cond_27
    :goto_11
    invoke-virtual {v0, v5}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-nez v1, :cond_35

    :goto_12
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2c

    if-eqz v13, :cond_2b

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v7, v1

    if-nez v1, :cond_28

    if-eqz v12, :cond_2b

    :cond_28
    cmp-long v1, v7, v9

    if-nez v1, :cond_29

    if-nez v12, :cond_2b

    :cond_29
    if-eqz v12, :cond_2a

    goto :goto_13

    :cond_2a
    neg-long v7, v7

    :goto_13
    iput-wide v7, v0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v11

    iput v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/16 v1, 0xf

    goto :goto_14

    :cond_2b
    const/4 v1, 0x2

    :cond_2c
    if-eq v3, v1, :cond_2d

    const/4 v1, 0x4

    if-eq v3, v1, :cond_2d

    const/4 v5, 0x7

    if-ne v3, v5, :cond_35

    :cond_2d
    iput v11, v0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v1, 0x10

    :goto_14
    move v7, v1

    iput v7, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    goto :goto_18

    :cond_2e
    const/4 v4, 0x2

    const/4 v5, 0x7

    if-ne v3, v4, :cond_35

    move v3, v14

    goto :goto_16

    :cond_2f
    const/4 v4, 0x2

    const/4 v5, 0x7

    if-nez v3, :cond_30

    const/4 v3, 0x1

    const/4 v12, 0x1

    goto :goto_16

    :cond_30
    const/4 v5, 0x5

    if-ne v3, v5, :cond_35

    goto :goto_15

    :cond_31
    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq v3, v4, :cond_32

    const/4 v4, 0x4

    if-ne v3, v4, :cond_35

    :cond_32
    move v3, v5

    goto :goto_16

    :cond_33
    const/4 v5, 0x5

    if-ne v3, v5, :cond_35

    :goto_15
    const/4 v3, 0x6

    :cond_34
    :goto_16
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x1

    const/4 v15, 0x6

    goto/16 :goto_c

    :cond_35
    :goto_17
    const/4 v7, 0x0

    :goto_18
    if-eqz v7, :cond_36

    return v7

    :cond_36
    iget v1, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v6, v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v4, 0xa

    goto/16 :goto_1d

    :cond_37
    const-string v1, "Expected value"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_38
    const/4 v4, 0x1

    goto/16 :goto_1d

    :cond_39
    move v1, v4

    if-ne v3, v1, :cond_3c

    const/4 v5, 0x4

    goto/16 :goto_1c

    :cond_3a
    iput v14, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v14

    :cond_3b
    move v1, v4

    :cond_3c
    if-eq v3, v1, :cond_3e

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3d

    goto :goto_19

    :cond_3d
    const-string v1, "Unexpected value"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3e
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v4, 0x7

    goto/16 :goto_1d

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    move v4, v2

    goto :goto_1d

    :cond_40
    const/16 v4, 0x9

    goto :goto_1d

    :cond_41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    const/4 v4, 0x2

    const/4 v6, 0x1

    :goto_1a
    sub-int/2addr v2, v6

    const/4 v7, 0x4

    aput v7, v1, v2

    const/4 v1, 0x5

    if-ne v3, v1, :cond_46

    invoke-virtual {v0, v6}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v13, :cond_45

    if-eq v1, v12, :cond_44

    if-ne v1, v5, :cond_43

    goto :goto_1d

    :cond_43
    const-string v1, "Unterminated object"

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :cond_45
    const/4 v1, 0x1

    goto :goto_1b

    :cond_46
    move v1, v6

    :goto_1b
    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v2

    const/16 v6, 0x22

    if-eq v2, v6, :cond_4b

    if-eq v2, v10, :cond_4a

    const-string v6, "Expected name"

    if-eq v2, v5, :cond_48

    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v3, v1

    iput v3, v0, Lcom/google/gson/stream/JsonReader;->pos:I

    int-to-char v1, v2

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-eqz v1, :cond_47

    const/16 v4, 0xe

    goto :goto_1d

    :cond_47
    invoke-virtual {v0, v6}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_48
    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_49

    move v5, v4

    :goto_1c
    iput v5, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v5

    :cond_49
    invoke-virtual {v0, v6}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v1

    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    const/16 v4, 0xc

    goto :goto_1d

    :cond_4b
    const/16 v4, 0xd

    :goto_1d
    iput v4, v0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return v4
.end method

.method public final endArray()V
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final endObject()V
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fillBuffer(I)Z
    .locals 7

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    invoke-static {v3, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_0
    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :cond_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    array-length v1, v3

    sub-int/2addr v1, v0

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v4, v3, v0, v1}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    aget-char v5, v3, v2

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v1, p1, :cond_1

    return v4

    :cond_3
    return v2
.end method

.method public final getPath(Z)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    if-ge v1, v2, :cond_4

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    aget v3, v3, v1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v2, 0x3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-eq v3, v2, :cond_0

    const/4 v2, 0x5

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    aget v3, v3, v1

    if-eqz p1, :cond_2

    if-lez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/16 p0, 0x11

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLiteral(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final locationString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->m(Lcom/google/gson/stream/JsonReader;ZLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final nextBoolean()Z
    .locals 4

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr p0, v3

    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextDouble()D
    .locals 6

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_3

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_3
    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lcom/google/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    new-instance v2, Lcom/google/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0
.end method

.method public final nextInt()I
    .locals 7

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_2

    :cond_7
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextLong()J
    .locals 8

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    invoke-direct {v0, v5, v1, v4}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_4

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_2

    :cond_6
    const/16 v0, 0x22

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_4
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-wide v4

    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextName()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextNonWhitespace(Z)I
    .locals 9

    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_2
    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :cond_2
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v4, v0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_9

    :cond_3
    const/16 v6, 0x20

    if-eq v0, v6, :cond_10

    const/16 v6, 0xd

    if-eq v0, v6, :cond_10

    const/16 v6, 0x9

    if-ne v0, v6, :cond_4

    goto/16 :goto_9

    :cond_4
    const/16 v6, 0x2f

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-ne v0, v6, :cond_e

    const/4 v7, 0x2

    if-ne v3, v1, :cond_5

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    if-nez v1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v3, v4, v1

    const/16 v8, 0x2a

    if-eq v3, v8, :cond_7

    if-eq v3, v6, :cond_6

    return v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_3
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v7

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-le v0, v1, :cond_9

    invoke-virtual {p0, v7}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_7

    :cond_9
    :goto_4
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    aget-char v1, v4, v0

    if-ne v1, v5, :cond_a

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_6

    :cond_a
    :goto_5
    if-ge v3, v7, :cond_c

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v3

    aget-char v0, v4, v0

    const-string v1, "*/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_b

    :goto_6
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    if-eqz v2, :cond_d

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v7

    goto/16 :goto_1

    :cond_d
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_e
    const/16 v1, 0x23

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :goto_8
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipToEndOfLine()V

    goto/16 :goto_0

    :cond_f
    return v0

    :cond_10
    :goto_9
    move v0, v3

    goto/16 :goto_2
.end method

.method public final nextNull()V
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextQuotedValue(C)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    if-ge v4, v3, :cond_5

    add-int/lit8 v8, v4, 0x1

    aget-char v4, v7, v4

    if-ne v4, p1, :cond_1

    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v7, v2, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_0
    invoke-virtual {v1, v7, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v9, 0x5c

    if-ne v4, v9, :cond_3

    iput v8, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    sub-int/2addr v8, v2

    sub-int/2addr v8, v5

    if-nez v1, :cond_2

    add-int/lit8 v1, v8, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1, v7, v2, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 v6, 0xa

    if-ne v4, v6, :cond_4

    iget v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v8, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_4
    move v4, v8

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_6
    sub-int v3, v4, v2

    invoke-virtual {v1, v7, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p0, v5}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lcom/google/gson/stream/JsonReader;->peekedLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek$enumunboxing$()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/L$$ExternalSyntheticOutline0;->stringValueOf$4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextUnquotedValue()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    iget-object v6, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    if-ge v4, v5, :cond_2

    add-int/2addr v3, v2

    aget-char v3, v6, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    :cond_2
    array-length v3, v6

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v6, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/String;

    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v6, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v6, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final peek$enumunboxing$()I
    .locals 1

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p0, 0xa

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    const/4 p0, 0x6

    return p0

    :pswitch_4
    const/16 p0, 0x9

    return p0

    :pswitch_5
    const/16 p0, 0x8

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    const/4 p0, 0x4

    return p0

    :pswitch_9
    const/4 p0, 0x3

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final push(I)V
    .locals 3

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget-object v1, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    aput p1, v0, v1

    return-void
.end method

.method public final readEscapeCharacter()C
    .locals 9

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x0

    const-string v3, "Unterminated escape sequence"

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget-object v5, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v5, v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_e

    const/16 v4, 0x22

    if-eq v0, v4, :cond_f

    const/16 v4, 0x27

    if-eq v0, v4, :cond_f

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_f

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_f

    const/16 v4, 0x62

    if-eq v0, v4, :cond_d

    const/16 v4, 0x66

    if-eq v0, v4, :cond_c

    const/16 v7, 0x6e

    if-eq v0, v7, :cond_b

    const/16 v7, 0x72

    if-eq v0, v7, :cond_a

    const/16 v7, 0x74

    if-eq v0, v7, :cond_9

    const/16 v7, 0x75

    if-ne v0, v7, :cond_8

    const/4 v0, 0x4

    add-int/2addr v1, v0

    iget v7, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-le v1, v7, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-char v7, v5, v1

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v8, 0x30

    if-lt v7, v8, :cond_4

    const/16 v8, 0x39

    if-gt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x30

    goto :goto_4

    :cond_4
    const/16 v8, 0x61

    if-lt v7, v8, :cond_5

    if-gt v7, v4, :cond_5

    add-int/lit8 v7, v7, -0x61

    goto :goto_3

    :cond_5
    const/16 v8, 0x41

    if-lt v7, v8, :cond_6

    const/16 v8, 0x46

    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, -0x41

    :goto_3
    add-int/2addr v7, v6

    :goto_4
    add-int/2addr v7, v3

    int-to-char v3, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/String;

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-direct {v2, v5, p0, v0}, Ljava/lang/String;-><init>([CII)V

    const-string p0, "\\u"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return v3

    :cond_8
    const-string v0, "Invalid escape sequence"

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    throw v2

    :cond_9
    const/16 p0, 0x9

    return p0

    :cond_a
    const/16 p0, 0xd

    return p0

    :cond_b
    return v6

    :cond_c
    const/16 p0, 0xc

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_e
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_f
    return v0
.end method

.method public final skipQuotedValue(C)V
    .locals 5

    :goto_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    :goto_1
    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v4, v0

    if-ne v0, p1, :cond_0

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_0
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_1

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->readEscapeCharacter()C

    goto :goto_0

    :cond_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v3, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lcom/google/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final skipToEndOfLine()V
    .locals 4

    :cond_0
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget-object v3, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    aget-char v0, v3, v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/gson/stream/JsonReader;->lineNumber:I

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->lineStart:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method public final skipUnquotedValue()V
    .locals 4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->checkLenient()V

    :cond_2
    :pswitch_1
    iget v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final skipValue()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->doPeek()I

    move-result v2

    :cond_1
    const/16 v3, 0x22

    const/16 v4, 0x27

    const-string v5, "<skipped>"

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    return-void

    :pswitch_2
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->pos:I

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    aput-object v5, v2, v3

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->skipUnquotedValue()V

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_2

    :pswitch_8
    invoke-virtual {p0, v4}, Lcom/google/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_2

    :cond_2
    :goto_0
    :pswitch_9
    iget v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/google/gson/stream/JsonReader;->push(I)V

    goto :goto_1

    :pswitch_b
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/google/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget v3, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v3, v6

    const/4 v4, 0x0

    aput-object v4, v2, v3

    goto :goto_0

    :pswitch_c
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/gson/stream/JsonReader;->push(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_2
    iput v0, p0, Lcom/google/gson/stream/JsonReader;->peeked:I

    if-gtz v1, :cond_0

    iget-object v0, p0, Lcom/google/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lcom/google/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr p0, v6

    aget v1, v0, p0

    add-int/2addr v1, v6

    aput v1, v0, p0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final syntaxError(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/gson/stream/MalformedJsonException;

    invoke-static {p1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
