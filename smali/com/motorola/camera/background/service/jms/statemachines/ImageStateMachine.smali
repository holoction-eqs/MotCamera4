.class public final Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;
.super Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final stateMachine:Lcom/tinder/StateMachine;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V
    .locals 3

    const-string v0, "jmsIntf"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/background/service/jms/statemachines/StateMachineBase;-><init>(Lcom/motorola/camera/background/service/jms/JobMgrScheduler;Lcom/motorola/camera/background/service/jms/JobDatabase;)V

    new-instance p1, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;-><init>(Lcom/motorola/camera/background/service/jms/JobDatabase;Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;I)V

    new-instance p2, Lcom/tinder/StateMachine;

    new-instance v0, Lcom/tinder/StateMachine$GraphBuilder;

    invoke-direct {v0}, Lcom/tinder/StateMachine$GraphBuilder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine$stateMachine$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/tinder/StateMachine$Graph;

    iget-object v1, v0, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lkotlin/collections/MapsKt___MapsJvmKt;->toMap(Ljava/util/LinkedHashMap;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, v0, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v1, v2, v0}, Lcom/tinder/StateMachine$Graph;-><init>(Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;)V

    invoke-direct {p2, p1}, Lcom/tinder/StateMachine;-><init>(Lcom/tinder/StateMachine$Graph;)V

    iput-object p2, p0, Lcom/motorola/camera/background/service/jms/statemachines/ImageStateMachine;->stateMachine:Lcom/tinder/StateMachine;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
