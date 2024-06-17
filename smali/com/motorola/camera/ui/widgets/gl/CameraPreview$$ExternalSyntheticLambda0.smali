.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->$r8$lambda$XgMR5Eb-IX4fozPFCcfdQKWL2g8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    return-void

    :pswitch_1
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->$r8$lambda$XgMR5Eb-IX4fozPFCcfdQKWL2g8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    return-void

    :pswitch_2
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->$r8$lambda$XgMR5Eb-IX4fozPFCcfdQKWL2g8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    return-void

    :pswitch_3
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->$r8$lambda$XgMR5Eb-IX4fozPFCcfdQKWL2g8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    return-void

    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x3e8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    return-void

    :pswitch_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCurrentMode()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getCameraFacing()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->previewModeChange(IIIZZZ)V

    return-void

    :pswitch_6
    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewChangeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->mPreviewDiffList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void

    :goto_0
    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->$r8$lambda$XgMR5Eb-IX4fozPFCcfdQKWL2g8(Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
