.class public final synthetic Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;->f$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;->$r8$classId:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x2

    iget-object p0, p0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda6;->f$0:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    sget p1, Lcom/motorola/camera/cinemagraph/CinemagraphMaskActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/Camera;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/motorola/camera/Camera;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/Camera;I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/motorola/camera/Camera;->mCameraButtonIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    return-void

    :goto_2
    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/editor/DocEditorActivity;I)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_2
    sget p1, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
