.class public final Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activeSensor:Landroidx/lifecycle/MutableLiveData;

.field public final adrcGain:Landroidx/lifecycle/MutableLiveData;

.field public final aiScene:Landroidx/lifecycle/MutableLiveData;

.field public final aperture:Landroidx/lifecycle/MutableLiveData;

.field public final arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

.field public final awbCct:Landroidx/lifecycle/MutableLiveData;

.field public final awbDecision:Landroidx/lifecycle/MutableLiveData;

.field public final bstDrsd:Landroidx/lifecycle/MutableLiveData;

.field public final cameraStatus:Landroidx/lifecycle/MutableLiveData;

.field public final candidateScene:Landroidx/lifecycle/MutableLiveData;

.field public final currentDrainMa:Landroidx/lifecycle/MutableLiveData;

.field public final exposureTime:Landroidx/lifecycle/MutableLiveData;

.field public final focusDistance:Landroidx/lifecycle/MutableLiveData;

.field public final focusStatus:Landroidx/lifecycle/MutableLiveData;

.field public final glFrameRate:Landroidx/lifecycle/MutableLiveData;

.field public final isoGain:Landroidx/lifecycle/MutableLiveData;

.field public final jgDrsd:Landroidx/lifecycle/MutableLiveData;

.field public final lensPosition:Landroidx/lifecycle/MutableLiveData;

.field public final list:Ljava/util/ArrayList;

.field public final lux:Landroidx/lifecycle/MutableLiveData;

.field public final luxIdx:Landroidx/lifecycle/MutableLiveData;

.field public final motDrsdv2:Landroidx/lifecycle/MutableLiveData;

.field public final motNVDetect:Landroidx/lifecycle/MutableLiveData;

.field public final mutableList:Ljava/util/ArrayList;

.field public final previewFrameTime:Landroidx/lifecycle/MutableLiveData;

.field public final previewSize:Landroidx/lifecycle/MutableLiveData;

.field public final realGain:Landroidx/lifecycle/MutableLiveData;

.field public final sceneFlicker:Landroidx/lifecycle/MutableLiveData;

.field public final sceneMode:Landroidx/lifecycle/MutableLiveData;

.field public final thermal:Landroidx/lifecycle/MutableLiveData;

.field public final videoHdrState:Landroidx/lifecycle/MutableLiveData;

.field public final viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->mutableList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->activeSensor:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->adrcGain:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aiScene:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->candidateScene:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->aperture:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbCct:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneFlicker:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->awbDecision:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->cameraStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->currentDrainMa:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->exposureTime:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusDistance:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->focusStatus:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->isoGain:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->luxIdx:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lux:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->lensPosition:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewSize:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->previewFrameTime:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->realGain:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->thermal:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->glFrameRate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->viewfinderFrameRate:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->sceneMode:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->arcsoftDrsd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motDrsdv2:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->bstDrsd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->jgDrsd:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->motNVDetect:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->videoHdrState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final buildMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/appinfo/CoreModule$LiveDatas;->mutableList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
