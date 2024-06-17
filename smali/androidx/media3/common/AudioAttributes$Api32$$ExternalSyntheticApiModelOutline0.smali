.class public abstract synthetic Landroidx/media3/common/AudioAttributes$Api32$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/media/Spatializer;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/media/Spatializer;->getImmersiveAudioLevel()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/AudioManager;)Landroid/media/Spatializer;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioManager;->getSpatializer()Landroid/media/Spatializer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 3
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_START:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic m(Landroid/media/AudioAttributes$Builder;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/Spatializer;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Landroid/media/Spatializer;->removeOnSpatializerStateChangedListener(Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/Spatializer;Lcom/motorola/camera/device/callables/CreateCaptureSessionCallable$$ExternalSyntheticLambda0;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/media/Spatializer;->addOnSpatializerStateChangedListener(Ljava/util/concurrent/Executor;Landroid/media/Spatializer$OnSpatializerStateChangedListener;)V

    return-void
.end method

.method public static bridge synthetic m(Landroid/media/Spatializer;)Z
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroid/media/Spatializer;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m(Landroid/media/Spatializer;Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/media/Spatializer;->canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$1()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    .line 1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_DROP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method

.method public static bridge synthetic m$1(Landroid/media/Spatializer;)Z
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/media/Spatializer;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic m$2()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DRAG_CANCEL:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-object v0
.end method
