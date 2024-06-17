.class public final Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/OrientationEvent$OnRotationChangeListener;


# instance fields
.field public displayRotation:I

.field public final filterLiveData:Landroidx/lifecycle/MutableLiveData;

.field public final selectedFilter:Landroidx/lifecycle/MutableLiveData;

.field public shouldUpdateAllThumbnails:Z

.field public shouldUpdateThumbnails:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->selectedFilter:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final onRotationChanged(II)V
    .locals 1

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->displayRotation:I

    if-eq p2, p1, :cond_0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->displayRotation:I

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->clearEffects()V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->filterLiveData:Landroidx/lifecycle/MutableLiveData;

    const-class p2, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheViewModel;->shouldUpdateAllThumbnails:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
