.class public abstract Landroidx/media3/exoplayer/drm/DrmUtil$Api21;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isMediaDrmStateException(Ljava/lang/Throwable;)Z
    .locals 0

    instance-of p0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    return p0
.end method

.method public static mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I
    .locals 0

    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    return p0
.end method
