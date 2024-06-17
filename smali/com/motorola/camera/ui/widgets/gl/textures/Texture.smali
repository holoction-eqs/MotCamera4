.class public abstract Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_VECTOR:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public static final MATRIX_ORIGIN:[F


# instance fields
.field public mAlpha:F

.field public mDisplayOrientation:I

.field public final mMMatrix:[F

.field public final mMvpMatrix:[F

.field public mRect:Lcom/google/common/base/Splitter$1;

.field public mRectDirty:Z

.field public final mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

.field public final mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

.field public final mScaledSize:Landroid/graphics/PointF;

.field public final mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mSourceSize:Landroid/graphics/Point;

.field public volatile mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

.field public final mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

.field public mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->EMPTY_VECTOR:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->MATRIX_ORIGIN:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    .line 2
    array-length v1, v1

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 3
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v1

    .line 4
    array-length v1, v1

    new-array v1, v1, [Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 5
    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v0

    .line 6
    array-length v0, v0

    new-array v0, v0, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    new-instance v0, Lcom/google/common/base/Splitter$1;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v2, 0x4

    .line 7
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    .line 8
    array-length v3, v3

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    .line 9
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v3

    .line 10
    array-length v3, v3

    new-array v3, v3, [Lcom/motorola/camera/ui/widgets/gl/Rotation;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    .line 11
    invoke-static {v2}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v2

    .line 12
    array-length v2, v2

    new-array v2, v2, [Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    new-instance v2, Lcom/google/common/base/Splitter$1;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lcom/google/common/base/Splitter$1;-><init>(Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    iget-boolean v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    iget-object v2, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v4

    :goto_0
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-direct {v3, v1}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V

    aput-object v3, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    array-length v1, v0

    if-ge v4, v1, :cond_5

    aget-object v0, v0, v4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    aput-object v2, v1, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    iget-boolean v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    iget-object v1, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static multiplyMatrix([F[F[F)V
    .locals 13

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, p0

    move-object v9, p2

    move-object v11, p0

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static multiplyMatrix([F[F[F[F)V
    .locals 7

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static rotate([FFFFF)V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static scale([FFFF)V
    .locals 7

    const/16 v0, 0x10

    new-array v3, v0, [F

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v3, v0, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static translate([FFFF)V
    .locals 7

    const/16 v0, 0x10

    new-array v3, v0, [F

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    invoke-static {v3, v0, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized applyMatrix()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-static {v2, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->scale([FFFF)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v5, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    invoke-static {v2, v3, v4, v5, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->rotate([FFFFF)V

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    iget v0, v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    invoke-static {v2, v3, v4, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->translate([FFFF)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelTouch()V
    .locals 1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mPressedState:I

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->updateDrawableState()V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->removeTapCallback()V

    return-void
.end method

.method public final clearRotation()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    return-void
.end method

.method public final clearScale()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    return-void
.end method

.method public final clearTranslation()V
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    return-void
.end method

.method public draw([F[F)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDraw([F[F)V

    :cond_0
    return-void
.end method

.method public drawFbo([F[F)V
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->onDrawFbo([F[F)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized getAlpha()F
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLayoutSize()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getPostScale()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p0

    return-object p0
.end method

.method public final getPreRotation()Lcom/motorola/camera/ui/widgets/gl/Rotation;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getRect()Lcom/google/common/base/Splitter$1;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->updateRect()V

    :cond_0
    new-instance v0, Lcom/google/common/base/Splitter$1;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    iget-object v1, v1, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object v3, v1

    check-cast v3, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object v4, v1

    check-cast v4, Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    check-cast v1, Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/common/base/Splitter$1;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-direct {v0}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    add-int/lit8 v2, p1, -0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    aget-object p0, p0, v2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iput p1, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    iput p0, v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    throw v1
.end method

.method public final getScale$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    add-int/lit8 v2, p1, -0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object p0, p0, v2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    throw v1
.end method

.method public getScaledHeight()F
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    array-length v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getScaledWidth()F
    .locals 4

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    array-length v0, p0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    mul-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;
    .locals 1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;-><init>(Lcom/motorola/camera/ui/widgets/gl/textures/Texture;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    iput-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mTouchTexture:Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTouchBehavior:Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    return-object p0
.end method

.method public final getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;
    .locals 3

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    add-int/lit8 v2, p1, -0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object p0, p0, v2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    goto :goto_0

    :cond_0
    throw v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    throw v1
.end method

.method public isSelected()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized isVisible()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract loadTexture()V
.end method

.method public onChangePosition(Landroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onDrag(ZLandroid/graphics/PointF;Landroid/graphics/PointF;Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 0

    return-void
.end method

.method public abstract onDraw([F[F)V
.end method

.method public onDrawFbo([F[F)V
    .locals 0

    return-void
.end method

.method public onLongPress(ZLandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onPreDraw([F[F)V
    .locals 0

    return-void
.end method

.method public onSingleTap(Landroid/graphics/PointF;JJ)V
    .locals 0

    return-void
.end method

.method public onTouchDown(JLandroid/graphics/PointF;)V
    .locals 0

    return-void
.end method

.method public onTouchUp$1()V
    .locals 0

    return-void
.end method

.method public onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized setAlpha(F)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClickable(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    and-int/lit8 p1, p1, -0x5

    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    return-void
.end method

.method public final setLongClickable(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTouchBehavior()Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;

    move-result-object p0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture$1;->mFlags:I

    return-void
.end method

.method public final setPostRotation(FFF)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public setPostScale(FFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setPostScale(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public setPostTranslation(FFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public setPostTranslation(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 1

    .line 2
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public setPreRotation(FF)V
    .locals 2

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public final setPreRotation(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public final setPreScale(FF)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setPreTranslation(FFF)V
    .locals 1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v0, p1, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setRotation(FFFF)V
    .locals 1

    .line 1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(FFFF)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public final setRotation(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 1

    .line 2
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V

    return-void
.end method

.method public final setRotation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Rotation;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    add-int/lit8 p2, p1, -0x1

    aget-object v2, v1, p2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_0

    aput-object v0, v1, p2

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    if-eqz p1, :cond_9

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, v2

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;-><init>(Lcom/motorola/camera/ui/widgets/gl/Rotation;)V

    aput-object p1, v1, v2

    goto :goto_0

    :cond_3
    throw v0

    :cond_4
    if-eqz p1, :cond_8

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ui/widgets/gl/Rotation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    aget-object p1, v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v0, p2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    iget p2, p2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    iput p2, p1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mZ:F

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    throw v0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    :cond_7
    return-void

    :cond_8
    throw v0

    :cond_9
    throw v0
.end method

.method public setScale(FF)V
    .locals 2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, p2, v1}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    return-void
.end method

.method public final setScale$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    add-int/lit8 p2, p1, -0x1

    aget-object v2, v1, p2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_0

    aput-object v0, v1, p2

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    if-eqz p1, :cond_9

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, v2

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    aput-object p1, v1, v2

    goto :goto_0

    :cond_3
    throw v0

    :cond_4
    if-eqz p1, :cond_8

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    aget-object p1, v1, v2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    throw v0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    :cond_7
    return-void

    :cond_8
    throw v0

    :cond_9
    throw v0
.end method

.method public final setTranslation$enumunboxing$(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    add-int/lit8 p2, p1, -0x1

    aget-object v2, v1, p2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_0

    aput-object v0, v1, p2

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    if-eqz p1, :cond_9

    add-int/lit8 v2, p1, -0x1

    aget-object v3, v1, v2

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    aput-object p1, v1, v2

    goto :goto_0

    :cond_3
    throw v0

    :cond_4
    if-eqz p1, :cond_8

    invoke-virtual {v3, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p1, :cond_5

    aget-object p1, v1, v2

    invoke-virtual {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->set(Lcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    throw v0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->applyMatrix()V

    :cond_7
    return-void

    :cond_8
    throw v0

    :cond_9
    throw v0
.end method

.method public declared-synchronized setVisibility(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sourceSize:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mSourceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " scaledSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScaledSize:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " visible:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " alpha:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mAlpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final undoMotionEventTransforms(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mScales:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float v5, v4, v5

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v3, v4, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_0
    const/4 v3, 0x2

    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float v6, v4, v6

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float v5, v4, v5

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_1
    const/4 v5, 0x3

    aget-object v1, v1, v5

    if-eqz v1, :cond_2

    iget v6, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    div-float v6, v4, v6

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    div-float/2addr v4, v1

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_2
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mTranslations:[Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    aget-object v4, v1, v2

    if-eqz v4, :cond_3

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v6, v6

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v4, v4

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    iget v6, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v6, v6

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v4, v4

    invoke-virtual {v0, v6, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_4
    aget-object v1, v1, v5

    if-eqz v1, :cond_5

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v4, v4

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_5
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRotations:[Lcom/motorola/camera/ui/widgets/gl/Rotation;

    aget-object v1, p0, v2

    if-eqz v1, :cond_6

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    neg-float v2, v2

    iget v4, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-virtual {v0, v2, v4, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_6
    aget-object v1, p0, v3

    if-eqz v1, :cond_7

    iget v2, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    neg-float v2, v2

    iget v3, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v1, v1, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_7
    aget-object p0, p0, v5

    if-eqz p0, :cond_8

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    neg-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-virtual {v0, v1, v2, p0}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public abstract unloadTexture()V
.end method

.method public updateDrawableState()V
    .locals 0

    return-void
.end method

.method public final updateRect()V
    .locals 11

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getRotation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Rotation;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getTranslation$enumunboxing$(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getPostTranslation()Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object v7

    sget-object v8, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->EMPTY_VECTOR:Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-virtual {v8, v6}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget v9, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_0
    iget v6, v5, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    const/4 v9, 0x0

    cmpl-float v10, v6, v9

    if-eqz v10, :cond_1

    neg-float v6, v6

    iget v10, v5, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-virtual {v0, v6, v10, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :cond_1
    invoke-virtual {v8, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget v5, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    :cond_2
    iget v4, v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    cmpl-float v5, v4, v9

    if-eqz v5, :cond_3

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mX:F

    iget v6, v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mY:F

    invoke-virtual {v0, v4, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    invoke-virtual {v8, v7}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    iget v5, v7, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_4
    new-array v1, v1, [F

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->MATRIX_ORIGIN:[F

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget v0, v2, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    iget v2, v3, Lcom/motorola/camera/ui/widgets/gl/Rotation;->mRot:F

    add-float/2addr v0, v2

    const/high16 v2, 0x43340000    # 180.0f

    rem-float/2addr v0, v2

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v0, :cond_6

    div-float v7, v4, v6

    goto :goto_1

    :cond_6
    div-float v7, v5, v6

    :goto_1
    if-eqz v0, :cond_7

    div-float/2addr v5, v6

    goto :goto_2

    :cond_7
    div-float v5, v4, v6

    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRect:Lcom/google/common/base/Splitter$1;

    iget-object v0, v0, Lcom/google/common/base/Splitter$1;->val$separatorMatcher:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/RectF;

    aget v4, v1, v3

    sub-float v6, v4, v7

    aget v1, v1, v2

    add-float v2, v1, v5

    add-float/2addr v4, v7

    sub-float/2addr v1, v5

    invoke-virtual {v0, v6, v2, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRectDirty:Z

    return-void
.end method
