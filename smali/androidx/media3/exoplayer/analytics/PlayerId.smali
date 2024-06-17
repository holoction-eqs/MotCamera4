.class public final Landroidx/media3/exoplayer/analytics/PlayerId;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-direct {v0}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>()V

    goto :goto_0

    :cond_0
    sget v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;->$r8$clinit:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;)V

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/adobe/xmp/XMPUtils;->checkState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 1

    .line 2
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlayerId;->logSessionIdApi31:Landroidx/media3/exoplayer/analytics/PlayerId$LogSessionIdApi31;

    return-void
.end method
