.class public Lcom/meicam/effect/sdk/NvsARFaceContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;,
        Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;,
        Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;,
        Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;,
        Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;
    }
.end annotation


# static fields
.field public static final OBJECT_LAND_MARK_TYPE_ANIMAL:I = 0x1

.field public static final OBJECT_LAND_MARK_TYPE_FACE:I = 0x0

.field public static final OBJECT_TRACKING_TYPE_ANIMAL:I = 0x1

.field public static final OBJECT_TRACKING_TYPE_FACE:I


# instance fields
.field m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

.field m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

.field private m_contextInterface:J

.field m_detectActionCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

.field m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

.field m_landmarkCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

.field mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private createInternalCallback()V
    .locals 1

    iget-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/meicam/effect/sdk/NvsARFaceContext$1;

    invoke-direct {v0, p0}, Lcom/meicam/effect/sdk/NvsARFaceContext$1;-><init>(Lcom/meicam/effect/sdk/NvsARFaceContext;)V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeIsObjectTracking(JI)Z
.end method

.method private native nativeSetARFaceCallback(JLcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V
.end method

.method private native nativeSetDualBufferInputUsed(JZ)V
.end method

.method private native nativeSetReloadCurSticker(JZ)V
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsARFaceContext;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isFaceTracking()Z
    .locals 3

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeIsObjectTracking(JI)Z

    move-result p0

    return p0
.end method

.method public isObjectTracking(I)Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeIsObjectTracking(JI)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeCleanup(J)V

    iput-wide v2, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    :cond_0
    return-void
.end method

.method public setContextCallback(Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setContextDetectActionCallback(Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setContextErrorCallback(Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setContextInterface(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    return-void
.end method

.method public setContextLandmarkCallback(Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_landmarkCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextLandmarkCallback;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsARFaceContext;->createInternalCallback()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_errorCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextErrorCallback;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_detectActionCallback:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextDetectActionCallback;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    iget-object p1, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_callbackinternal:Lcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeSetARFaceCallback(JLcom/meicam/effect/sdk/NvsARFaceContext$NvsARFaceContextInternalCallback;)V

    return-void
.end method

.method public setDualBufferInputUsed(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeSetDualBufferInputUsed(JZ)V

    return-void
.end method

.method public setReloadCurSticker()V
    .locals 3

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARFaceContext;->m_contextInterface:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/meicam/effect/sdk/NvsARFaceContext;->nativeSetReloadCurSticker(JZ)V

    return-void
.end method
