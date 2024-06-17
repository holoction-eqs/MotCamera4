.class public Lcom/meicam/effect/sdk/NvsARSceneManipulate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;,
        Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceFeatureInfo;,
        Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsFaceBoundingRectInfo;
    }
.end annotation


# static fields
.field public static final CheckedFunctionType_Count:I = 0x1

.field public static final CheckedFunctionType_Matte:I


# instance fields
.field m_callback:Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;

.field private m_contextInterface:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_callback:Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;

    return-void
.end method

.method private native nativeCleanup(J)V
.end method

.method private native nativeIsFunctionAvailable(JI)Z
.end method

.method private native nativeResetSkinColor(J)V
.end method

.method private native nativeResetTracking(J)V
.end method

.method private native nativeSetARSceneManipulateCallback(JLcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;)V
.end method

.method private native nativeSetDetectionAutoProbe(JZ)V
.end method

.method private native nativeSetDetectionMode(JI)V
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->release()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isFunctionAvailable(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeIsFunctionAvailable(JI)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_callback:Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeCleanup(J)V

    iput-wide v2, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    :cond_0
    return-void
.end method

.method public resetSkinColor()V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeResetSkinColor(J)V

    return-void
.end method

.method public resetTracking()V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeResetTracking(J)V

    return-void
.end method

.method public setARSceneCallback(Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_callback:Lcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeSetARSceneManipulateCallback(JLcom/meicam/effect/sdk/NvsARSceneManipulate$NvsARSceneManipulateCallback;)V

    return-void
.end method

.method public setContextInterface(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    return-void
.end method

.method public setDetectionAutoProbe(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeSetDetectionAutoProbe(JZ)V

    return-void
.end method

.method public setDetectionMode(I)V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->m_contextInterface:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsARSceneManipulate;->nativeSetDetectionMode(JI)V

    return-void
.end method
