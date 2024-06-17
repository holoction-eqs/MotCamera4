.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onArcsoftDRSD(Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;)V
    .locals 1

    const-string v0, "drsd"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackArcsoftDrsd$DRSDResult;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onBSTDRSD(Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;)V
    .locals 1

    const-string v0, "drsd"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bstDrsd:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackBSTDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackBSTDrsd$DRSDResult;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 1

    const-string v0, "sceneMode"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onJGDRSD(Lcom/motorola/camera/mcf/McfCallbackJGDrsd;)V
    .locals 1

    const-string v0, "drsd"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->jgDrsd:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackJGDrsd;->result:Lcom/motorola/camera/mcf/McfCallbackJGDrsd$DRSDResult;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMotDRSDv2(Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;)V
    .locals 1

    const-string v0, "drsdv2"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motDrsdv2:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2;->result:Lcom/motorola/camera/mcf/McfCallbackMotDrsdv2$MotDRSDv2Result;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final onMotNVDetect(Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;)V
    .locals 2

    const-string v0, "nvDetect"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AUTO_NIGHT_VISION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object v0, v0, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$mcfStateListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule;->liveDatas:Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motNVDetect:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/motorola/camera/mcf/McfCallbackMotNVDetect;->result:Lcom/motorola/camera/mcf/McfCallbackMotNVDetect$MotNVDetectResult;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
