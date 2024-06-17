.class public final Landroidx/media3/common/MediaItem$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

.field public final clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

.field public final customCacheKey:Ljava/lang/String;

.field public drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

.field public liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

.field public mediaId:Ljava/lang/String;

.field public final mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field public final mimeType:Ljava/lang/String;

.field public final requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

.field public final streamKeys:Ljava/util/List;

.field public subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

.field public tag:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 1
    sget-object v0, Lcom/google/common/collect/RegularImmutableList;->EMPTY:Lcom/google/common/collect/RegularImmutableList;

    .line 2
    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    new-instance v0, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    sget-object v0, Landroidx/media3/common/MediaItem$RequestMetadata;->EMPTY:Landroidx/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$ClippingProperties;)V

    .line 5
    iput-object v1, p0, Landroidx/media3/common/MediaItem$Builder;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v1, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 7
    iput-object v1, p0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    iget-object v0, p1, Landroidx/media3/common/MediaItem;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->mimeType:Ljava/lang/String;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    iget-object v0, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$DrmConfiguration;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v1, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    invoke-direct {v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>()V

    :goto_0
    iput-object v1, p0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    :cond_1
    return-void
.end method


# virtual methods
.method public final build()Landroidx/media3/common/MediaItem;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object v2, v1, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    iget-object v3, v0, Landroidx/media3/common/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    new-instance v11, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v4, v0, Landroidx/media3/common/MediaItem$Builder;->mimeType:Ljava/lang/String;

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object v5, v2, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    if-eqz v5, :cond_2

    new-instance v1, Landroidx/media3/common/MediaItem$DrmConfiguration;

    invoke-direct {v1, v2}, Landroidx/media3/common/MediaItem$DrmConfiguration;-><init>(Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;)V

    :cond_2
    move-object v5, v1

    iget-object v6, v0, Landroidx/media3/common/MediaItem$Builder;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    iget-object v7, v0, Landroidx/media3/common/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v8, v0, Landroidx/media3/common/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/common/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Landroidx/media3/common/MediaItem$Builder;->tag:Ljava/lang/Object;

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Landroidx/media3/common/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/MediaItem$DrmConfiguration;Landroidx/media3/common/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    move-object v15, v11

    goto :goto_2

    :cond_3
    move-object v15, v1

    :goto_2
    new-instance v1, Landroidx/media3/common/MediaItem;

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    move-object v13, v2

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v14, v2}, Landroidx/media3/common/MediaItem$ClippingProperties;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v4, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->targetOffsetMs:J

    iget-wide v6, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minOffsetMs:J

    iget-wide v8, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxOffsetMs:J

    iget v10, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->minPlaybackSpeed:F

    iget v11, v2, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->maxPlaybackSpeed:F

    move-object/from16 v3, v16

    invoke-direct/range {v3 .. v11}, Landroidx/media3/common/MediaItem$LiveConfiguration;-><init>(JJJFF)V

    iget-object v2, v0, Landroidx/media3/common/MediaItem$Builder;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    sget-object v2, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    :goto_4
    move-object/from16 v17, v2

    iget-object v0, v0, Landroidx/media3/common/MediaItem$Builder;->requestMetadata:Landroidx/media3/common/MediaItem$RequestMetadata;

    move-object v12, v1

    move-object/from16 v18, v0

    invoke-direct/range {v12 .. v18}, Landroidx/media3/common/MediaItem;-><init>(Ljava/lang/String;Landroidx/media3/common/MediaItem$ClippingProperties;Landroidx/media3/common/MediaItem$LocalConfiguration;Landroidx/media3/common/MediaItem$LiveConfiguration;Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/MediaItem$RequestMetadata;)V

    return-object v1
.end method
