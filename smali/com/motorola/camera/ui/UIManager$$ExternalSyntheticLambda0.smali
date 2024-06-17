.class public final synthetic Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/ui/UIManager;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/UIManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/UIManager;

    return-void
.end method


# virtual methods
.method public final onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/UIManager;

    iget-object p0, p0, Lcom/motorola/camera/ui/UIManager;->mCameraPreviewComponent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/GlCameraPreviewComponent;->mPreviewSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p2, v0}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->onMotionEvent(Landroid/view/MotionEvent;Lcom/motorola/camera/ui/widgets/gl/TextureManager$$ExternalSyntheticLambda1;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method
