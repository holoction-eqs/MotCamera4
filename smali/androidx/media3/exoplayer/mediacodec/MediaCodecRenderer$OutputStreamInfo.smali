.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;


# instance fields
.field public final formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

.field public final previousStreamLastBufferTimeUs:J

.field public final streamOffsetUs:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJ)V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    new-instance p1, Lcom/motorola/camera/saving/XmpData$GDepth;

    invoke-direct {p1}, Lcom/motorola/camera/saving/XmpData$GDepth;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Lcom/motorola/camera/saving/XmpData$GDepth;

    return-void
.end method
