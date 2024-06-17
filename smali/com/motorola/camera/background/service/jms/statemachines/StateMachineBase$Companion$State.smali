.class public abstract Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $cachedSerializer$delegate:Lkotlin/Lazy;

.field public static final Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;

    invoke-direct {v0}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;-><init>()V

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;->Companion:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion;

    sget-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;->INSTANCE:Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State$Companion$1;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lkotlin/LazyKt__LazyKt;->lazy(ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase$Companion$State;->$cachedSerializer$delegate:Lkotlin/Lazy;

    return-void
.end method
