.class public final Landroidx/fragment/app/FragmentAnim$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$callback:Ljava/lang/Object;

.field public final synthetic val$container:Ljava/lang/Object;

.field public final synthetic val$fragment:Ljava/lang/Object;

.field public final synthetic val$signal:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;Landroidx/fragment/app/DefaultSpecialEffectsController;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/FragmentAnim$2;->$r8$classId:I

    .line 1
    iput-object p4, p0, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$2;->val$container:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p5, p0, Landroidx/fragment/app/FragmentAnim$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$container:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    iget p1, p0, Landroidx/fragment/app/FragmentAnim$2;->$r8$classId:I

    iget-object v0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$container:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v0, Landroid/view/ViewGroup;

    new-instance p1, Landroidx/fragment/app/FragmentAnim$2$1;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/FragmentAnim$2$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    check-cast v0, Landroid/view/ViewGroup;

    new-instance p1, Landroidx/fragment/app/FragmentAnim$2$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroidx/fragment/app/FragmentAnim$2$1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    check-cast v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    iget-object p1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$signal:Ljava/lang/Object;

    check-cast v1, Landroidx/loader/app/LoaderManager;

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->getIcon()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->getBgColor()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1}, Landroidx/loader/app/LoaderManager;->getBackground()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentAnim$2;->val$fragment:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/fragment/app/FragmentAnim$2;->val$callback:Ljava/lang/Object;

    check-cast p0, Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
