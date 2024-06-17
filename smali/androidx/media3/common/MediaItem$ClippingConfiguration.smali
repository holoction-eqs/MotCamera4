.class public abstract Landroidx/media3/common/MediaItem$ClippingConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_END_POSITION_MS:Ljava/lang/String;

.field public static final FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

.field public static final FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

.field public static final FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

.field public static final FIELD_START_POSITION_MS:Ljava/lang/String;

.field public static final UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;


# instance fields
.field public final endPositionMs:J

.field public final relativeToDefaultPosition:Z

.field public final relativeToLiveWindow:Z

.field public final startPositionMs:J

.field public final startsAtKeyFrame:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    new-instance v1, Landroidx/media3/common/MediaItem$ClippingProperties;

    invoke-direct {v1, v0}, Landroidx/media3/common/MediaItem$ClippingProperties;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    sput-object v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_START_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_END_POSITION_MS:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_LIVE_WINDOW:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_RELATIVE_TO_DEFAULT_POSITION:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->FIELD_STARTS_AT_KEY_FRAME:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->endPositionMs:J

    iput-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToLiveWindow:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v0, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->relativeToDefaultPosition:Z

    iput-boolean v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->startsAtKeyFrame:Z

    iput-boolean p1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v3, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    iget-wide v5, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    iget-wide v5, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    iget-boolean v3, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    iget-boolean p1, p1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    add-int/2addr v0, p0

    return v0
.end method
