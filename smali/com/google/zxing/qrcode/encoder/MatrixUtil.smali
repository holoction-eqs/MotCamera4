.class public abstract Lcom/google/zxing/qrcode/encoder/MatrixUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final POSITION_ADJUSTMENT_PATTERN:[[I

.field public static final POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

.field public static final POSITION_DETECTION_PATTERN:[[I

.field public static final TYPE_INFO_COORDINATES:[[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 17

    const/4 v0, 0x7

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_6

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    new-array v1, v8, [[I

    filled-new-array {v4, v4, v4, v4, v4}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v4, v3, v3, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v4, v3, v4, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v4, v3, v3, v3, v4}, [I

    move-result-object v2

    aput-object v2, v1, v6

    filled-new-array {v4, v4, v4, v4, v4}, [I

    move-result-object v2

    aput-object v2, v1, v7

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    const/16 v1, 0x28

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v4

    new-array v2, v0, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v0, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

    new-array v2, v0, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v0, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v8

    new-array v2, v0, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v9

    new-array v2, v0, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v0

    new-array v2, v0, [I

    fill-array-data v2, :array_f

    const/16 v10, 0x8

    aput-object v2, v1, v10

    new-array v2, v0, [I

    fill-array-data v2, :array_10

    const/16 v11, 0x9

    aput-object v2, v1, v11

    new-array v2, v0, [I

    fill-array-data v2, :array_11

    const/16 v12, 0xa

    aput-object v2, v1, v12

    new-array v2, v0, [I

    fill-array-data v2, :array_12

    const/16 v13, 0xb

    aput-object v2, v1, v13

    new-array v2, v0, [I

    fill-array-data v2, :array_13

    const/16 v14, 0xc

    aput-object v2, v1, v14

    new-array v2, v0, [I

    fill-array-data v2, :array_14

    const/16 v15, 0xd

    aput-object v2, v1, v15

    new-array v2, v0, [I

    fill-array-data v2, :array_15

    const/16 v15, 0xe

    aput-object v2, v1, v15

    new-array v2, v0, [I

    fill-array-data v2, :array_16

    const/16 v15, 0xf

    aput-object v2, v1, v15

    new-array v2, v0, [I

    fill-array-data v2, :array_17

    const/16 v16, 0x10

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_18

    const/16 v16, 0x11

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_19

    const/16 v16, 0x12

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1a

    const/16 v16, 0x13

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1b

    const/16 v16, 0x14

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1c

    const/16 v16, 0x15

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1d

    const/16 v16, 0x16

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1e

    const/16 v16, 0x17

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_1f

    const/16 v16, 0x18

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_20

    const/16 v16, 0x19

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_21

    const/16 v16, 0x1a

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_22

    const/16 v16, 0x1b

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_23

    const/16 v16, 0x1c

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_24

    const/16 v16, 0x1d

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_25

    const/16 v16, 0x1e

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_26

    const/16 v16, 0x1f

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_27

    const/16 v16, 0x20

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_28

    const/16 v16, 0x21

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_29

    const/16 v16, 0x22

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_2a

    const/16 v16, 0x23

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_2b

    const/16 v16, 0x24

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_2c

    const/16 v16, 0x25

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_2d

    const/16 v16, 0x26

    aput-object v2, v1, v16

    new-array v2, v0, [I

    fill-array-data v2, :array_2e

    const/16 v16, 0x27

    aput-object v2, v1, v16

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    new-array v1, v15, [[I

    filled-new-array {v10, v3}, [I

    move-result-object v2

    aput-object v2, v1, v3

    filled-new-array {v10, v4}, [I

    move-result-object v2

    aput-object v2, v1, v4

    filled-new-array {v10, v5}, [I

    move-result-object v2

    aput-object v2, v1, v5

    filled-new-array {v10, v6}, [I

    move-result-object v2

    aput-object v2, v1, v6

    filled-new-array {v10, v7}, [I

    move-result-object v2

    aput-object v2, v1, v7

    filled-new-array {v10, v8}, [I

    move-result-object v2

    aput-object v2, v1, v8

    filled-new-array {v10, v0}, [I

    move-result-object v2

    aput-object v2, v1, v9

    filled-new-array {v10, v10}, [I

    move-result-object v2

    aput-object v2, v1, v0

    filled-new-array {v0, v10}, [I

    move-result-object v0

    aput-object v0, v1, v10

    filled-new-array {v8, v10}, [I

    move-result-object v0

    aput-object v0, v1, v11

    filled-new-array {v7, v10}, [I

    move-result-object v0

    aput-object v0, v1, v12

    filled-new-array {v6, v10}, [I

    move-result-object v0

    aput-object v0, v1, v13

    filled-new-array {v5, v10}, [I

    move-result-object v0

    aput-object v0, v1, v14

    filled-new-array {v4, v10}, [I

    move-result-object v0

    const/16 v2, 0xd

    aput-object v0, v1, v2

    filled-new-array {v3, v10}, [I

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x12
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x1a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x1e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x16
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x18
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1a
        0x2e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1c
        0x32
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x36
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x20
        0x3a
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x22
        0x3e
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
        -0x1
        -0x1
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        -0x1
        -0x1
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        -0x1
        -0x1
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        -0x1
        -0x1
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        -0x1
        -0x1
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        -0x1
        -0x1
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        -0x1
        -0x1
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
        -0x1
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        -0x1
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
        -0x1
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
        -0x1
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        -0x1
    .end array-data

    :array_28
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
        -0x1
    .end array-data

    :array_29
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_2c
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_2d
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_2e
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method public static buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    iget-object v3, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [[B

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, -0x1

    if-ge v7, v5, :cond_0

    aget-object v9, v4, v7

    invoke-static {v9, v8}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v4, v4, v6

    array-length v4, v4

    invoke-static {v6, v6, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iget v5, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    sub-int v7, v5, v4

    invoke-static {v7, v6, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    sub-int v4, v5, v4

    invoke-static {v6, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    const/4 v4, 0x7

    invoke-static {v6, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v7, v5, -0x8

    invoke-static {v7, v4, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v7, v5, -0x8

    invoke-static {v6, v7, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {v4, v6, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    iget v7, v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    add-int/lit8 v9, v7, -0x7

    add-int/2addr v9, v8

    invoke-static {v9, v6, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v9, v7, -0x7

    invoke-static {v4, v9, v2}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    add-int/lit8 v9, v7, -0x8

    const/16 v10, 0x8

    invoke-virtual {v2, v10, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v9

    if-eqz v9, :cond_1e

    add-int/lit8 v9, v7, -0x8

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v9, v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    const/4 v9, 0x5

    const/4 v12, 0x2

    move-object/from16 v13, p2

    iget v13, v13, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    if-ge v13, v12, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v14, v13, -0x1

    sget-object v15, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE:[[I

    aget-object v14, v15, v14

    array-length v15, v14

    move v8, v6

    :goto_1
    if-ge v8, v15, :cond_5

    aget v12, v14, v8

    if-ltz v12, :cond_4

    array-length v4, v14

    move v11, v6

    :goto_2
    if-ge v11, v4, :cond_4

    aget v6, v14, v11

    if-ltz v6, :cond_3

    invoke-virtual {v2, v6, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v21

    if-eqz v21, :cond_3

    add-int/lit8 v6, v6, -0x2

    add-int/lit8 v21, v12, -0x2

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_3

    sget-object v22, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_ADJUSTMENT_PATTERN:[[I

    aget-object v22, v22, v10

    move/from16 p2, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v9, :cond_2

    add-int v9, v6, v4

    move/from16 v23, v6

    add-int v6, v21, v10

    move/from16 v24, v12

    aget v12, v22, v4

    invoke-virtual {v2, v9, v6, v12}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v23

    move/from16 v12, v24

    const/4 v9, 0x5

    goto :goto_4

    :cond_2
    move/from16 v23, v6

    move/from16 v24, v12

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p2

    const/4 v9, 0x5

    goto :goto_3

    :cond_3
    move/from16 p2, v4

    move/from16 v24, v12

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p2

    move/from16 v12, v24

    const/4 v6, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x8

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x7

    const/4 v6, 0x0

    const/4 v9, 0x5

    const/16 v10, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x2

    goto :goto_1

    :cond_5
    :goto_5
    const/16 v4, 0x8

    :goto_6
    add-int/lit8 v6, v5, -0x8

    const/4 v8, 0x6

    if-ge v4, v6, :cond_8

    add-int/lit8 v6, v4, 0x1

    rem-int/lit8 v9, v6, 0x2

    invoke-virtual {v2, v4, v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v2, v4, v8, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_6
    invoke-virtual {v2, v8, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v10

    invoke-static {v10}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2, v8, v4, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    :cond_7
    move v4, v6

    goto :goto_6

    :cond_8
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    if-ltz v1, :cond_9

    const/16 v6, 0x8

    if-ge v1, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_1d

    move-object/from16 v6, p1

    iget v6, v6, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->bits:I

    const/4 v9, 0x3

    shl-int/2addr v6, v9

    or-int/2addr v6, v1

    const/4 v10, 0x5

    invoke-virtual {v4, v6, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v10, 0x537

    invoke-static {v6, v10}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v6

    const/16 v10, 0xa

    invoke-virtual {v4, v6, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    new-instance v6, Lcom/google/zxing/common/BitArray;

    invoke-direct {v6}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/16 v10, 0x5412

    const/16 v11, 0xf

    invoke-virtual {v6, v10, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v10, v4, Lcom/google/zxing/common/BitArray;->size:I

    iget v12, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v10, v12, :cond_1c

    const/4 v10, 0x0

    :goto_8
    iget-object v12, v4, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v14, v12

    if-ge v10, v14, :cond_a

    aget v14, v12, v10

    iget-object v15, v6, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v15, v15, v10

    xor-int/2addr v14, v15

    aput v14, v12, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_a
    iget v6, v4, Lcom/google/zxing/common/BitArray;->size:I

    const-string v10, "should not happen but we got: "

    if-ne v6, v11, :cond_1b

    const/4 v6, 0x0

    :goto_9
    iget v11, v4, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v6, v11, :cond_c

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v6

    invoke-virtual {v4, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    sget-object v12, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->TYPE_INFO_COORDINATES:[[I

    aget-object v12, v12, v6

    const/4 v14, 0x0

    aget v15, v12, v14

    const/16 v19, 0x1

    aget v12, v12, v19

    move-object/from16 v20, v3

    check-cast v20, [[B

    aget-object v12, v20, v12

    int-to-byte v11, v11

    aput-byte v11, v12, v15

    const/16 v12, 0x8

    if-ge v6, v12, :cond_b

    sub-int v15, v5, v6

    const/16 v19, 0x1

    add-int/lit8 v15, v15, -0x1

    move/from16 v20, v12

    goto :goto_a

    :cond_b
    add-int/lit8 v15, v7, -0x7

    add-int/lit8 v20, v6, -0x8

    add-int v15, v20, v15

    move/from16 v20, v15

    move v15, v12

    :goto_a
    move-object/from16 v21, v3

    check-cast v21, [[B

    aget-object v20, v21, v20

    aput-byte v11, v20, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    const/4 v6, 0x7

    const/4 v14, 0x0

    if-ge v13, v6, :cond_d

    goto :goto_d

    :cond_d
    new-instance v4, Lcom/google/zxing/common/BitArray;

    invoke-direct {v4}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v4, v13, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    const/16 v6, 0x1f25

    invoke-static {v13, v6}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->calculateBCHCode(II)I

    move-result v6

    const/16 v11, 0xc

    invoke-virtual {v4, v6, v11}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    iget v6, v4, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v11, 0x12

    if-ne v6, v11, :cond_1a

    const/16 v6, 0x11

    move v10, v14

    :goto_b
    if-ge v10, v8, :cond_f

    move v11, v14

    :goto_c
    if-ge v11, v9, :cond_e

    invoke-virtual {v4, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v12

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v13, v7, -0xb

    add-int/2addr v13, v11

    move-object v15, v3

    check-cast v15, [[B

    aget-object v13, v15, v13

    int-to-byte v12, v12

    aput-byte v12, v13, v10

    add-int/lit8 v13, v7, -0xb

    add-int/2addr v13, v11

    move-object v15, v3

    check-cast v15, [[B

    aget-object v15, v15, v10

    aput-byte v12, v15, v13

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    :cond_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_f
    :goto_d
    const/4 v4, 0x1

    sub-int/2addr v5, v4

    add-int/lit8 v4, v7, -0x1

    move v6, v14

    const/4 v10, -0x1

    :goto_e
    if-lez v5, :cond_18

    if-ne v5, v8, :cond_10

    add-int/lit8 v5, v5, -0x1

    :cond_10
    :goto_f
    if-ltz v4, :cond_17

    if-ge v4, v7, :cond_17

    move v11, v14

    const/4 v12, 0x2

    :goto_10
    if-ge v11, v12, :cond_16

    sub-int v13, v5, v11

    invoke-virtual {v2, v13, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v15

    invoke-static {v15}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v15

    if-eqz v15, :cond_15

    iget v15, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v6, v15, :cond_11

    invoke-virtual {v0, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_11
    move v15, v14

    :goto_11
    const/4 v8, -0x1

    if-eq v1, v8, :cond_13

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid mask pattern: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    mul-int v16, v4, v13

    rem-int/lit8 v16, v16, 0x3

    add-int v17, v4, v13

    const/16 v18, 0x1

    and-int/lit8 v17, v17, 0x1

    goto :goto_12

    :pswitch_1
    mul-int v16, v4, v13

    and-int/lit8 v17, v16, 0x1

    rem-int/lit8 v16, v16, 0x3

    :goto_12
    add-int v16, v16, v17

    goto :goto_14

    :pswitch_2
    mul-int v16, v4, v13

    and-int/lit8 v17, v16, 0x1

    rem-int/lit8 v16, v16, 0x3

    add-int v16, v16, v17

    goto :goto_13

    :pswitch_3
    div-int/lit8 v16, v4, 0x2

    div-int/lit8 v17, v13, 0x3

    add-int v16, v17, v16

    goto :goto_14

    :pswitch_4
    add-int v16, v4, v13

    rem-int/lit8 v16, v16, 0x3

    goto :goto_13

    :pswitch_5
    rem-int/lit8 v16, v13, 0x3

    :goto_13
    const/16 v19, 0x1

    goto :goto_15

    :pswitch_6
    move/from16 v16, v4

    goto :goto_14

    :pswitch_7
    add-int v16, v4, v13

    :goto_14
    const/16 v19, 0x1

    and-int/lit8 v16, v16, 0x1

    :goto_15
    if-nez v16, :cond_12

    move/from16 v16, v19

    goto :goto_16

    :cond_12
    move/from16 v16, v14

    :goto_16
    if-eqz v16, :cond_14

    xor-int/lit8 v15, v15, 0x1

    goto :goto_17

    :cond_13
    const/16 v19, 0x1

    :cond_14
    :goto_17
    move-object/from16 v16, v3

    check-cast v16, [[B

    aget-object v16, v16, v4

    int-to-byte v15, v15

    aput-byte v15, v16, v13

    goto :goto_18

    :cond_15
    const/4 v8, -0x1

    const/16 v19, 0x1

    :goto_18
    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x6

    goto/16 :goto_10

    :cond_16
    const/4 v8, -0x1

    const/16 v19, 0x1

    add-int/2addr v4, v10

    const/4 v8, 0x6

    goto/16 :goto_f

    :cond_17
    const/4 v8, -0x1

    const/4 v12, 0x2

    const/16 v19, 0x1

    neg-int v10, v10

    add-int/2addr v4, v10

    add-int/lit8 v5, v5, -0x2

    const/4 v8, 0x6

    goto/16 :goto_e

    :cond_18
    iget v1, v0, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v6, v1, :cond_19

    return-void

    :cond_19
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not all bits consumed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lcom/google/zxing/common/BitArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sizes don\'t match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Lcom/google/zxing/WriterException;

    invoke-direct {v0}, Lcom/google/zxing/WriterException;-><init>()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static calculateBCHCode(II)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    add-int/lit8 v1, v0, -0x1

    shl-int/2addr p0, v1

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    if-lt v1, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    sub-int/2addr v1, v0

    shl-int v1, p1, v1

    xor-int/2addr p0, v1

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0 polynomial"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static embedHorizontalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    add-int v2, p0, v1

    invoke-virtual {p2, v2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2, p1, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static embedPositionDetectionPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    sget-object v3, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->POSITION_DETECTION_PATTERN:[[I

    aget-object v3, v3, v1

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    add-int v5, p0, v4

    add-int v6, p1, v1

    aget v7, v3, v4

    invoke-virtual {p2, v5, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static embedVerticalSeparationPattern(IILcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    add-int v2, p1, v1

    invoke-virtual {p2, p0, v2}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v3

    invoke-static {v3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->isEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, p0, v2, v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static isEmpty(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
