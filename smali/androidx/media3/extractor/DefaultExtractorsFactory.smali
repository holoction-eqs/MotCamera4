.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# static fields
.field public static final DEFAULT_EXTRACTOR_ORDER:[I

.field public static final FLAC_EXTENSION_LOADER:Landroidx/core/view/MenuHostHelper;

.field public static final MIDI_EXTENSION_LOADER:Landroidx/core/view/MenuHostHelper;


# instance fields
.field public tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    new-instance v1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/core/view/MenuHostHelper;

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    new-instance v1, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/core/view/MenuHostHelper;-><init>(Landroidx/media3/common/Tracks$$ExternalSyntheticLambda0;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/core/view/MenuHostHelper;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method


# virtual methods
.method public final addExtractorsForFileType(ILjava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/avi/AviExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/avi/AviExtractor;-><init>()V

    goto/16 :goto_0

    :pswitch_2
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/core/view/MenuHostHelper;

    new-array p1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_2

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/jpeg/JpegExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>()V

    goto/16 :goto_0

    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/collect/ImmutableList;->EMPTY_ITR:Lcom/google/common/collect/ImmutableList$Itr;

    sget-object p1, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;

    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/TsExtractor;

    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v1, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v1, p0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    new-instance p0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    goto :goto_0

    :pswitch_7
    new-instance p0, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    goto :goto_0

    :pswitch_8
    new-instance p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/media3/extractor/mp4/Mp4Extractor;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(I)V

    goto :goto_0

    :pswitch_9
    new-instance p0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

    goto :goto_0

    :pswitch_a
    new-instance p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance p0, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    goto :goto_0

    :pswitch_c
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/core/view/MenuHostHelper;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/media3/extractor/flac/FlacExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>()V

    goto :goto_0

    :pswitch_d
    new-instance p0, Landroidx/media3/extractor/amr/AmrExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>()V

    goto :goto_0

    :pswitch_e
    new-instance p0, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>()V

    goto :goto_0

    :pswitch_f
    new-instance p0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    goto :goto_0

    :pswitch_10
    new-instance p0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    :goto_0
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 5

    .line 2
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Lcom/adobe/xmp/XMPUtils;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    invoke-virtual {p0, p2, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/ArrayList;)V

    :cond_0
    invoke-static {p1}, Lcom/adobe/xmp/XMPUtils;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v3, :cond_1

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/ArrayList;)V

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    invoke-virtual {p0, v4, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/ArrayList;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
