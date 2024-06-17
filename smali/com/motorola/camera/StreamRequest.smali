.class public final Lcom/motorola/camera/StreamRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mMaxSize:Ljava/lang/Object;

.field public mRatio:F


# direct methods
.method public constructor <init>(FLandroid/util/Size;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    iput-object p2, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/value/Keyframe;

    iput-object p1, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getCurrentKeyframe()Lcom/airbnb/lottie/value/Keyframe;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    return-object p0
.end method

.method public final getEndProgress()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getEndProgress()F

    move-result p0

    return p0
.end method

.method public final getStartDelayProgress()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->getStartProgress()F

    move-result p0

    return p0
.end method

.method public final isCachedValueEnabled(F)Z
    .locals 1

    iget v0, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    const/4 p0, 0x0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isValueChanged(F)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast p0, Lcom/airbnb/lottie/value/Keyframe;

    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/StreamRequest;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StreamRequest{mMaxSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/StreamRequest;->mMaxSize:Ljava/lang/Object;

    check-cast v1, Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/StreamRequest;->mRatio:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
