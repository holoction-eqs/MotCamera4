.class public final Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDeducedSceneMode(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isHighResAutoSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$1;->this$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

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
