.class public final Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsUnlockShutterEarlyDone:Z

.field public final mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

.field public final mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/mcf/Mcf$SceneMode;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mMcfRequestHolderMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mIsUnlockShutterEarlyDone:Z

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfJobHolder;->mScene:Lcom/motorola/camera/mcf/Mcf$SceneMode;

    return-void
.end method
