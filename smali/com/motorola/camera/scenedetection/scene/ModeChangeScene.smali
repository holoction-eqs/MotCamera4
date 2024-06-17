.class public final Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;
.super Lcom/motorola/camera/scenedetection/scene/ActionScene;
.source "SourceFile"


# instance fields
.field public final mode:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;III)V
    .locals 1

    const-string p2, "optType"

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lkotlin/reflect/KVariance$EnumUnboxingLocalUtility;->m(ILjava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/motorola/camera/scenedetection/scene/ActionScene;-><init>(Lcom/motorola/camera/scenedetection/scene/Scene$Type;II)V

    iput p4, p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;->mode:I

    return-void
.end method


# virtual methods
.method public final doAction(Lcom/motorola/camera/EventListener;)V
    .locals 4

    sget-object v0, Lcom/motorola/camera/settings/SettingsHelper;->TRUE_BYTE:Ljava/lang/Byte;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getMainCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/settings/Setting;->getAllowedSupportedValues(Lcom/motorola/camera/settings/CameraType;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/scenedetection/scene/ModeChangeScene;->mode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->sceneType:Lcom/motorola/camera/scenedetection/scene/Scene$Type;

    if-eqz v0, :cond_0

    invoke-static {p1, v1, p0}, Lcom/motorola/camera/mode/ModeChangeHelper;->switchMode(Lcom/motorola/camera/EventListener;ILcom/motorola/camera/scenedetection/scene/Scene$Type;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/scenedetection/scene/ActionScene;->Companion:Lcom/google/android/gms/dynamite/zzo;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamite/zzo;->getTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Mode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not supported for scene "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SCENE_ACTION_EXIT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-interface {p1, p0}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    :goto_0
    return-void
.end method
