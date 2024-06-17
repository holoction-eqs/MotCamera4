.class public final Lcom/motorola/camera/fsm/camera/CameraTransition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mDoAfter:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mDoBefore:Lcom/motorola/camera/fsm/camera/CameraRunnable;

.field public final mEndState:Ljava/lang/Object;

.field public final mEvent:Ljava/lang/Object;

.field public final mFireChangeEvent:Z

.field public final mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabu;)V
    .locals 5

    new-instance v0, Lcom/motorola/camera/fsm/camera/Trigger;

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabu;->zab:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/zabu;->zac:Ljava/lang/Object;

    check-cast v1, Lcom/motorola/camera/fsm/camera/StateKey;

    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/zabu;->zad:Ljava/lang/Object;

    check-cast v2, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/zabu;->zae:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iget-object v4, p1, Lcom/google/android/gms/common/api/internal/zabu;->zaa:Ljava/lang/Object;

    check-cast v4, Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    iget-boolean p1, p1, Lcom/google/android/gms/common/api/internal/zabu;->zaf:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEvent:Ljava/lang/Object;

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mEndState:Ljava/lang/Object;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mDoBefore:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object v3, p0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mDoAfter:Lcom/motorola/camera/fsm/camera/CameraRunnable;

    iput-object v4, p0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mGuard:Lcom/motorola/camera/fsm/GuardedTransitionRunnable;

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/CameraTransition;->mFireChangeEvent:Z

    return-void
.end method

.method public static builder()Lcom/google/android/gms/common/api/internal/zabu;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/zabu;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/zabu;-><init>()V

    return-object v0
.end method
