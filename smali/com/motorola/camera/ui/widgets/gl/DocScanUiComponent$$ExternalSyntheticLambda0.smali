.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mIsControlPanelOn:Z

    return-object v0

    :pswitch_1
    iput-boolean v3, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mIsControlPanelOn:Z

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->isTexInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mDocTex:Lcom/motorola/camera/ui/widgets/gl/textures/DocScanRectTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTittleTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {v1, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mTipsTex:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    :goto_1
    sput-boolean v2, Lcom/motorola/camera/ui/widgets/gl/DocScanUiComponent;->mInstructionEnable:Z

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
