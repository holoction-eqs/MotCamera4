.class public abstract Lcom/motorola/camera/scenedetection/scene/VendorTagScene;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/scenedetection/scene/Scene;


# instance fields
.field public final focusMode:Lcom/motorola/camera/scenedetection/scene/FocusMode;

.field public final isFlashOffLocked:Z

.field public final optType:I

.field public final sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

.field public final textResource:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;IZLcom/motorola/camera/scenedetection/scene/FocusMode;)V
    .locals 2

    const-string v0, "optType"

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    const-string v0, "focusMode"

    invoke-static {p4, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    iput v1, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->optType:I

    iput p2, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->textResource:I

    iput-boolean p3, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->isFlashOffLocked:Z

    iput-object p4, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->focusMode:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    return-void
.end method


# virtual methods
.method public final applyFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    iget-boolean v0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->isFlashOffLocked:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->focusMode:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/scenedetection/scene/FocusMode;->apply(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public abstract applyTags(Lcom/motorola/camera/fsm/RequestWrapper;)V
.end method

.method public abstract applyTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
.end method

.method public final getOptType$enumunboxing$()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->optType:I

    return p0
.end method

.method public final getPersistOnLensSwitch()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getSceneType()Lcom/motorola/camera/scenedetection/scene/Scene$Type;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    return-object p0
.end method

.method public final getTextResource()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->textResource:I

    return p0
.end method

.method public final revertFocusAndFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/camera/settings/SettingsManager;->setLocked(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;Z)V

    iget-boolean v1, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->isFlashOffLocked:Z

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_0
    move v2, v1

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v3, 0x3

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_0

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_5
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    :goto_6
    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/VendorTagScene;->focusMode:Lcom/motorola/camera/scenedetection/scene/FocusMode;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/scenedetection/scene/FocusMode;->revert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public abstract revertTags(Lcom/motorola/camera/fsm/camera/modes/AbstractMode;)V
.end method
