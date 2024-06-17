.class public final Landroidx/media3/ui/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final aspectRatioUpdateDispatcher:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

.field public resizeMode:I

.field public videoAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Landroidx/media3/ui/R$styleable;->AspectRatioFrameLayout:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->resizeMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_0
    :goto_0
    new-instance p1, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    invoke-direct {p1, p0}, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;-><init>(Landroidx/media3/ui/AspectRatioFrameLayout;)V

    iput-object p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    return-void
.end method


# virtual methods
.method public getResizeMode()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    return p0
.end method

.method public final onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, v0

    div-float v3, v1, v2

    iget v4, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v5, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v5

    const/4 v5, 0x1

    iget-object v6, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->aspectRatioUpdateDispatcher:Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;

    if-gtz v3, :cond_2

    iget-boolean p0, v6, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    if-nez p0, :cond_1

    iput-boolean v5, v6, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    iget-object p0, v6, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    iget v3, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eqz v3, :cond_4

    if-eq v3, v5, :cond_5

    const/4 v7, 0x2

    if-eq v3, v7, :cond_6

    const/4 v7, 0x4

    if-eq v3, v7, :cond_3

    goto :goto_1

    :cond_3
    cmpl-float p2, v4, p2

    if-lez p2, :cond_5

    goto :goto_0

    :cond_4
    cmpl-float p2, v4, p2

    if-lez p2, :cond_6

    :cond_5
    iget p2, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    div-float/2addr v1, p2

    float-to-int v0, v1

    goto :goto_1

    :cond_6
    :goto_0
    iget p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    mul-float/2addr v2, p1

    float-to-int p1, v2

    :goto_1
    iget-boolean p2, v6, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    if-nez p2, :cond_7

    iput-boolean v5, v6, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->isScheduled:Z

    iget-object p2, v6, Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioUpdateDispatcher;->this$0:Landroidx/media3/ui/AspectRatioFrameLayout;

    invoke-virtual {p2, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->videoAspectRatio:F

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setAspectRatioListener(Landroidx/media3/ui/AspectRatioFrameLayout$AspectRatioListener;)V
    .locals 0

    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget v0, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroidx/media3/ui/AspectRatioFrameLayout;->resizeMode:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
