.class public final Lcom/tinder/StateMachine$Graph$State;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final onEnterListeners:Ljava/util/ArrayList;

.field public final onExitListeners:Ljava/util/ArrayList;

.field public final transitions:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tinder/StateMachine$Graph$State;->onEnterListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tinder/StateMachine$Graph$State;->onExitListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/tinder/StateMachine$Graph$State;->transitions:Ljava/util/LinkedHashMap;

    return-void
.end method
