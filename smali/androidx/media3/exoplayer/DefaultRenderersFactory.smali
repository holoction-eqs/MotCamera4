.class public abstract Landroidx/media3/exoplayer/DefaultRenderersFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final codecAdapterFactory:Landroidx/core/graphics/PathParser$ExtractFloatResult;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    new-instance p1, Landroidx/core/graphics/PathParser$ExtractFloatResult;

    invoke-direct {p1}, Landroidx/core/graphics/PathParser$ExtractFloatResult;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/core/graphics/PathParser$ExtractFloatResult;

    return-void
.end method


# virtual methods
.method public final createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)[Landroidx/media3/exoplayer/Renderer;
    .locals 9

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->codecAdapterFactory:Landroidx/core/graphics/PathParser$ExtractFloatResult;

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultRenderersFactory;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1, p1, p2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroid/content/Context;Landroidx/core/graphics/PathParser$ExtractFloatResult;Landroid/os/Handler;Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p2, Landroidx/media3/exoplayer/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/RegularImmutableList;

    sget p2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;->$r8$clinit:I

    new-instance p2, Landroidx/core/view/MenuHostHelper;

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media3/common/audio/AudioProcessor;

    invoke-direct {p2, v1}, Landroidx/core/view/MenuHostHelper;-><init>([Landroidx/media3/common/audio/AudioProcessor;)V

    const/4 p2, 0x0

    if-eqz v2, :cond_9

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    sget v3, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api23;->isBluetoothConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v5, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v5}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    const/16 v6, 0x11

    const/4 v7, 0x1

    if-lt v3, v6, :cond_2

    sget-object v6, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "Amazon"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "Xiaomi"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    move v6, v0

    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "external_surround_sound_enabled"

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_3

    sget-object v6, Landroidx/media3/exoplayer/audio/AudioCapabilities;->EXTERNAL_SURROUND_SOUND_ENCODINGS:Lcom/google/common/collect/RegularImmutableList;

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/List;)V

    :cond_3
    const/16 v6, 0x1d

    const/16 v8, 0xa

    if-lt v3, v6, :cond_6

    invoke-static {v2}, Landroidx/media3/common/util/Util;->isTv(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    if-lt v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v7

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    if-eqz v3, :cond_6

    :cond_5
    invoke-static {}, Landroidx/media3/exoplayer/audio/AudioCapabilities$Api29;->getDirectPlaybackSupportedEncodings()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/List;)V

    new-instance v1, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lkotlin/ResultKt;->toArray(Ljava/util/Collection;)[I

    move-result-object v3

    invoke-direct {v1, v3, v8}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_8

    const-string v3, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v7, :cond_8

    const-string v3, "android.media.extra.ENCODINGS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Lkotlin/ResultKt;->asList([I)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/List;)V

    :cond_7
    new-instance v3, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    invoke-static {v4}, Lkotlin/ResultKt;->toArray(Ljava/util/Collection;)[I

    move-result-object v4

    const-string v5, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v3, v4, v1}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    invoke-static {v1}, Lkotlin/ResultKt;->toArray(Ljava/util/Collection;)[I

    move-result-object v1

    invoke-direct {v3, v1, v8}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    :cond_9
    :goto_2
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    new-instance v3, Landroidx/media3/common/FlagSet$Builder;

    invoke-direct {v3}, Landroidx/media3/common/FlagSet$Builder;-><init>()V

    invoke-virtual {v3}, Landroidx/media3/common/FlagSet$Builder;->open()Z

    const/16 v3, 0x12

    if-lt v1, v3, :cond_a

    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string v3, "getLatency"

    invoke-virtual {v1, v3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    new-instance p2, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {p2}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;-><init>()V

    new-instance v3, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v3}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;-><init>()V

    filled-new-array {v3, p2, v1}, [Ljava/lang/Object;

    move-result-object p2

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lkotlin/io/ExceptionsKt;->checkElementsNotNull(I[Ljava/lang/Object;)V

    invoke-static {v1, p2}, Lcom/google/common/collect/ImmutableList;->asImmutableList(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    new-instance p2, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-direct {p2}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;-><init>()V

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableList;

    sget-object p2, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    sget-object p2, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    const-string p2, "context"

    invoke-static {v2, p2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v1, Landroidx/media3/exoplayer/text/TextRenderer;

    invoke-direct {v1, p4, p2}, Landroidx/media3/exoplayer/text/TextRenderer;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/metadata/MetadataRenderer;

    invoke-direct {p2, p5, p1}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;Landroid/os/Looper;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;

    invoke-direct {p1}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;-><init>()V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;

    new-instance p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;

    invoke-direct {p1, p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory$buildMiscellaneousRenderers$1;-><init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$ControllerRendererFactory;)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array p0, v0, [Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/media3/exoplayer/Renderer;

    return-object p0
.end method
