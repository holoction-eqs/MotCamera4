.class public final Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final parentView:Ljava/lang/ref/WeakReference;

.field public final shutterButton:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;->parentView:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;->shutterButton:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent;->INFLATION_STATES:Ljava/util/ArrayList;

    invoke-static {}, Lkotlin/UInt$Companion;->access$visibleAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;->shutterButton:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/DisplayCutoutCircleComponent$ShutterButtonVisibilityListener;->parentView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
