.class public Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;
.super Lcom/google/android/flexbox/FlexboxLayoutManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;",
        "Lcom/google/android/flexbox/FlexboxLayoutManager;",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final animDuration:J

.field public currentAnimation:Landroid/animation/ValueAnimator;

.field public inLayout:Z

.field public rotation:F

.field public uiOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->animDuration:J

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->rotation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->inLayout:Z

    invoke-super {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public final onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->inLayout:Z

    invoke-super {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public final setRotation(F)V
    .locals 1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->rotation:F

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareFlexboxLayoutManager;->inLayout:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;

    const/16 v0, 0x18

    invoke-direct {p1, p0, v0}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_1

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api16Impl;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
