.class public final Lkotlin/sequences/FilteringSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final synthetic $r8$classId:I

.field public final iterator:Ljava/util/Iterator;

.field public nextItem:Ljava/lang/Object;

.field public nextState:I

.field public final synthetic this$0:Lkotlin/sequences/Sequence;


# direct methods
.method public constructor <init>(Lkotlin/sequences/FilteringSequence;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lkotlin/sequences/FilteringSequence;->sequence:Lkotlin/sequences/Sequence;

    .line 3
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-void
.end method

.method public constructor <init>(Lkotlin/sequences/GeneratorSequence;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Lkotlin/sequences/GeneratorSequence;->getInitialValue:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/Sequence;

    .line 6
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    const/4 p1, -0x1

    iput p1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-void
.end method


# virtual methods
.method public final calcNext()V
    .locals 7

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    const/4 v1, 0x1

    iget-object v2, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->this$0:Lkotlin/sequences/Sequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->iterator:Ljava/util/Iterator;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :cond_0
    :pswitch_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v2

    check-cast v5, Lkotlin/sequences/FilteringSequence;

    iget-object v6, v5, Lkotlin/sequences/FilteringSequence;->predicate:Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-boolean v5, v5, Lkotlin/sequences/FilteringSequence;->sendWhen:Z

    if-ne v6, v5, :cond_0

    iput-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iput v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-void

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v2, Lkotlin/sequences/GeneratorSequence;

    iget-object v2, v2, Lkotlin/sequences/GeneratorSequence;->getNextValue:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    iput-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iput v3, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->calcNext()V

    :cond_0
    iget p0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :goto_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->calcNext()V

    :cond_2
    iget p0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->calcNext()V

    :cond_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput v2, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-object v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :goto_0
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lkotlin/sequences/FilteringSequence$iterator$1;->calcNext()V

    :cond_2
    iget v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput-object v1, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextItem:Ljava/lang/Object;

    iput v2, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->nextState:I

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 1

    iget p0, p0, Lkotlin/sequences/FilteringSequence$iterator$1;->$r8$classId:I

    const-string v0, "Operation is not supported for read-only collection"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
