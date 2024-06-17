.class public final Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    return-void
.end method
