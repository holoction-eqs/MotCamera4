.class public abstract Landroidx/media3/extractor/AacUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field public static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static getSamplingFrequency(Landroidx/media3/common/ColorInfo$Builder;)I
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->bitsLeft()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "AAC header insufficient data"

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0xd

    if-ge v0, p0, :cond_2

    sget-object p0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget p0, p0, v0

    :goto_0
    return p0

    :cond_2
    const-string p0, "AAC header wrong Sampling Frequency Index"

    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseAudioSpecificConfig(Landroidx/media3/common/ColorInfo$Builder;Z)Landroidx/media3/extractor/AacUtil$Config;
    .locals 11

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x6

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    .line 2
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getSamplingFrequency(Landroidx/media3/common/ColorInfo$Builder;)I

    move-result v4

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    const-string v7, "mp4a.40."

    .line 3
    invoke-static {v7, v1}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x16

    if-eq v1, v0, :cond_1

    const/16 v9, 0x1d

    if-ne v1, v9, :cond_3

    .line 4
    :cond_1
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getSamplingFrequency(Landroidx/media3/common/ColorInfo$Builder;)I

    move-result v4

    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v3}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    :cond_2
    move v1, v0

    if-ne v1, v8, :cond_3

    .line 6
    invoke-virtual {p0, v5}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result v6

    :cond_3
    if-eqz p1, :cond_f

    const/16 p1, 0x11

    const/4 v0, 0x1

    const/4 v2, 0x3

    const/4 v9, 0x2

    if-eq v1, v0, :cond_4

    if-eq v1, v9, :cond_4

    if-eq v1, v2, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_4

    const/4 v5, 0x7

    if-eq v1, v5, :cond_4

    if-eq v1, p1, :cond_4

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported audio object type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 7
    :cond_4
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "AacUtil"

    const-string v10, "Unexpected frameLengthFlag = 1"

    invoke-static {v5, v10}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_6
    invoke-virtual {p0}, Landroidx/media3/common/ColorInfo$Builder;->readBit()Z

    move-result v5

    if-eqz v6, :cond_e

    const/16 v10, 0x14

    if-eq v1, v3, :cond_7

    if-ne v1, v10, :cond_8

    :cond_7
    invoke-virtual {p0, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_8
    if-eqz v5, :cond_c

    if-ne v1, v8, :cond_9

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_9
    if-eq v1, p1, :cond_a

    const/16 p1, 0x13

    if-eq v1, p1, :cond_a

    if-eq v1, v10, :cond_a

    const/16 p1, 0x17

    if-ne v1, p1, :cond_b

    :cond_a
    invoke-virtual {p0, v2}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_b
    invoke-virtual {p0, v0}, Landroidx/media3/common/ColorInfo$Builder;->skipBits(I)V

    :cond_c
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 8
    :pswitch_2
    invoke-virtual {p0, v9}, Landroidx/media3/common/ColorInfo$Builder;->readBits(I)I

    move-result p0

    if-eq p0, v9, :cond_d

    if-eq p0, v2, :cond_d

    goto :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported epConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 9
    :cond_e
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 10
    :cond_f
    :goto_0
    sget-object p0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget p0, p0, v6

    const/4 p1, -0x1

    if-eq p0, p1, :cond_10

    new-instance p1, Landroidx/media3/extractor/AacUtil$Config;

    .line 11
    invoke-direct {p1, v4, p0, v7}, Landroidx/media3/extractor/AacUtil$Config;-><init>(IILjava/lang/String;)V

    return-object p1

    :cond_10
    const/4 p0, 0x0

    .line 12
    invoke-static {p0, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Exception;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;
    .locals 3

    .line 21
    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/common/ColorInfo$Builder;-><init>([BILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/common/ColorInfo$Builder;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object p0

    return-object p0
.end method
