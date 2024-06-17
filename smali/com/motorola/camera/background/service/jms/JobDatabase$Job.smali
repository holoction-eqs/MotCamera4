.class public final Lcom/motorola/camera/background/service/jms/JobDatabase$Job;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mCancelPending:Z

.field public final stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

.field public final transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/background/service/jms/db/Transaction;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->transaction:Lcom/motorola/camera/background/service/jms/db/Transaction;

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/JobDatabase$Job;->stateMachine:Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    return-void
.end method
