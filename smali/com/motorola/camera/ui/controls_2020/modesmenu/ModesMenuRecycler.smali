.class public final Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "",
        "hiding",
        "Z",
        "getHiding",
        "()Z",
        "setHiding",
        "(Z)V",
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
.field public hiding:Z

.field public paddingSet:Z

.field public systemGestureRects:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->systemGestureRects:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getHiding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->hiding:Z

    return p0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->hiding:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->systemGestureRects:Ljava/util/List;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->paddingSet:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->paddingSet:Z

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/4 v0, 0x2

    div-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    new-array p2, v0, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, p2, v2

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v0

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-direct {v1, v3, v2, v0, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v1, p2, p1

    invoke-static {p2}, Lkotlin/jvm/JvmClassMappingKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->systemGestureRects:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final setHiding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/modesmenu/ModesMenuRecycler;->hiding:Z

    return-void
.end method
