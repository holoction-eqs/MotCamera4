.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanVideoFusionParams:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    iput p1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p0, v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setParams(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    return-void

    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    return-void

    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHumanEffectAdapter:Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mInitFinished:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanVideoFusionParams:Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;

    iput p1, v0, Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;->blurIntensity:F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/HumanEffectAdapter;->mHumanEffectFusionApi:Lcom/anc/humansdk/fusion/HumanEffectFusionApi;

    invoke-virtual {p0, v0}, Lcom/anc/humansdk/fusion/HumanEffectFusionApi;->setParams(Lcom/anc/humansdk/fusion/HumanEffectFusionApi$HumanVideoFusionParams;)I

    :goto_1
    return-void

    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mEnabled:Z

    return-void

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/VideoPortraitPreviewTexture;->mHandleUIEvent:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
