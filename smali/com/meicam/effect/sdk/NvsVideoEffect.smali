.class public Lcom/meicam/effect/sdk/NvsVideoEffect;
.super Lcom/meicam/effect/sdk/NvsEffect;
.source "SourceFile"


# static fields
.field public static final VIDEOFX_TYPE_BUILTIN:I = 0x0

.field public static final VIDEOFX_TYPE_CUSTOM:I = 0x2

.field public static final VIDEOFX_TYPE_PACKAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsEffect;-><init>()V

    return-void
.end method

.method private native nativeGetBuiltinVideoFxName(J)Ljava/lang/String;
.end method

.method private native nativeGetVideoFxPackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetVideoFxType(J)I
.end method

.method private native nativeMapPointFromCanonicalToParticleSystem(JLcom/meicam/effect/sdk/NvsVideoResolution;Landroid/graphics/PointF;)Landroid/graphics/PointF;
.end method

.method private native nativeSetVideoResolution(JLcom/meicam/effect/sdk/NvsVideoResolution;)V
.end method


# virtual methods
.method public getBuiltinVideoFxName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffect;->nativeGetBuiltinVideoFxName(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFxPackageId()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffect;->nativeGetVideoFxPackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoFxType()I
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffect;->nativeGetVideoFxType(J)I

    move-result p0

    return p0
.end method

.method public mapPointFromCanonicalToParticleSystem(Lcom/meicam/effect/sdk/NvsVideoResolution;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffect;->nativeMapPointFromCanonicalToParticleSystem(JLcom/meicam/effect/sdk/NvsVideoResolution;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public setVideoResolution(Lcom/meicam/effect/sdk/NvsVideoResolution;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffect;->nativeSetVideoResolution(JLcom/meicam/effect/sdk/NvsVideoResolution;)V

    return-void
.end method
