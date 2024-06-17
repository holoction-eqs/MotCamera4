.class public Lcom/meicam/effect/sdk/NvsFx;
.super Lcom/meicam/effect/sdk/NvsObject;
.source "SourceFile"


# static fields
.field public static final FACE_WARP_EFFECT_STRATEGY_CUSTOM:I = 0x7fffffff

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_AFTER:I = 0x2

.field public static final KEY_FRAME_FIND_MODE_INPUT_TIME_BEFORE:I = 0x1

.field public static final REGION_COORDINATE_SYSTEM_TYPE_NDC:I = 0x0

.field public static final REGION_COORDINATE_SYSTEM_TYPE_TIMELINE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsObject;-><init>()V

    return-void
.end method

.method private native nativeClearExprVar(JLjava/lang/String;)V
.end method

.method private native nativeClearExprVarCtx(J)V
.end method

.method private native nativeFindKeyframeTime(JLjava/lang/String;JI)J
.end method

.method private native nativeGetARFaceContext(J)Lcom/meicam/effect/sdk/NvsARFaceContext;
.end method

.method private native nativeGetARSceneManipulate(J)Lcom/meicam/effect/sdk/NvsARSceneManipulate;
.end method

.method private native nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsArbitraryData;
.end method

.method private native nativeGetBooleanVal(JLjava/lang/String;J)Z
.end method

.method private native nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsColor;
.end method

.method private native nativeGetDescription(J)Lcom/meicam/effect/sdk/NvsFxDescription;
.end method

.method private native nativeGetExprObjectVar(JLjava/lang/String;)Ljava/lang/Object;
.end method

.method private native nativeGetExprStringVar(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetExprVar(JLjava/lang/String;)D
.end method

.method private native nativeGetFilterIntensity(J)F
.end method

.method private native nativeGetFilterMask(J)Z
.end method

.method private native nativeGetFloatVal(JLjava/lang/String;J)D
.end method

.method private native nativeGetIgnoreBackground(J)Z
.end method

.method private native nativeGetIntVal(JLjava/lang/String;J)I
.end method

.method private native nativeGetInverseRegion(J)Z
.end method

.method private native nativeGetKeyFrameControlPoint(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsControlPointPair;
.end method

.method private native nativeGetKeyFrameControlPointMode(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsControlPointModePair;
.end method

.method private native nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method private native nativeGetPaintingEffectContext(J)Lcom/meicam/effect/sdk/NvsPaintingEffectContext;
.end method

.method private native nativeGetParticleSystemContext(J)Lcom/meicam/effect/sdk/NvsParticleSystemContext;
.end method

.method private native nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition2D;
.end method

.method private native nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition3D;
.end method

.method private native nativeGetRegion(J)[F
.end method

.method private native nativeGetRegionCoordinateSystemType(J)I
.end method

.method private native nativeGetRegionInfo(JJ)Lcom/meicam/effect/sdk/NvsMaskRegionInfo;
.end method

.method private native nativeGetRegional(J)Z
.end method

.method private native nativeGetRegionalFeatherWidth(J)F
.end method

.method private native nativeGetRegionalFeatherWidthAtTime(JJ)F
.end method

.method private native nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;
.end method

.method private native nativeHasKeyframeList(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveAllKeyframe(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z
.end method

.method private native nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsArbitraryData;J)V
.end method

.method private native nativeSetBooleanVal(JLjava/lang/String;ZJ)V
.end method

.method private native nativeSetColorVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsColor;J)V
.end method

.method private native nativeSetExprObjectVar(JLjava/lang/String;Ljava/lang/Object;)V
.end method

.method private native nativeSetExprStringVar(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetExprVar(JLjava/lang/String;D)V
.end method

.method private native nativeSetFilterIntensity(JF)V
.end method

.method private native nativeSetFilterMask(JZ)V
.end method

.method private native nativeSetFloatVal(JLjava/lang/String;DJ)V
.end method

.method private native nativeSetIgnoreBackground(JZ)V
.end method

.method private native nativeSetIntVal(JLjava/lang/String;IJ)V
.end method

.method private native nativeSetInverseRegion(JZ)V
.end method

.method private native nativeSetKeyFrameControlPoint(JLjava/lang/String;JLcom/meicam/effect/sdk/NvsControlPointPair;)Z
.end method

.method private native nativeSetKeyFrameControlPointMode(JLjava/lang/String;JLcom/meicam/effect/sdk/NvsControlPointModePair;)Z
.end method

.method private native nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method

.method private native nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsPosition2D;J)V
.end method

.method private native nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsPosition3D;J)V
.end method

.method private native nativeSetRegion(J[F)V
.end method

.method private native nativeSetRegionCoordinateSystemType(JI)V
.end method

.method private native nativeSetRegionInfo(JLcom/meicam/effect/sdk/NvsMaskRegionInfo;J)V
.end method

.method private native nativeSetRegional(JZ)V
.end method

.method private native nativeSetRegionalFeatherWidth(JF)V
.end method

.method private native nativeSetRegionalFeatherWidthAtTime(JFJ)V
.end method

.method private native nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V
.end method


# virtual methods
.method public clearExprVar(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeClearExprVar(JLjava/lang/String;)V

    return-void
.end method

.method public clearExprVarCtx()V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeClearExprVarCtx(J)V

    return-void
.end method

.method public findKeyframeTime(Ljava/lang/String;JI)J
    .locals 7

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeFindKeyframeTime(JLjava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getARFaceContext()Lcom/meicam/effect/sdk/NvsARFaceContext;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetARFaceContext(J)Lcom/meicam/effect/sdk/NvsARFaceContext;

    move-result-object p0

    return-object p0
.end method

.method public getARSceneManipulate()Lcom/meicam/effect/sdk/NvsARSceneManipulate;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetARSceneManipulate(J)Lcom/meicam/effect/sdk/NvsARSceneManipulate;

    move-result-object p0

    return-object p0
.end method

.method public getArbDataVal(Ljava/lang/String;)Lcom/meicam/effect/sdk/NvsArbitraryData;
    .locals 6

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsArbitraryData;

    move-result-object p0

    return-object p0
.end method

.method public getArbDataValAtTime(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsArbitraryData;J)Lcom/meicam/effect/sdk/NvsArbitraryData;
    .locals 6

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetArbDataVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsArbitraryData;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanVal(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getBooleanValAtTime(Ljava/lang/String;J)Z
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetBooleanVal(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getColorVal(Ljava/lang/String;)Lcom/meicam/effect/sdk/NvsColor;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getColorValAtTime(Ljava/lang/String;J)Lcom/meicam/effect/sdk/NvsColor;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetColorVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Lcom/meicam/effect/sdk/NvsFxDescription;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetDescription(J)Lcom/meicam/effect/sdk/NvsFxDescription;

    move-result-object p0

    return-object p0
.end method

.method public getExprObjectVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetExprObjectVar(JLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getExprStringVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetExprStringVar(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExprVar(Ljava/lang/String;)D
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetExprVar(JLjava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFilterIntensity()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetFilterIntensity(J)F

    move-result p0

    return p0
.end method

.method public getFilterMask()Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetFilterMask(J)Z

    move-result p0

    return p0
.end method

.method public getFloatVal(Ljava/lang/String;)D
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloatValAtTime(Ljava/lang/String;J)D
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetFloatVal(JLjava/lang/String;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getIgnoreBackground()Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetIgnoreBackground(J)Z

    move-result p0

    return p0
.end method

.method public getIntVal(Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public getIntValAtTime(Ljava/lang/String;J)I
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetIntVal(JLjava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public getInverseRegion()Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetInverseRegion(J)Z

    move-result p0

    return p0
.end method

.method public getKeyFrameControlPoint(Ljava/lang/String;J)Lcom/meicam/effect/sdk/NvsControlPointPair;
    .locals 6

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetKeyFrameControlPoint(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsControlPointPair;

    move-result-object p0

    return-object p0
.end method

.method public getKeyFrameControlPointMode(Ljava/lang/String;J)Lcom/meicam/effect/sdk/NvsControlPointModePair;
    .locals 6

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetKeyFrameControlPointMode(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsControlPointModePair;

    move-result-object p0

    return-object p0
.end method

.method public getMenuVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMenuValAtTime(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetMenuVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaintingEffectContext()Lcom/meicam/effect/sdk/NvsPaintingEffectContext;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetPaintingEffectContext(J)Lcom/meicam/effect/sdk/NvsPaintingEffectContext;

    move-result-object p0

    return-object p0
.end method

.method public getParticleSystemContext()Lcom/meicam/effect/sdk/NvsParticleSystemContext;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetParticleSystemContext(J)Lcom/meicam/effect/sdk/NvsParticleSystemContext;

    move-result-object p0

    return-object p0
.end method

.method public getPosition2DVal(Ljava/lang/String;)Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition2D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition2DValAtTime(Ljava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition2D;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetPosition2DVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition2D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition3DVal(Ljava/lang/String;)Lcom/meicam/effect/sdk/NvsPosition3D;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition3D;

    move-result-object p0

    return-object p0
.end method

.method public getPosition3DValAtTime(Ljava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition3D;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetPosition3DVal(JLjava/lang/String;J)Lcom/meicam/effect/sdk/NvsPosition3D;

    move-result-object p0

    return-object p0
.end method

.method public getRegion()[F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegion(J)[F

    move-result-object p0

    return-object p0
.end method

.method public getRegionCoordinateSystemType()I
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegionCoordinateSystemType(J)I

    move-result p0

    return p0
.end method

.method public getRegionInfo()Lcom/meicam/effect/sdk/NvsMaskRegionInfo;
    .locals 4

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegionInfo(JJ)Lcom/meicam/effect/sdk/NvsMaskRegionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRegionInfoAtTime(J)Lcom/meicam/effect/sdk/NvsMaskRegionInfo;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegionInfo(JJ)Lcom/meicam/effect/sdk/NvsMaskRegionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRegional()Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegional(J)Z

    move-result p0

    return p0
.end method

.method public getRegionalFeatherWidth()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegionalFeatherWidth(J)F

    move-result p0

    return p0
.end method

.method public getRegionalFeatherWidthAtTime(J)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetRegionalFeatherWidthAtTime(JJ)F

    move-result p0

    return p0
.end method

.method public getStringVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringValAtTime(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeGetStringVal(JLjava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasKeyframeList(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeHasKeyframeList(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAllKeyframe(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeRemoveAllKeyframe(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeKeyframeAtTime(Ljava/lang/String;J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public setArbDataVal(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsArbitraryData;)V
    .locals 7

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setArbDataValAtTime(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsArbitraryData;J)V
    .locals 7

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetArbDataVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsArbitraryData;J)V

    return-void
.end method

.method public setBooleanVal(Ljava/lang/String;Z)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setBooleanValAtTime(Ljava/lang/String;ZJ)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetBooleanVal(JLjava/lang/String;ZJ)V

    return-void
.end method

.method public setColorVal(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsColor;)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsColor;J)V

    return-void
.end method

.method public setColorValAtTime(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsColor;J)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetColorVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsColor;J)V

    return-void
.end method

.method public setExprObjectVar(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetExprObjectVar(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExprStringVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetExprStringVar(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExprVar(Ljava/lang/String;D)V
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetExprVar(JLjava/lang/String;D)V

    return-void
.end method

.method public setFilterIntensity(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetFilterIntensity(JF)V

    return-void
.end method

.method public setFilterMask(Z)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetFilterMask(JZ)V

    return-void
.end method

.method public setFloatVal(Ljava/lang/String;D)V
    .locals 8

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v6, -0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setFloatValAtTime(Ljava/lang/String;DJ)V
    .locals 8

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetFloatVal(JLjava/lang/String;DJ)V

    return-void
.end method

.method public setIgnoreBackground(Z)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetIgnoreBackground(JZ)V

    return-void
.end method

.method public setIntVal(Ljava/lang/String;I)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setIntValAtTime(Ljava/lang/String;IJ)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetIntVal(JLjava/lang/String;IJ)V

    return-void
.end method

.method public setInverseRegion(Z)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetInverseRegion(JZ)V

    return-void
.end method

.method public setKeyFrameControlPoint(Ljava/lang/String;JLcom/meicam/effect/sdk/NvsControlPointPair;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetKeyFrameControlPoint(JLjava/lang/String;JLcom/meicam/effect/sdk/NvsControlPointPair;)Z

    move-result p0

    return p0
.end method

.method public setKeyFrameControlPointMode(Ljava/lang/String;JLcom/meicam/effect/sdk/NvsControlPointModePair;)Z
    .locals 7

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetKeyFrameControlPointMode(JLjava/lang/String;JLcom/meicam/effect/sdk/NvsControlPointModePair;)Z

    move-result p0

    return p0
.end method

.method public setMenuVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setMenuValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetMenuVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setPosition2DVal(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsPosition2D;)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition2DValAtTime(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsPosition2D;J)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetPosition2DVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsPosition2D;J)V

    return-void
.end method

.method public setPosition3DVal(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsPosition3D;)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setPosition3DValAtTime(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsPosition3D;J)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetPosition3DVal(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsPosition3D;J)V

    return-void
.end method

.method public setRegion([F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegion(J[F)V

    return-void
.end method

.method public setRegionCoordinateSystemType(I)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegionCoordinateSystemType(JI)V

    return-void
.end method

.method public setRegionInfo(Lcom/meicam/effect/sdk/NvsMaskRegionInfo;)V
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegionInfo(JLcom/meicam/effect/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegionInfoAtTime(Lcom/meicam/effect/sdk/NvsMaskRegionInfo;J)V
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegionInfo(JLcom/meicam/effect/sdk/NvsMaskRegionInfo;J)V

    return-void
.end method

.method public setRegional(Z)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegional(JZ)V

    return-void
.end method

.method public setRegionalFeatherWidth(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegionalFeatherWidth(JF)V

    return-void
.end method

.method public setRegionalFeatherWidthAtTime(FJ)V
    .locals 6

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetRegionalFeatherWidthAtTime(JFJ)V

    return-void
.end method

.method public setStringVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setStringValAtTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsObject;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsFx;->nativeSetStringVal(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
