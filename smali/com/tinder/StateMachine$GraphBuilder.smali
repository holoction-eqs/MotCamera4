.class public final Lcom/tinder/StateMachine$GraphBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public initialState:Ljava/lang/Object;

.field public final onTransitionListeners:Ljava/util/ArrayList;

.field public final stateDefinitions:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tinder/StateMachine$GraphBuilder;->initialState:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/tinder/StateMachine$GraphBuilder;->onTransitionListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final state(Lcom/tinder/StateMachine$Matcher;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    iget-object p0, p0, Lcom/tinder/StateMachine$GraphBuilder;->stateDefinitions:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;

    invoke-direct {v0}, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;-><init>()V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lcom/tinder/StateMachine$GraphBuilder$StateDefinitionBuilder;->stateDefinition:Lcom/tinder/StateMachine$Graph$State;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
