.class public final Lcom/motorola/camera/ui/widgets/gl/ZoomModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mVirtualTeleEnabled:Z


# instance fields
.field public mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

.field public final mIsCliDisplay:Z

.field public final mListeners:Ljava/util/Set;

.field public final mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    return-void
.end method

.method public static isVirtualTeleEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    return v0
.end method

.method public static shouldTeleUIMapToMainCamera(Z)Z
    .locals 4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isMainCameraOnlyVideoModes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomBlendingVideoMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited()Z

    move-result v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->shouldLimitZoomByVideoSize()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackMainCamera()Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isCurrentBackWideCamera()Z

    return v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isBackKnifeSwitchCaseWithTele()Z

    move-result p0

    if-nez p0, :cond_4

    move v1, v3

    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public final getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isProPhotoMode()Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz v1, :cond_1

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_1
    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-boolean v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    if-nez v4, :cond_0

    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final getActiveZoomEntityMap()Ljava/util/HashMap;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-boolean v2, v2, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final getSegmentByCameraType(Lcom/motorola/camera/settings/CameraType;)Lcom/motorola/camera/utility/ZoomSegment;
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-object v1, v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0

    :cond_1
    sget-object p0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    return-object p0
.end method

.method public final getZoomMaxX(Lcom/motorola/camera/utility/ZoomSegment;)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getZoomMinX(Lcom/motorola/camera/utility/ZoomSegment;)F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final isZoomEnabled(Lcom/motorola/camera/utility/ZoomSegment;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isZoomLimited(Lcom/motorola/camera/utility/ZoomSegment;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setVideoRecording(Z)V
    .locals 6

    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    invoke-static {p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->shouldTeleUIMapToMainCamera(Z)Z

    move-result v1

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    const/4 v5, 0x2

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;-><init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZI)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v3, v4, v0, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    :goto_0
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    invoke-virtual {v1, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setVideoRecording(Z)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;->onVideoStateChanged(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v1

    iget-boolean v2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    if-eqz v1, :cond_3

    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->ORIGINAL:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$ORIGINAL;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PO:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->WIDE:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$WIDE;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->STANDARD:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$STANDARD;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PS:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p1, Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;->CLOSE_UP:Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment$CLOSE_UP;

    invoke-static {p1}, Lcom/motorola/camera/utility/PortraitLensUtil;->hasSegment(Lcom/motorola/camera/utility/PortraitLensUtil$FocalSegment;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->PC:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomPortraitEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isBackCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->shouldTeleUIMapToMainCamera(Z)Z

    move-result p1

    sput-boolean p1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackMacroCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomMacroEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomMacroEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackWideCamera()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, v3, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasBackTeleCamera()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    const/4 v3, 0x2

    invoke-direct {v1, p1, p0, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;-><init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZI)V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->T:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomTeleEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->showMain2x()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/ZoomMain2XEntity;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v1, p0, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomMain2XEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v4, p1, v5, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;-><init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZI)V

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v3, p1, p0, v2, v1}, Lcom/motorola/camera/ui/widgets/gl/FovSwitchZoomUWEntity;-><init>(Lcom/motorola/camera/utility/ZoomSegment;Lcom/motorola/camera/settings/CameraType;ZI)V

    invoke-virtual {v0, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-direct {v4, v5, p1, v2}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/camera/Util;->isDesktopModeWithLidClosed()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasCliUwCamera()Z

    move-result p1

    if-eqz p1, :cond_a

    move p1, v3

    goto :goto_1

    :cond_a
    move p1, v1

    :goto_1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->hasFrontUwCamera()Z

    move-result v4

    if-nez v4, :cond_b

    if-eqz p1, :cond_e

    :cond_b
    sget-object v4, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    if-nez v2, :cond_c

    if-eqz p1, :cond_d

    :cond_c
    move v1, v3

    :cond_d
    invoke-direct {v5, p0, v4, v1}, Lcom/motorola/camera/ui/widgets/gl/ZoomUWEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_2
    return-void
.end method

.method public final setupZoomModelForAudioLensSwitch(Lcom/motorola/camera/settings/CameraType;)V
    .locals 3

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureAudioLensSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mIsCliDisplay:Z

    invoke-direct {v2, p1, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomMainEntity;-><init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->setupZoomModel(Lcom/motorola/camera/settings/CameraType;)V

    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomModel{mCurrentCameraType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomEntityMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mZoomEntityMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateZoomX(FZ)V
    .locals 8

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    sget-object v2, Lcom/motorola/camera/settings/CameraType;->BACK_MACRO:Lcom/motorola/camera/settings/CameraType;

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->M:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-interface {v0, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->getActiveUnLimitedZoomEntityMap()Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v5

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSelfieFovSwitchMode()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isPortraitLensMode()Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v2, :cond_5

    sget-boolean v6, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mVirtualTeleEnabled:Z

    if-eqz v6, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {v6}, Lcom/motorola/camera/settings/SettingsManager;->isBackMainCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    if-ne v6, v7, :cond_4

    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_7

    iget-object v1, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_9

    :cond_7
    move p2, v5

    goto :goto_2

    :cond_8
    :goto_1
    iget-object v6, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_4

    iget-object v4, v4, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_4

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    :goto_3
    check-cast v1, Lcom/motorola/camera/utility/ZoomSegment;

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateZoomX: not found the targetSegment, cameraType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", zoom:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ZoomModel"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    :cond_b
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;

    invoke-interface {v0, v1, p1, p2}, Lcom/motorola/camera/ui/widgets/gl/ZoomModel$Listener;->onZoomChanged(Lcom/motorola/camera/utility/ZoomSegment;FZ)V

    goto :goto_5

    :cond_c
    return-void
.end method
