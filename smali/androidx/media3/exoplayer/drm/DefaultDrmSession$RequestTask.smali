.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allowRetry:Z

.field public errorCount:I

.field public final request:Ljava/lang/Object;

.field public final taskId:J


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->taskId:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->allowRetry:Z

    iput-object p6, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$RequestTask;->request:Ljava/lang/Object;

    return-void
.end method
