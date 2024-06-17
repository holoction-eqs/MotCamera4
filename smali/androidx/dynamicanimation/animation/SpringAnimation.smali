.class public final Landroidx/dynamicanimation/animation/SpringAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;


# instance fields
.field public final mEndListeners:Ljava/util/ArrayList;

.field public mEndRequested:Z

.field public mLastFrameTime:J

.field public final mMinVisibleChange:F

.field public mPendingPosition:F

.field public final mProperty:Landroidx/transition/ViewOverlayApi14;

.field public mRunning:Z

.field public mSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field public final mUpdateListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "scaleX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "scaleY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "rotation"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "rotationX"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "rotationY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    const-string v1, "alpha"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    sget-object v0, Lcom/google/android/material/progressindicator/DeterminateDrawable;->INDICATOR_LENGTH_IN_LEVEL:Lcom/google/android/material/progressindicator/DeterminateDrawable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mVelocity:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mValue:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mStartValueIsSet:Z

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mLastFrameTime:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Landroidx/transition/ViewOverlayApi14;

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-eq v0, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-eq v0, p1, :cond_4

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-eq v0, p1, :cond_3

    sget-object p1, Landroidx/dynamicanimation/animation/SpringAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    if-ne v0, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    :goto_0
    const/high16 p1, 0x3b800000    # 0.00390625f

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    :goto_2
    iput p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mMinVisibleChange:F

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mPendingPosition:F

    iput-boolean v2, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    return-void
.end method


# virtual methods
.method public final setPropertyValue(F)V
    .locals 2

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mProperty:Landroidx/transition/ViewOverlayApi14;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroidx/transition/ViewOverlayApi14;->setValue(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final skipToEnd()V
    .locals 4

    iget-object v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iget-wide v0, v0, Landroidx/dynamicanimation/animation/SpringForce;->mDampingRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mRunning:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/SpringAnimation;->mEndRequested:Z

    :cond_1
    return-void

    :cond_2
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the main thread"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Spring animations can only come to an end when there is damping"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
