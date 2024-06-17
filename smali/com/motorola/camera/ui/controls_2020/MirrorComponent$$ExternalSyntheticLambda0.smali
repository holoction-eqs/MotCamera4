.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->f$0:Z

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    const-string v4, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->frameButton:Landroid/widget/ImageButton;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :pswitch_1
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mirrorControlPanel:Landroid/view/View;

    if-eqz v3, :cond_3

    if-nez p0, :cond_5

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :pswitch_2
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void

    :pswitch_3
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    if-nez v3, :cond_9

    const v2, 0x7f080204

    goto :goto_3

    :cond_9
    const v2, 0x7f080203

    :goto_3
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->brightnessState:Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "context as Activity).window"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "window.attributes"

    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_a

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_a
    const/high16 v1, -0x40800000    # -1.0f

    :goto_4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_b
    return-void

    :pswitch_4
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->menuButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_c

    if-nez p0, :cond_e

    goto :goto_5

    :cond_c
    if-nez p0, :cond_d

    goto :goto_5

    :cond_d
    move v1, v2

    :cond_e
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    return-void

    :pswitch_5
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_f

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :cond_f
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->zoomSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    if-nez p0, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    :goto_6
    return-void

    :goto_7
    invoke-static {p0, v4}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_12

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f020018

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f0b0080

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v2, p0

    new-instance p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda2;

    invoke-direct {p0, v2}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda2;-><init>(F)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p0, Landroidx/transition/Transition$3;

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2}, Landroidx/transition/Transition$3;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_8

    :cond_12
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->helpButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
