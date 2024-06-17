.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->$r8$lambda$q1nGH62OKaYnimnKGkVpe_CVrGU(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;Lcom/motorola/camera/settings/Setting;)V

    return-void

    :goto_0
    invoke-static {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->$r8$lambda$q1nGH62OKaYnimnKGkVpe_CVrGU(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;Lcom/motorola/camera/settings/Setting;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
