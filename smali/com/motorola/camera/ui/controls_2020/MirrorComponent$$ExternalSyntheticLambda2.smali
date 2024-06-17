.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda2;->f$0:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 2

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda2;->f$0:F

    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, p0

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    sub-float/2addr v0, p1

    div-float p1, v0, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
