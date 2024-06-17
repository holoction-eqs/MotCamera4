.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field public static final decoderInfosCache:Ljava/util/HashMap;

.field public static maxH264DecodableFrameSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method public static applyWorkarounds(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_0

    sget-object p0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "R9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v2, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v2, "OMX.google.raw.decoder"

    const-string v3, "audio/raw"

    const-string v4, "audio/raw"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v2, 0xf

    invoke-direct {p0, v2}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v2, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge p0, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v3, "OMX.SEC.mp3.dec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.brcm.audio.mp3.decoder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v3, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, v0}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    const/16 v2, 0x20

    if-ge p0, v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public static getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "audio/eac3"

    return-object p0

    :cond_0
    const-string v0, "video/dolby-vision"

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_3

    const-string p0, "video/avc"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "video/hevc"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "video/dolby-vision"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_2
    const-string p0, "OMX.RTK.video.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_4
    const-string p0, "audio/alac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_5
    const-string p0, "audio/flac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_6
    const-string p0, "audio/ac3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "OMX.lge.ac3.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "audio/lg-ac3"

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v3, "video/dolby-vision"

    iget-object v4, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xa

    const-string v5, "MediaCodecUtil"

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    iget-object v14, v0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v3, :cond_1e

    array-length v0, v1

    const-string v3, "Ignoring malformed Dolby Vision codec string: "

    if-ge v0, v11, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v4, v1, v13

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v3, "09"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x9

    goto/16 :goto_0

    :pswitch_1
    const-string v3, "08"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x8

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "07"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_3
    const-string v3, "06"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const-string v3, "05"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_5
    const-string v3, "04"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_6
    const-string v3, "03"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_7
    const-string v3, "02"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_8
    const-string v3, "01"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_9
    const-string v3, "00"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_0

    :cond_d
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_1

    :goto_1
    move-object v0, v2

    goto :goto_3

    :pswitch_a
    const/16 v0, 0x200

    goto :goto_2

    :pswitch_b
    const/16 v0, 0x100

    goto :goto_2

    :pswitch_c
    const/16 v0, 0x80

    goto :goto_2

    :pswitch_d
    const/16 v0, 0x40

    goto :goto_2

    :pswitch_e
    const/16 v0, 0x20

    goto :goto_2

    :pswitch_f
    move v0, v6

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :pswitch_10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :pswitch_11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :pswitch_12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :pswitch_13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Dolby Vision profile string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_e
    aget-object v14, v1, v12

    if-nez v14, :cond_f

    goto/16 :goto_5

    :cond_f
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v3, "13"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_4

    :cond_10
    const/16 v1, 0xc

    goto/16 :goto_4

    :sswitch_1
    const-string v3, "12"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_4

    :cond_11
    const/16 v1, 0xb

    goto/16 :goto_4

    :sswitch_2
    const-string v3, "11"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_4

    :cond_12
    const/16 v1, 0xa

    goto/16 :goto_4

    :sswitch_3
    const-string v3, "10"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_4

    :cond_13
    const/16 v1, 0x9

    goto/16 :goto_4

    :sswitch_4
    const-string v3, "09"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v1, 0x8

    goto/16 :goto_4

    :sswitch_5
    const-string v3, "08"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_4

    :cond_15
    const/4 v1, 0x7

    goto :goto_4

    :sswitch_6
    const-string v3, "07"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_4

    :cond_16
    const/4 v1, 0x6

    goto :goto_4

    :sswitch_7
    const-string v3, "06"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_4

    :cond_17
    const/4 v1, 0x5

    goto :goto_4

    :sswitch_8
    const-string v3, "05"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_4

    :cond_18
    const/4 v1, 0x4

    goto :goto_4

    :sswitch_9
    const-string v3, "04"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_4

    :cond_19
    const/4 v1, 0x3

    goto :goto_4

    :sswitch_a
    const-string v3, "03"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_4

    :cond_1a
    const/4 v1, 0x2

    goto :goto_4

    :sswitch_b
    const-string v3, "02"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_4

    :cond_1b
    const/4 v1, 0x1

    goto :goto_4

    :sswitch_c
    const-string v3, "01"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_4

    :cond_1c
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_2

    :goto_5
    move-object v1, v2

    goto :goto_7

    :pswitch_14
    const/16 v6, 0x1000

    goto :goto_6

    :pswitch_15
    const/16 v6, 0x800

    goto :goto_6

    :pswitch_16
    const/16 v6, 0x400

    goto :goto_6

    :pswitch_17
    const/16 v6, 0x200

    goto :goto_6

    :pswitch_18
    const/16 v6, 0x100

    goto :goto_6

    :pswitch_19
    const/16 v6, 0x80

    goto :goto_6

    :pswitch_1a
    const/16 v6, 0x40

    goto :goto_6

    :pswitch_1b
    const/16 v6, 0x20

    goto :goto_6

    :pswitch_1c
    move v6, v7

    :goto_6
    :pswitch_1d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :pswitch_1e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :pswitch_1f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_7

    :pswitch_20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_7
    if-nez v1, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown Dolby Vision level string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_8
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_1d
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    return-object v2

    :cond_1e
    aget-object v3, v1, v9

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    :goto_a
    const/4 v15, -0x1

    goto :goto_b

    :sswitch_d
    const-string v15, "vp09"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v15, 0x6

    goto :goto_b

    :sswitch_e
    const-string v15, "mp4a"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto :goto_a

    :cond_20
    const/4 v15, 0x5

    goto :goto_b

    :sswitch_f
    const-string v15, "hvc1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_a

    :cond_21
    const/4 v15, 0x4

    goto :goto_b

    :sswitch_10
    const-string v15, "hev1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_a

    :cond_22
    const/4 v15, 0x3

    goto :goto_b

    :sswitch_11
    const-string v15, "avc2"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_a

    :cond_23
    const/4 v15, 0x2

    goto :goto_b

    :sswitch_12
    const-string v15, "avc1"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_a

    :cond_24
    const/4 v15, 0x1

    goto :goto_b

    :sswitch_13
    const-string v15, "av01"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_a

    :cond_25
    const/4 v15, 0x0

    :goto_b
    packed-switch v15, :pswitch_data_3

    return-object v2

    :pswitch_21
    array-length v0, v1

    const-string v3, "Ignoring malformed VP9 codec string: "

    if-ge v0, v11, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_26
    :try_start_0
    aget-object v0, v1, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2a

    if-eq v0, v13, :cond_29

    if-eq v0, v12, :cond_28

    if-eq v0, v11, :cond_27

    move v3, v8

    goto :goto_c

    :cond_27
    move v3, v7

    goto :goto_c

    :cond_28
    move v3, v10

    goto :goto_c

    :cond_29
    move v3, v12

    goto :goto_c

    :cond_2a
    move v3, v13

    :goto_c
    if-ne v3, v8, :cond_2b

    const-string v1, "Unknown VP9 profile: "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_2b
    if-eq v1, v4, :cond_34

    const/16 v0, 0xb

    if-eq v1, v0, :cond_33

    const/16 v0, 0x14

    if-eq v1, v0, :cond_32

    const/16 v0, 0x15

    if-eq v1, v0, :cond_31

    const/16 v0, 0x1e

    if-eq v1, v0, :cond_35

    const/16 v0, 0x1f

    if-eq v1, v0, :cond_30

    const/16 v0, 0x28

    if-eq v1, v0, :cond_2f

    const/16 v0, 0x29

    if-eq v1, v0, :cond_2e

    const/16 v0, 0x32

    if-eq v1, v0, :cond_2d

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2c

    packed-switch v1, :pswitch_data_4

    move v6, v8

    goto :goto_d

    :pswitch_22
    const/16 v6, 0x2000

    goto :goto_d

    :pswitch_23
    const/16 v6, 0x1000

    goto :goto_d

    :pswitch_24
    const/16 v6, 0x800

    goto :goto_d

    :cond_2c
    const/16 v6, 0x200

    goto :goto_d

    :cond_2d
    const/16 v6, 0x100

    goto :goto_d

    :cond_2e
    const/16 v6, 0x80

    goto :goto_d

    :cond_2f
    const/16 v6, 0x40

    goto :goto_d

    :cond_30
    const/16 v6, 0x20

    goto :goto_d

    :cond_31
    move v6, v7

    goto :goto_d

    :cond_32
    move v6, v10

    goto :goto_d

    :cond_33
    move v6, v12

    goto :goto_d

    :cond_34
    move v6, v13

    :cond_35
    :goto_d
    if-ne v6, v8, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unknown VP9 level: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_36
    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_11

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-object v2

    :pswitch_25
    array-length v0, v1

    const-string v3, "Ignoring malformed MP4A codec string: "

    if-eq v0, v11, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_13

    :cond_37
    :try_start_1
    aget-object v0, v1, v13

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    aget-object v0, v1, v12

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_38

    const/16 v1, 0x14

    if-eq v0, v1, :cond_38

    const/16 v1, 0x17

    if-eq v0, v1, :cond_38

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_38

    const/16 v1, 0x27

    if-eq v0, v1, :cond_38

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_38

    packed-switch v0, :pswitch_data_5

    move v10, v8

    goto :goto_12

    :pswitch_26
    const/4 v10, 0x6

    goto :goto_12

    :pswitch_27
    const/4 v10, 0x5

    goto :goto_12

    :pswitch_28
    move v10, v11

    goto :goto_12

    :pswitch_29
    move v10, v12

    goto :goto_12

    :pswitch_2a
    move v10, v13

    goto :goto_12

    :cond_38
    move v10, v1

    :goto_12
    :pswitch_2b
    if-eq v10, v8, :cond_39

    new-instance v0, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_14

    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_13
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_14
    return-object v2

    :pswitch_2c
    array-length v2, v1

    const-string v3, "Ignoring malformed HEVC codec string: "

    if-ge v2, v10, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_3a
    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    aget-object v4, v1, v13

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_3b
    invoke-virtual {v2, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    const-string v2, "1"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move v0, v13

    goto :goto_15

    :cond_3c
    const-string v2, "2"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    iget-object v0, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v0, :cond_3d

    iget v0, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3d

    const/16 v0, 0x1000

    goto :goto_15

    :cond_3d
    move v0, v12

    :goto_15
    aget-object v1, v1, v11

    if-nez v1, :cond_3e

    goto/16 :goto_17

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_16

    :sswitch_14
    const-string v3, "L186"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3f

    goto/16 :goto_16

    :cond_3f
    const/16 v2, 0x19

    goto/16 :goto_16

    :sswitch_15
    const-string v3, "L183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    goto/16 :goto_16

    :cond_40
    const/16 v2, 0x18

    goto/16 :goto_16

    :sswitch_16
    const-string v3, "L180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto/16 :goto_16

    :cond_41
    const/16 v2, 0x17

    goto/16 :goto_16

    :sswitch_17
    const-string v3, "L156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto/16 :goto_16

    :cond_42
    const/16 v2, 0x16

    goto/16 :goto_16

    :sswitch_18
    const-string v3, "L153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto/16 :goto_16

    :cond_43
    const/16 v2, 0x15

    goto/16 :goto_16

    :sswitch_19
    const-string v3, "L150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    goto/16 :goto_16

    :cond_44
    const/16 v2, 0x14

    goto/16 :goto_16

    :sswitch_1a
    const-string v3, "L123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    goto/16 :goto_16

    :cond_45
    const/16 v2, 0x13

    goto/16 :goto_16

    :sswitch_1b
    const-string v3, "L120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    goto/16 :goto_16

    :cond_46
    const/16 v2, 0x12

    goto/16 :goto_16

    :sswitch_1c
    const-string v3, "H186"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto/16 :goto_16

    :cond_47
    const/16 v2, 0x11

    goto/16 :goto_16

    :sswitch_1d
    const-string v3, "H183"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    goto/16 :goto_16

    :cond_48
    const/16 v2, 0x10

    goto/16 :goto_16

    :sswitch_1e
    const-string v3, "H180"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    goto/16 :goto_16

    :cond_49
    const/16 v2, 0xf

    goto/16 :goto_16

    :sswitch_1f
    const-string v3, "H156"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    goto/16 :goto_16

    :cond_4a
    const/16 v2, 0xe

    goto/16 :goto_16

    :sswitch_20
    const-string v3, "H153"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    goto/16 :goto_16

    :cond_4b
    const/16 v2, 0xd

    goto/16 :goto_16

    :sswitch_21
    const-string v3, "H150"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto/16 :goto_16

    :cond_4c
    const/16 v2, 0xc

    goto/16 :goto_16

    :sswitch_22
    const-string v3, "H123"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto/16 :goto_16

    :cond_4d
    const/16 v2, 0xb

    goto/16 :goto_16

    :sswitch_23
    const-string v3, "H120"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto/16 :goto_16

    :cond_4e
    const/16 v2, 0xa

    goto/16 :goto_16

    :sswitch_24
    const-string v3, "L93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    goto/16 :goto_16

    :cond_4f
    const/16 v2, 0x9

    goto/16 :goto_16

    :sswitch_25
    const-string v3, "L90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    goto/16 :goto_16

    :cond_50
    const/16 v2, 0x8

    goto/16 :goto_16

    :sswitch_26
    const-string v3, "L63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    goto :goto_16

    :cond_51
    const/4 v2, 0x7

    goto :goto_16

    :sswitch_27
    const-string v3, "L60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    goto :goto_16

    :cond_52
    const/4 v2, 0x6

    goto :goto_16

    :sswitch_28
    const-string v3, "L30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_16

    :cond_53
    const/4 v2, 0x5

    goto :goto_16

    :sswitch_29
    const-string v3, "H93"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_16

    :cond_54
    const/4 v2, 0x4

    goto :goto_16

    :sswitch_2a
    const-string v3, "H90"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_16

    :cond_55
    const/4 v2, 0x3

    goto :goto_16

    :sswitch_2b
    const-string v3, "H63"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    goto :goto_16

    :cond_56
    const/4 v2, 0x2

    goto :goto_16

    :sswitch_2c
    const-string v3, "H60"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto :goto_16

    :cond_57
    const/4 v2, 0x1

    goto :goto_16

    :sswitch_2d
    const-string v3, "H30"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    goto :goto_16

    :cond_58
    const/4 v2, 0x0

    :goto_16
    packed-switch v2, :pswitch_data_6

    :goto_17
    const/4 v2, 0x0

    goto/16 :goto_19

    :pswitch_2d
    const/high16 v7, 0x1000000

    goto :goto_18

    :pswitch_2e
    const/high16 v7, 0x400000

    goto :goto_18

    :pswitch_2f
    const/high16 v7, 0x100000

    goto :goto_18

    :pswitch_30
    const/high16 v7, 0x40000

    goto :goto_18

    :pswitch_31
    const/high16 v7, 0x10000

    goto :goto_18

    :pswitch_32
    const/16 v7, 0x4000

    goto :goto_18

    :pswitch_33
    const/16 v7, 0x1000

    goto :goto_18

    :pswitch_34
    const/16 v7, 0x400

    goto :goto_18

    :pswitch_35
    const/high16 v7, 0x2000000

    goto :goto_18

    :pswitch_36
    const/high16 v7, 0x800000

    goto :goto_18

    :pswitch_37
    const/high16 v7, 0x200000

    goto :goto_18

    :pswitch_38
    const/high16 v7, 0x80000

    goto :goto_18

    :pswitch_39
    const/high16 v7, 0x20000

    goto :goto_18

    :pswitch_3a
    const v7, 0x8000

    goto :goto_18

    :pswitch_3b
    const/16 v7, 0x2000

    goto :goto_18

    :pswitch_3c
    const/16 v7, 0x800

    goto :goto_18

    :pswitch_3d
    const/16 v7, 0x100

    goto :goto_18

    :pswitch_3e
    const/16 v7, 0x40

    goto :goto_18

    :pswitch_3f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_19

    :pswitch_40
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_19

    :pswitch_41
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_19

    :pswitch_42
    const/16 v7, 0x200

    goto :goto_18

    :pswitch_43
    const/16 v7, 0x80

    goto :goto_18

    :pswitch_44
    const/16 v7, 0x20

    :goto_18
    :pswitch_45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_19

    :pswitch_46
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_19
    if-nez v2, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown HEVC level string: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_59
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1c

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown HEVC profile string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1a
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1c
    return-object v1

    :pswitch_47
    array-length v0, v1

    const-string v2, "Ignoring malformed AVC codec string: "

    if-ge v0, v12, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_5b
    :try_start_2
    aget-object v0, v1, v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5c

    aget-object v0, v1, v13

    invoke-virtual {v0, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    aget-object v1, v1, v13

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_1d

    :cond_5c
    array-length v0, v1

    if-lt v0, v11, :cond_66

    aget-object v0, v1, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1d
    const/16 v2, 0x42

    if-eq v0, v2, :cond_62

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_63

    const/16 v2, 0x58

    if-eq v0, v2, :cond_61

    const/16 v2, 0x64

    if-eq v0, v2, :cond_60

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_5f

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_5e

    const/16 v2, 0xf4

    if-eq v0, v2, :cond_5d

    move v12, v8

    goto :goto_1e

    :cond_5d
    const/16 v12, 0x40

    goto :goto_1e

    :cond_5e
    const/16 v12, 0x20

    goto :goto_1e

    :cond_5f
    move v12, v6

    goto :goto_1e

    :cond_60
    move v12, v7

    goto :goto_1e

    :cond_61
    move v12, v10

    goto :goto_1e

    :cond_62
    move v12, v13

    :cond_63
    :goto_1e
    if-ne v12, v8, :cond_64

    const-string v1, "Unknown AVC profile: "

    invoke-static {v1, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    :cond_64
    packed-switch v1, :pswitch_data_7

    packed-switch v1, :pswitch_data_8

    packed-switch v1, :pswitch_data_9

    packed-switch v1, :pswitch_data_a

    packed-switch v1, :pswitch_data_b

    move v6, v8

    goto :goto_1f

    :pswitch_48
    move v6, v7

    goto :goto_1f

    :pswitch_49
    move v6, v10

    goto :goto_1f

    :pswitch_4a
    move v6, v13

    goto :goto_1f

    :pswitch_4b
    const/16 v6, 0x80

    goto :goto_1f

    :pswitch_4c
    const/16 v6, 0x40

    goto :goto_1f

    :pswitch_4d
    const/16 v6, 0x20

    goto :goto_1f

    :pswitch_4e
    const/16 v6, 0x400

    goto :goto_1f

    :pswitch_4f
    const/16 v6, 0x200

    goto :goto_1f

    :pswitch_50
    const/16 v6, 0x100

    goto :goto_1f

    :pswitch_51
    const/16 v6, 0x2000

    goto :goto_1f

    :pswitch_52
    const/16 v6, 0x1000

    goto :goto_1f

    :pswitch_53
    const/16 v6, 0x800

    goto :goto_1f

    :pswitch_54
    const/high16 v6, 0x10000

    goto :goto_1f

    :pswitch_55
    const v6, 0x8000

    goto :goto_1f

    :pswitch_56
    const/16 v6, 0x4000

    :goto_1f
    :pswitch_57
    if-ne v6, v8, :cond_65

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AVC level: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_21

    :cond_65
    new-instance v0, Landroid/util/Pair;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_24

    :cond_66
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_23

    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_20
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_22
    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    const/4 v0, 0x0

    :goto_24
    return-object v0

    :pswitch_58
    array-length v2, v1

    const-string v3, "Ignoring malformed AV1 codec string: "

    if-ge v2, v10, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_27

    :cond_67
    :try_start_4
    aget-object v2, v1, v13

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v15, v1, v12

    invoke-virtual {v15, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v1, v1, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v2, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown AV1 profile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_28

    :cond_68
    if-eq v1, v7, :cond_69

    if-eq v1, v4, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AV1 bit depth: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_28

    :cond_69
    if-ne v1, v7, :cond_6a

    move v0, v13

    goto :goto_25

    :cond_6a
    iget-object v0, v0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v0, :cond_6c

    iget-object v1, v0, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    if-nez v1, :cond_6b

    iget v0, v0, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_6b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6c

    :cond_6b
    const/16 v0, 0x1000

    goto :goto_25

    :cond_6c
    move v0, v12

    :goto_25
    packed-switch v9, :pswitch_data_c

    move v6, v8

    goto :goto_26

    :pswitch_59
    const/high16 v6, 0x800000

    goto :goto_26

    :pswitch_5a
    const/high16 v6, 0x400000

    goto :goto_26

    :pswitch_5b
    const/high16 v6, 0x200000

    goto :goto_26

    :pswitch_5c
    const/high16 v6, 0x100000

    goto :goto_26

    :pswitch_5d
    const/high16 v6, 0x80000

    goto :goto_26

    :pswitch_5e
    const/high16 v6, 0x40000

    goto :goto_26

    :pswitch_5f
    const/high16 v6, 0x20000

    goto :goto_26

    :pswitch_60
    const/high16 v6, 0x10000

    goto :goto_26

    :pswitch_61
    const v6, 0x8000

    goto :goto_26

    :pswitch_62
    const/16 v6, 0x4000

    goto :goto_26

    :pswitch_63
    const/16 v6, 0x2000

    goto :goto_26

    :pswitch_64
    const/16 v6, 0x1000

    goto :goto_26

    :pswitch_65
    const/16 v6, 0x800

    goto :goto_26

    :pswitch_66
    const/16 v6, 0x400

    goto :goto_26

    :pswitch_67
    const/16 v6, 0x200

    goto :goto_26

    :pswitch_68
    const/16 v6, 0x100

    goto :goto_26

    :pswitch_69
    const/16 v6, 0x80

    goto :goto_26

    :pswitch_6a
    const/16 v6, 0x40

    goto :goto_26

    :pswitch_6b
    const/16 v6, 0x20

    goto :goto_26

    :pswitch_6c
    move v6, v7

    goto :goto_26

    :pswitch_6d
    move v6, v10

    goto :goto_26

    :pswitch_6e
    move v6, v12

    goto :goto_26

    :pswitch_6f
    move v6, v13

    :goto_26
    :pswitch_70
    if-ne v6, v8, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown AV1 level: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_6d
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_29

    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_29
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x600
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_c
        0x602 -> :sswitch_b
        0x603 -> :sswitch_a
        0x604 -> :sswitch_9
        0x605 -> :sswitch_8
        0x606 -> :sswitch_7
        0x607 -> :sswitch_6
        0x608 -> :sswitch_5
        0x609 -> :sswitch_4
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x621 -> :sswitch_1
        0x622 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1c
        :pswitch_1d
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x2dd8f6 -> :sswitch_13
        0x2ddf23 -> :sswitch_12
        0x2ddf24 -> :sswitch_11
        0x30d038 -> :sswitch_10
        0x310dbc -> :sswitch_f
        0x333790 -> :sswitch_e
        0x374e43 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_58
        :pswitch_47
        :pswitch_47
        :pswitch_2c
        :pswitch_2c
        :pswitch_25
        :pswitch_21
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_2b
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x114a5 -> :sswitch_2d
        0x11502 -> :sswitch_2c
        0x11505 -> :sswitch_2b
        0x1155f -> :sswitch_2a
        0x11562 -> :sswitch_29
        0x123a9 -> :sswitch_28
        0x12406 -> :sswitch_27
        0x12409 -> :sswitch_26
        0x12463 -> :sswitch_25
        0x12466 -> :sswitch_24
        0x2178e7 -> :sswitch_23
        0x2178ea -> :sswitch_22
        0x217944 -> :sswitch_21
        0x217947 -> :sswitch_20
        0x21794a -> :sswitch_1f
        0x2179a1 -> :sswitch_1e
        0x2179a4 -> :sswitch_1d
        0x2179a7 -> :sswitch_1c
        0x234a63 -> :sswitch_1b
        0x234a66 -> :sswitch_1a
        0x234ac0 -> :sswitch_19
        0x234ac3 -> :sswitch_18
        0x234ac6 -> :sswitch_17
        0x234b1d -> :sswitch_16
        0x234b20 -> :sswitch_15
        0x234b23 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xa
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_57
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x14
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1e
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x28
        :pswitch_53
        :pswitch_52
        :pswitch_51
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x32
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_70
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
    .end packed-switch
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 7

    const-string v0, "MediaCodecList API didn\'t list secure decoder for: "

    const-class v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    sget-object v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v1

    return-object v4

    :cond_0
    :try_start_1
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    new-instance v6, Lcom/adobe/xmp/impl/ParseState;

    invoke-direct {v6, p1, p2}, Lcom/adobe/xmp/impl/ParseState;-><init>(ZZ)V

    goto :goto_0

    :cond_1
    new-instance v6, Landroidx/work/InputMergerFactory$1;

    invoke-direct {v6}, Landroidx/work/InputMergerFactory$1;-><init>()V

    :goto_0
    invoke-static {v2, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-gt v5, v4, :cond_2

    const/16 p1, 0x17

    if-gt v4, p1, :cond_2

    new-instance p1, Landroidx/work/InputMergerFactory$1;

    invoke-direct {p1}, Landroidx/work/InputMergerFactory$1;-><init>()V

    invoke-static {v2, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MediaCodecUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Assuming: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public static getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v13

    const/16 v16, 0x0

    move/from16 v12, v16

    :goto_0
    if-ge v12, v15, :cond_11

    invoke-interface {v2, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v7, 0x1d

    if-lt v6, v7, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    move/from16 v9, v16

    :goto_1
    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v13, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0, v11, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    invoke-interface {v2, v4, v10, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v17

    invoke-interface {v2, v4, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v18

    iget-boolean v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v8, :cond_4

    if-nez v18, :cond_7

    :cond_4
    if-eqz v8, :cond_5

    if-nez v17, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v2, v3, v10, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v8

    invoke-interface {v2, v3, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v17
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    iget-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v7, :cond_6

    if-nez v17, :cond_7

    :cond_6
    if-eqz v7, :cond_8

    if-nez v8, :cond_8

    :cond_7
    :goto_2
    move/from16 v18, v12

    move/from16 v20, v13

    goto/16 :goto_7

    :cond_8
    const/16 v1, 0x1d

    if-lt v6, v1, :cond_9

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v1

    const/16 v17, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v0, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v1

    const/16 v17, 0x1

    xor-int/lit8 v1, v1, 0x1

    :goto_3
    invoke-static {v0, v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v19

    const/16 v2, 0x1d

    if-lt v6, v2, :cond_a

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isVendor()Z

    move-result v0

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "omx.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "c2.android."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "c2.google."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_b

    goto :goto_4

    :cond_b
    move/from16 v17, v16

    :goto_4
    move/from16 v0, v17

    :goto_5
    if-eqz v13, :cond_c

    if-eq v7, v8, :cond_d

    :cond_c
    if-nez v13, :cond_e

    if-nez v7, :cond_e

    :cond_d
    const/4 v2, 0x0

    move-object v6, v11

    move-object v7, v14

    move-object v8, v10

    move-object/from16 v17, v10

    move v10, v1

    move-object v1, v11

    move/from16 v11, v19

    move/from16 v18, v12

    move v12, v0

    move/from16 v20, v13

    move v13, v2

    :try_start_3
    invoke-static/range {v6 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :cond_e
    move-object/from16 v17, v10

    move-object v2, v11

    move/from16 v18, v12

    move/from16 v20, v13

    if-nez v20, :cond_f

    if-eqz v8, :cond_f

    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x1

    move-object v7, v14

    move-object/from16 v8, v17

    move v10, v1

    move/from16 v11, v19

    move v12, v0

    invoke-static/range {v6 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v17, v10

    move-object v2, v11

    move/from16 v18, v12

    move/from16 v20, v13

    :goto_6
    :try_start_5
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const/16 v6, 0x17

    const-string v7, "MediaCodecUtil"

    if-gt v1, v6, :cond_10

    :try_start_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping codec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v13, v20

    goto/16 :goto_0

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_11
    return-object v5

    :catch_3
    move-exception v0

    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p2, :cond_0

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_2

    const-string p2, "CIPAACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPMP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPVorbisDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPAMRNBDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "AACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "MP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0x12

    if-ge p0, p2, :cond_4

    const-string p2, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "a70"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Xiaomi"

    sget-object v2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return v0

    :cond_4
    const/16 p2, 0x10

    if-ne p0, p2, :cond_6

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "dlxu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "protou"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ville"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "villeplus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "villec2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6602"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6603"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6606"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6616"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "L36h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SO-02E"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return v0

    :cond_6
    if-ne p0, p2, :cond_8

    const-string p2, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C1504"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1505"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1604"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1605"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    return v0

    :cond_8
    const/16 p2, 0x18

    const-string v1, "samsung"

    if-ge p0, p2, :cond_b

    const-string p2, "OMX.SEC.aac.dec"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    sget-object p2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "zerolte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "zenlte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SC-05G"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "marinelteatt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "404SC"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SC-04G"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SCV31"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    return v0

    :cond_b
    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_d

    const-string v3, "OMX.SEC.vp8.dec"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "d2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "serrano"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "santos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "t0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return v0

    :cond_d
    if-gt p0, v2, :cond_e

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    return v0

    :cond_e
    const/16 p2, 0x17

    if-gt p0, p2, :cond_f

    const-string p0, "audio/eac3-joc"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_0
    return v0
.end method

.method public static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/ResultKt;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const-string p1, "omx.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx.ffmpeg."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx.sec."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2.android."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    :goto_0
    return v0
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 7

    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const-string v0, "video/avc"

    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_0
    if-eqz v0, :cond_6

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_2

    :cond_1
    new-array v0, v2, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_2
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v5, v0, v2

    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    sparse-switch v5, :sswitch_data_0

    move v5, v1

    goto :goto_2

    :sswitch_0
    const/high16 v5, 0x2200000

    goto :goto_2

    :sswitch_1
    const/high16 v5, 0x900000

    goto :goto_2

    :sswitch_2
    const v5, 0x564000

    goto :goto_2

    :sswitch_3
    const/high16 v5, 0x220000

    goto :goto_2

    :sswitch_4
    const/high16 v5, 0x200000

    goto :goto_2

    :sswitch_5
    const/high16 v5, 0x140000

    goto :goto_2

    :sswitch_6
    const v5, 0xe1000

    goto :goto_2

    :sswitch_7
    const v5, 0x65400

    goto :goto_2

    :sswitch_8
    const v5, 0x31800

    goto :goto_2

    :sswitch_9
    const v5, 0x18c00

    goto :goto_2

    :cond_3
    const/16 v5, 0x6300

    :goto_2
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    const v0, 0x54600

    goto :goto_3

    :cond_5
    const v0, 0x2a300

    :goto_3
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_6
    sput v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    :cond_7
    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method
