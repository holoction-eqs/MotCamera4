.class public final Lcom/tinder/StateMachine$Transition$Invalid;
.super Lcom/tinder/StateMachine$Transition;
.source "SourceFile"


# instance fields
.field public final event:Ljava/lang/Object;

.field public final fromState:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/tinder/StateMachine$Transition;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine$Transition$Invalid;->fromState:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tinder/StateMachine$Transition$Invalid;->event:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/tinder/StateMachine$Transition$Invalid;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tinder/StateMachine$Transition$Invalid;

    iget-object v0, p1, Lcom/tinder/StateMachine$Transition$Invalid;->fromState:Ljava/lang/Object;

    iget-object v1, p0, Lcom/tinder/StateMachine$Transition$Invalid;->fromState:Ljava/lang/Object;

    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/tinder/StateMachine$Transition$Invalid;->event:Ljava/lang/Object;

    iget-object p1, p1, Lcom/tinder/StateMachine$Transition$Invalid;->event:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tinder/StateMachine$Transition$Invalid;->fromState:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/tinder/StateMachine$Transition$Invalid;->event:Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid(fromState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tinder/StateMachine$Transition$Invalid;->fromState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tinder/StateMachine$Transition$Invalid;->event:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
