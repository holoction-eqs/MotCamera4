.class public final Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/PostCapture$PostCaptureListener;


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostCaptureAvailable(Lcom/motorola/camera/ui/widgets/gl/McfJpegRequestHolder;Landroidx/core/view/ContentInfoCompat$CompatImpl;)V
    .locals 1

    iget p1, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isScanMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Ljava/lang/Object;

    check-cast p1, Ljava/nio/Buffer;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;

    const/16 v0, 0xd

    invoke-direct {p1, v0, p0, p2}, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$1;->this$0:Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
