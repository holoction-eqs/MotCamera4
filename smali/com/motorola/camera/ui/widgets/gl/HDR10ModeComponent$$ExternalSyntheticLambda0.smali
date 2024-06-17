.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsControlPanelOpened:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->darkenPreview(Z)V

    :cond_0
    return-object v0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsControlPanelOpened:Z

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->mIsHDR10Mode:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/HDR10ModeComponent;->darkenPreview(Z)V

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
