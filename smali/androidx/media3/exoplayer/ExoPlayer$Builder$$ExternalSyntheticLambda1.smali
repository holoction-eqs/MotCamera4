.class public final synthetic Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_1
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/DefaultExtractorsFactory;)V

    return-object v0

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    sget-object v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/RegularImmutableList;

    const-class v0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->singletonInstance:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    new-instance p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    iget-object v3, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v4, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/HashMap;

    iget v5, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v6, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->clock:Landroidx/media3/common/util/SystemClock;

    iget-boolean v7, v1, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/HashMap;ILandroidx/media3/common/util/SystemClock;Z)V

    sput-object p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->singletonInstance:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    :cond_0
    sget-object p0, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->singletonInstance:Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
