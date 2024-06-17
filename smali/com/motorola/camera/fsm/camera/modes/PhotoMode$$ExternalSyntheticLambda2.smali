.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/fsm/camera/subfsms/MultiCameraStateMachine$MultiCameraListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    return-void
.end method


# virtual methods
.method public final onActivePhysicalCameraIdChanged(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->areAllOkForAutoHighResDetection()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->startHighResAutoSwitchDetection()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->stopHighResAutoSwitchDetection()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResInPhotoModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->highResAutoSwitchForSmoothSwitchCase(Z)V

    :cond_1
    :goto_0
    return-void
.end method
