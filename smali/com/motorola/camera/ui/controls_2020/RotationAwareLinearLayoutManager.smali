.class public Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;",
        "Landroidx/recyclerview/widget/LinearLayoutManager;",
        "MotCamera4-v9.1.0.91_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field public rotation:F

.field public scaleX:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->scaleX:F

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->rotation:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/RotationAwareLinearLayoutManager;->scaleX:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method
